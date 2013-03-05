@isTest
public class GD_TestApiClient {
	
	public class HttpCalloutMockImpl implements HttpCalloutMock {
		private String method;
		private Object body;
		private Integer statusCode;
		
		public HttpCalloutMockImpl(String method, Object body){
			this(method, body, 200);
		}
		
		public HttpCalloutMockImpl(String method, Object body, Integer statusCode){
			this.method = method;
			this.body = body;
			this.statusCode = statusCode;
		}
		
		public HTTPResponse respond(HTTPRequest req) {
			system.debug('calling API URL: ' + req.getEndpoint());
			System.assertEquals(method, req.getMethod());
			System.assertEquals(true, req.getEndpoint().contains('signature='));
			
			// Create a fake response
			HttpResponse res = new HttpResponse();
			res.setHeader('Content-Type', 'application/json');
			if(body instanceof Blob)
				res.setBodyAsBlob((Blob)body);
			else 
				res.setBody((String)body);
			res.setStatusCode(statusCode);
			return res;
		}
	}
	
	static final String clientId = '2721ad21bcf0d71e';
	static final String apiKey = '8d8a7d642a807a31c2741c101a60cef2';
	static final GD_SecurityHandler signer = new GD_GroupDocsSecurityHandler(apiKey);
	static final GD_ApiClient apiClient = new GD_ApiClient(signer);
	
	static testMethod void testSimpleGET() {
		String mockResponse = '{ "result": { "path": "", "count": 3, "folders": [ { "folder_count": 1894, "file_count": 2455, "id": 35121, "guid": null, "name": "Dropbox Shortcut", "access": "Private", "owner": null, "sharers": null, "dir": true, "modified_on": 1358755704120, "created_on": 1347282637500 }, { "folder_count": 742, "file_count": 1979, "id": 50512, "guid": null, "name": "BoxNet Shortcut", "access": "Private", "owner": null, "sharers": null, "dir": true, "modified_on": 1358755172227, "created_on": 1350973909297 }, { "folder_count": 0, "file_count": 0, "id": 88313, "guid": null, "name": "CreatedFolder", "access": "Private", "owner": null, "sharers": null, "dir": true, "modified_on": 1358757374120, "created_on": 1358757374120 } ], "files": [  ] }, "status": "Ok", "error_message": null, "composedOn": 1358757374448 }';
		Test.setMock(HttpCalloutMock.class, new HttpCalloutMockImpl('GET', mockResponse));
		GD_ListEntitiesResponse response = new GD_StorageApi(apiClient).ListEntities(clientId, 'documents', null, null, null, null, null, null, null);
		system.debug(JSON.serializePretty(response));
		System.assertEquals('Ok', response.status);
		System.assertEquals(3, response.result.count);
	}
	
}