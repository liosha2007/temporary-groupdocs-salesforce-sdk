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

public with sharing class GD_ComparisonApi {
	
	public GD_ApiClient apiClient { get; set; } 
	public String basePath { get; set; } 
	
	public GD_ComparisonApi(GD_ApiClient apiClient){
		this(apiClient, 'https://dev-api.groupdocs.com/v2.0');
	}
	
	public GD_ComparisonApi(GD_ApiClient apiClient, String basePath){
		this.apiClient = apiClient;
		this.basePath = basePath;
	}
	
	/**
	 * Compare
	 *
	 * @param userId User GUID (required).
	 * @param sourceFileId Source File GUID (required).
	 * @param targetFileId Target File GUID (required).
	 * @param callbackUrl Callback Url (required).
	 *
	 * @return GD_CompareResponse instance
	 */
	public GD_CompareResponse Compare(String userId, String sourceFileId, String targetFileId, String callbackUrl) {
		if(userId == null || sourceFileId == null || targetFileId == null || callbackUrl == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/comparison/{userId}/comparison/compare';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (sourceFileId != null) {
			queryParams.put('source', GD_Utils.toPathValue(sourceFileId));
		}
		if (targetFileId != null) {
			queryParams.put('target', GD_Utils.toPathValue(targetFileId));
		}
		if (callbackUrl != null) {
			queryParams.put('callback', GD_Utils.toPathValue(callbackUrl));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_CompareResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_CompareResponse.class);
	}

	/**
	 * Get changes
	 *
	 * @param userId User GUID (required).
	 * @param resultFileId Comparison result file GUID (required).
	 *
	 * @return GD_ChangesResponse instance
	 */
	public GD_ChangesResponse GetChanges(String userId, String resultFileId) {
		if(userId == null || resultFileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/comparison/{userId}/comparison/changes';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (resultFileId != null) {
			queryParams.put('resultFileId', GD_Utils.toPathValue(resultFileId));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_ChangesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_ChangesResponse.class);
	}

	/**
	 * Update changes
	 *
	 * @param userId User GUID (required).
	 * @param resultFileId Comparison result file GUID (required).
	 * @param body Comparison changes to update (accept or reject) (required).
	 *
	 * @return GD_ChangesResponse instance
	 */
	public GD_ChangesResponse UpdateChanges(String userId, String resultFileId, List<GD_ChangeInfo> body) {
		if(userId == null || resultFileId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/comparison/{userId}/comparison/changes';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (resultFileId != null) {
			queryParams.put('resultFileId', GD_Utils.toPathValue(resultFileId));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_ChangesResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_ChangesResponse.class);
	}

	/**
	 * Get document details
	 *
	 * @param userId User GUID (required).
	 * @param guid Document GUID (required).
	 *
	 * @return GD_DocumentDetailsResponse instance
	 */
	public GD_DocumentDetailsResponse GetDocumentDetails(String userId, String guid) {
		if(userId == null || guid == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/comparison/{userId}/comparison/document';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (guid != null) {
			queryParams.put('guid', GD_Utils.toPathValue(guid));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DocumentDetailsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_DocumentDetailsResponse.class);
	}

	/**
	 * Download comparison result file
	 *
	 * @param userId User GUID (required).
	 * @param resultFileId Comparison result file GUID (required).
	 * @param format Comparison result file format (optional).
	 *
	 * @return Blob instance
	 */
	public Blob DownloadResult(String userId, String resultFileId, String format) {
		if(userId == null || resultFileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/comparison/{userId}/comparison/download';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (resultFileId != null) {
			queryParams.put('resultFileId', GD_Utils.toPathValue(resultFileId));
		}
		if (format != null) {
			queryParams.put('format', GD_Utils.toPathValue(format));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (Blob) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, Blob.class);
	}

	
}

