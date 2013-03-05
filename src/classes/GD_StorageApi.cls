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

public with sharing class GD_StorageApi {
	
	public GD_ApiClient apiClient { get; set; } 
	public String basePath { get; set; } 
	
	public GD_StorageApi(GD_ApiClient apiClient){
		this(apiClient, 'https://dev-api.groupdocs.com/v2.0');
	}
	
	public GD_StorageApi(GD_ApiClient apiClient, String basePath){
		this.apiClient = apiClient;
		this.basePath = basePath;
	}
	
	/**
	 * Get storage info
	 *
	 * @param userId User GUID (required).
	 *
	 * @return GD_StorageInfoResponse instance
	 */
	public GD_StorageInfoResponse GetStorageInfo(String userId) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_StorageInfoResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_StorageInfoResponse.class);
	}

	/**
	 * List entities
	 *
	 * @param userId User GUID (required).
	 * @param path Path (optional).
	 * @param pageIndex Page Index (optional).
	 * @param pageSize Page Size (optional).
	 * @param orderBy Order By (optional).
	 * @param orderAsc Order Asc (optional).
	 * @param filter Filter (optional).
	 * @param fileTypes File Types (optional).
	 * @param extended Indicates whether an extended information should be returned (optional).
	 *
	 * @return GD_ListEntitiesResponse instance
	 */
	public GD_ListEntitiesResponse ListEntities(String userId, String path, Integer pageIndex, Integer pageSize, String orderBy, Boolean orderAsc, String filter, String fileTypes, Boolean extended) {
		if(userId == null || path == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/folders/{path}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'path' + '}', GD_Utils.toPathValue(path));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (pageIndex != null) {
			queryParams.put('page', GD_Utils.toPathValue(pageIndex));
		}
		if (pageSize != null) {
			queryParams.put('count', GD_Utils.toPathValue(pageSize));
		}
		if (orderBy != null) {
			queryParams.put('order_by', GD_Utils.toPathValue(orderBy));
		}
		if (orderAsc != null) {
			queryParams.put('order_asc', GD_Utils.toPathValue(orderAsc));
		}
		if (filter != null) {
			queryParams.put('filter', GD_Utils.toPathValue(filter));
		}
		if (fileTypes != null) {
			queryParams.put('file_types', GD_Utils.toPathValue(fileTypes));
		}
		if (extended != null) {
			queryParams.put('extended', GD_Utils.toPathValue(extended));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_ListEntitiesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_ListEntitiesResponse.class);
	}

	/**
	 * Get file
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 *
	 * @return Blob instance
	 */
	public Blob GetFile(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/files/{fileId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (Blob) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, Blob.class);
	}

	/**
	 * Get shared file
	 *
	 * @param userEmail User Email (required).
	 * @param filePath File path (required).
	 *
	 * @return Blob instance
	 */
	public Blob GetSharedFile(String userEmail, String filePath) {
		if(userEmail == null || filePath == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/shared/{userEmail}/{filePath}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userEmail' + '}', GD_Utils.toPathValue(userEmail));
		resourcePath = resourcePath.replace('{' + 'filePath' + '}', GD_Utils.toPathValue(filePath));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (Blob) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, Blob.class);
	}

	/**
	 * Upload
	 *
	 * @param userId User GUID (required).
	 * @param path Path (required).
	 * @param description Description (optional).
	 * @param body Stream (required).
	 *
	 * @return GD_UploadResponse instance
	 */
	public GD_UploadResponse Upload(String userId, String path, String description, Blob body) {
		if(userId == null || path == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/folders/{path}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'path' + '}', GD_Utils.toPathValue(path));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (description != null) {
			queryParams.put('description', GD_Utils.toPathValue(description));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UploadResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_UploadResponse.class);
	}

	/**
	 * UploadAndUnzip
	 *
	 * @param userId User GUID (required).
	 * @param path Path (required).
	 * @param description Description (optional).
	 * @param archiveType Archive type (optional).
	 * @param body Stream (required).
	 *
	 * @return GD_UploadResponse instance
	 */
	public GD_UploadResponse Decompress(String userId, String path, String description, String archiveType, Blob body) {
		if(userId == null || path == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/decompress/{path}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'path' + '}', GD_Utils.toPathValue(path));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (description != null) {
			queryParams.put('description', GD_Utils.toPathValue(description));
		}
		if (archiveType != null) {
			queryParams.put('archiveType', GD_Utils.toPathValue(archiveType));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UploadResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_UploadResponse.class);
	}

	/**
	 * Upload Web
	 *
	 * @param userId User GUID (required).
	 * @param url Url (required).
	 *
	 * @return GD_UploadResponse instance
	 */
	public GD_UploadResponse UploadWeb(String userId, String url) {
		if(userId == null || url == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/urls';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (url != null) {
			queryParams.put('url', GD_Utils.toPathValue(url));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UploadResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_UploadResponse.class);
	}

	/**
	 * Upload Google
	 *
	 * @param userId User GUID (required).
	 * @param path File path (required).
	 * @param fileId File unique identifier (optional).
	 *
	 * @return GD_UploadResponse instance
	 */
	public GD_UploadResponse UploadGoogle(String userId, String path, String fileId) {
		if(userId == null || path == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/google/files/{path}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'path' + '}', GD_Utils.toPathValue(path));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (fileId != null) {
			queryParams.put('file_id', GD_Utils.toPathValue(fileId));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UploadResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_UploadResponse.class);
	}

	/**
	 * Delete
	 *
	 * @param userId User GUID (required).
	 * @param fileId File ID (required).
	 *
	 * @return GD_DeleteResponse instance
	 */
	public GD_DeleteResponse Delete_operation(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/files/{fileId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteResponse.class);
	}

	/**
	 * Delete from folder
	 *
	 * @param userId User GUID (required).
	 * @param path Path (required).
	 *
	 * @return GD_DeleteResponse instance
	 */
	public GD_DeleteResponse DeleteFromFolder(String userId, String path) {
		if(userId == null || path == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/folders/{path}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'path' + '}', GD_Utils.toPathValue(path));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteResponse.class);
	}

	/**
	 * Move file
	 *
	 * @param userId User GUID (required).
	 * @param path Path (required).
	 * @param mode Mode (optional).
	 * @param Groupdocs_Move File ID (move) (optional).
	 * @param Groupdocs_Copy File ID (copy) (optional).
	 *
	 * @return GD_FileMoveResponse instance
	 */
	public GD_FileMoveResponse MoveFile(String userId, String path, String mode, String Groupdocs_Move, String Groupdocs_Copy) {
		if(userId == null || path == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/files/{path}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'path' + '}', GD_Utils.toPathValue(path));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (mode != null) {
			queryParams.put('mode', GD_Utils.toPathValue(mode));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		if (Groupdocs_Move != null) {
			headerParams.put('Groupdocs-Move', GD_Utils.toPathValue(Groupdocs_Move));
		}
		if (Groupdocs_Copy != null) {
			headerParams.put('Groupdocs-Copy', GD_Utils.toPathValue(Groupdocs_Copy));
		}
		// make the API Call
		return (GD_FileMoveResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_FileMoveResponse.class);
	}

	/**
	 * Move folder
	 *
	 * @param userId User GUID (required).
	 * @param path Destination Path (required).
	 * @param mode Mode (optional).
	 * @param Groupdocs_Move Source path (move) (optional).
	 * @param Groupdocs_Copy Source path (copy) (optional).
	 *
	 * @return GD_FolderMoveResponse instance
	 */
	public GD_FolderMoveResponse MoveFolder(String userId, String path, String mode, String Groupdocs_Move, String Groupdocs_Copy) {
		if(userId == null || path == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/folders/{path}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'path' + '}', GD_Utils.toPathValue(path));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (mode != null) {
			queryParams.put('override_mode', GD_Utils.toPathValue(mode));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		if (Groupdocs_Move != null) {
			headerParams.put('Groupdocs-Move', GD_Utils.toPathValue(Groupdocs_Move));
		}
		if (Groupdocs_Copy != null) {
			headerParams.put('Groupdocs-Copy', GD_Utils.toPathValue(Groupdocs_Copy));
		}
		// make the API Call
		return (GD_FolderMoveResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_FolderMoveResponse.class);
	}

	/**
	 * Create
	 *
	 * @param userId User GUID (required).
	 * @param path Path (required).
	 *
	 * @return GD_CreateFolderResponse instance
	 */
	public GD_CreateFolderResponse Create(String userId, String path) {
		if(userId == null || path == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/paths/{path}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'path' + '}', GD_Utils.toPathValue(path));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_CreateFolderResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_CreateFolderResponse.class);
	}

	/**
	 * Compress
	 *
	 * @param userId User GUID (required).
	 * @param fileId File ID (required).
	 * @param archiveType Archive type (optional).
	 *
	 * @return GD_CompressResponse instance
	 */
	public GD_CompressResponse Compress(String userId, String fileId, String archiveType) {
		if(userId == null || fileId == null || archiveType == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/files/{fileId}/archive/{archiveType}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		resourcePath = resourcePath.replace('{' + 'archiveType' + '}', GD_Utils.toPathValue(archiveType));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_CompressResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_CompressResponse.class);
	}

	/**
	 * Create Package
	 *
	 * @param userId User GUID (required).
	 * @param packageName Package Name (required).
	 * @param storeRelativePath Store files using relative paths (optional).
	 * @param body Paths (optional).
	 *
	 * @return GD_CreatePackageResponse instance
	 */
	public GD_CreatePackageResponse CreatePackage(String userId, String packageName, Boolean storeRelativePath, List<String> body) {
		if(userId == null || packageName == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/packages/{packageName}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'packageName' + '}', GD_Utils.toPathValue(packageName));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (storeRelativePath != null) {
			queryParams.put('storeRelativePath', GD_Utils.toPathValue(storeRelativePath));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_CreatePackageResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_CreatePackageResponse.class);
	}

	/**
	 * Move to trash
	 *
	 * @param userId User GUID (required).
	 * @param path Path (required).
	 *
	 * @return GD_FolderMoveResponse instance
	 */
	public GD_FolderMoveResponse MoveToTrash(String userId, String path) {
		if(userId == null || path == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/trash/{path}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'path' + '}', GD_Utils.toPathValue(path));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_FolderMoveResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_FolderMoveResponse.class);
	}

	/**
	 * Restore from trash
	 *
	 * @param userId User GUID (required).
	 * @param path Path (required).
	 *
	 * @return GD_DeleteResponse instance
	 */
	public GD_DeleteResponse RestoreFromTrash(String userId, String path) {
		if(userId == null || path == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/storage/{userId}/trash/{path}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'path' + '}', GD_Utils.toPathValue(path));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteResponse.class);
	}

	
}

