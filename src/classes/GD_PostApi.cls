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

public with sharing class GD_PostApi {
	
	public GD_ApiClient apiClient { get; set; } 
	public String basePath { get; set; } 
	
	public GD_PostApi(GD_ApiClient apiClient){
		this(apiClient, 'https://api.groupdocs.com/v2.0');
	}
	
	public GD_PostApi(GD_ApiClient apiClient, String basePath){
		this.apiClient = apiClient;
		this.basePath = basePath;
	}
	
	/**
	 * Rename by post
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param newName New name (required).
	 *
	 * @return GD_RenameResponse instance
	 */
	public GD_RenameResponse RenameByPost(String userId, String fileId, String newName) {
		if(userId == null || fileId == null || newName == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/post/file.rename';

		// replace path parameters
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (userId != null) {
			queryParams.put('user_id', GD_Utils.toPathValue(userId));
		}
		if (fileId != null) {
			queryParams.put('file_id', GD_Utils.toPathValue(fileId));
		}
		if (newName != null) {
			queryParams.put('new_name', GD_Utils.toPathValue(newName));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_RenameResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_RenameResponse.class);
	}

	/**
	 * Delete by post
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 *
	 * @return GD_DeleteResponse instance
	 */
	public GD_DeleteResponse DeleteByPost(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/post/file.delete';

		// replace path parameters
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (userId != null) {
			queryParams.put('user_id', GD_Utils.toPathValue(userId));
		}
		if (fileId != null) {
			queryParams.put('file_id', GD_Utils.toPathValue(fileId));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_DeleteResponse.class);
	}

	/**
	 * Delete from folder by post
	 *
	 * @param userId User GUID (required).
	 * @param path Path (required).
	 *
	 * @return GD_DeleteResponse instance
	 */
	public GD_DeleteResponse DeleteFromFolderByPost(String userId, String path) {
		if(userId == null || path == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/post/file.delete.in';

		// replace path parameters
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (userId != null) {
			queryParams.put('user_id', GD_Utils.toPathValue(userId));
		}
		if (path != null) {
			queryParams.put('path', GD_Utils.toPathValue(path));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_DeleteResponse.class);
	}

	/**
	 * Compress by post
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param archiveType Archive Type (required).
	 *
	 * @return GD_CompressResponse instance
	 */
	public GD_CompressResponse CompressByPost(String userId, String fileId, String archiveType) {
		if(userId == null || fileId == null || archiveType == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/post/file.compress';

		// replace path parameters
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (userId != null) {
			queryParams.put('user_id', GD_Utils.toPathValue(userId));
		}
		if (fileId != null) {
			queryParams.put('file_id', GD_Utils.toPathValue(fileId));
		}
		if (archiveType != null) {
			queryParams.put('archive_type', GD_Utils.toPathValue(archiveType));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_CompressResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_CompressResponse.class);
	}

	
}

