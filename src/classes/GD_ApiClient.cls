/**
 *  Copyright 2012 GroupDocs.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

public with sharing class GD_ApiClient {
	
	public with sharing class GD_DefaultSecurityHandler implements GD_SecurityHandler {
		public String handleURL(String url, Map<String, String> headers){
			return url;
		}
		public Object handleBody(Object requestBody, Map<String, String> headers){
			return requestBody;
		}
	}

	public static final String PACKAGE_NAME = 'groupdocs-salesforce';
	public static final String PACKAGE_VERSION = '1.0.0';
	
	public GD_SecurityHandler securityHandler { get; set; }

	public GD_ApiClient(){
		this(new GD_DefaultSecurityHandler());
	}
	
	public GD_ApiClient(GD_SecurityHandler handler){
		this.securityHandler = handler;
	}
	
	public String constructURL(String basePath, String resourcePath, Map<String, String> queryParams, Map<String, String> headerParams){
	    String queryString = null;
	    for(String key : queryParams.keySet()) {
	    	String value = queryParams.get(key);
	    	if (value != null){
	    		queryString = queryString + key + '=' + value + '&';
	    	}
	    }

		String url = basePath + resourcePath + (queryString == null ? '' : '?' + queryString);
		String signedUrl = securityHandler.handleURL(url, headerParams);
		return GD_Utils.encodeURI(signedUrl);
	}
	
	public Object callAPI(String basePath, String resourcePath, String method,
			Map<String, String> queryParams, Object body,
			Map<String, String> headerParams, Type returnType){

		String url = constructURL(basePath, resourcePath, queryParams, headerParams);
		
		headerParams.put('Content-Type', detectContentType(method, body));
		headerParams.put('Groupdocs-Referer', PACKAGE_NAME + '/' + PACKAGE_VERSION);
		
		HttpRequest request = new HttpRequest();
		request.setEndpoint(url);
		request.setMethod(method);
		//request.setTimeout(Timeout);
		setRequestBody(request, method, body, headerParams);
		setRequestHeaders(request, headerParams);

		Http http = new Http();
		HttpResponse res = http.send(request);
		if(returnType.getName() == 'Blob'){
			return res.getBodyAsBlob();
		} else {
			String jsonStr = res.getBody();
			system.debug('JSON response from server: ' + jsonStr);
			return GD_Utils.deserialize(jsonStr, returnType);
		}
	}
	
	private String detectContentType(String method, Object body){
		String mime;
		if(body == null || method.equalsIgnoreCase('GET')){
			mime = 'text/html';
		} else if(body instanceof Blob){
			mime = 'application/octet-stream';
		} else {
			mime = 'application/json';
		}
		return mime;
	}
	
	private void setRequestBody(HttpRequest request, String method, Object body, Map<String, String> headers){
		Integer len;
		if(body == null || method.equalsIgnoreCase('GET')){
			len = 0;
		} else if(body instanceof Blob){
			Blob fs = (Blob) body;
			len = fs.size();
			request.setBodyAsBlob(fs);
		} else {
			String jsonStr = GD_Utils.serialize(body);
			len = jsonStr.length();
			request.setBody(jsonStr);
		}
		headers.put('Content-Length', String.valueOf(len));
		securityHandler.handleBody(request.getBody(), headers);
	}
	
	private void setRequestHeaders(HttpRequest request, Map<String, String> headers){
		for(String header : headers.keySet()){
			request.setHeader(header, headers.get(header));
		}
	}
}
