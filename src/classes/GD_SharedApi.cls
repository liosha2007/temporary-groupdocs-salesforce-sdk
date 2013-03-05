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

public with sharing class GD_SharedApi {
	
	public GD_ApiClient apiClient { get; set; } 
	public String basePath { get; set; } 
	
	public GD_SharedApi(GD_ApiClient apiClient){
		this(apiClient, 'https://api.groupdocs.com/v2.0');
	}
	
	public GD_SharedApi(GD_ApiClient apiClient, String basePath){
		this.apiClient = apiClient;
		this.basePath = basePath;
	}
	
	/**
	 * Download
	 *
	 * @param guid GUID (required).
	 * @param fileName File name (optional).
	 * @param render Render (optional).
	 *
	 * @return Blob instance
	 */
	public Blob Download(String guid, String fileName, Boolean render) {
		if(guid == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/shared/files/{guid}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'guid' + '}', GD_Utils.toPathValue(guid));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (fileName != null) {
			queryParams.put('filename', GD_Utils.toPathValue(fileName));
		}
		if (render != null) {
			queryParams.put('render', GD_Utils.toPathValue(render));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (Blob) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, Blob.class);
	}

	/**
	 * Get xml
	 *
	 * @param guid GUID (required).
	 *
	 * @return Blob instance
	 */
	public Blob GetXml(String guid) {
		if(guid == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/shared/files/{guid}/xml';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'guid' + '}', GD_Utils.toPathValue(guid));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (Blob) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, Blob.class);
	}

	/**
	 * Get package
	 *
	 * @param path Path (required).
	 *
	 * @return Blob instance
	 */
	public Blob GetPackage(String path) {
		if(path == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/shared/packages/{path}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'path' + '}', GD_Utils.toPathValue(path));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (Blob) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, Blob.class);
	}

	
}

