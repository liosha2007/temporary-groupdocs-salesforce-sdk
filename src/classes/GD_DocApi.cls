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

public with sharing class GD_DocApi {
	
	public GD_ApiClient apiClient { get; set; } 
	public String basePath { get; set; } 
	
	public GD_DocApi(GD_ApiClient apiClient){
		this(apiClient, 'https://dev-api.groupdocs.com/v2.0');
	}
	
	public GD_DocApi(GD_ApiClient apiClient, String basePath){
		this.apiClient = apiClient;
		this.basePath = basePath;
	}
	
	/**
	 * View Document
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param pageNumber Page Number (optional).
	 * @param pageCount Page Count (optional).
	 * @param width Width (optional).
	 * @param quality Quality (optional).
	 * @param usePdf Use Pdf (optional).
	 *
	 * @return GD_ViewDocumentResponse instance
	 */
	public GD_ViewDocumentResponse ViewDocument(String userId, String fileId, String pageNumber, String pageCount, String width, String quality, String usePdf) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/thumbnails';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (pageNumber != null) {
			queryParams.put('page_number', GD_Utils.toPathValue(pageNumber));
		}
		if (pageCount != null) {
			queryParams.put('page_count', GD_Utils.toPathValue(pageCount));
		}
		if (width != null) {
			queryParams.put('width', GD_Utils.toPathValue(width));
		}
		if (quality != null) {
			queryParams.put('quality', GD_Utils.toPathValue(quality));
		}
		if (usePdf != null) {
			queryParams.put('use_pdf', GD_Utils.toPathValue(usePdf));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_ViewDocumentResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_ViewDocumentResponse.class);
	}

	/**
	 * View Document
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param pageNumber Page Number (optional).
	 * @param pageCount Page Count (optional).
	 *
	 * @return GD_ViewDocumentResponse instance
	 */
	public GD_ViewDocumentResponse ViewDocumentAsHtml(String userId, String fileId, String pageNumber, String pageCount) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/htmlRepresentations';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (pageNumber != null) {
			queryParams.put('page_number', GD_Utils.toPathValue(pageNumber));
		}
		if (pageCount != null) {
			queryParams.put('page_count', GD_Utils.toPathValue(pageCount));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_ViewDocumentResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_ViewDocumentResponse.class);
	}

	/**
	 * Get Document Views
	 *
	 * @param userId User GUID (required).
	 * @param startIndex A historical view entry to start from. Historical entries are sorted from the recent to old ones (optional).
	 * @param pageSize The total number of requested entries. If pageSize is equal to -1, all available entries will be returned (optional).
	 *
	 * @return GD_DocumentViewsResponse instance
	 */
	public GD_DocumentViewsResponse GetDocumentViews(String userId, String startIndex, String pageSize) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/views';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (startIndex != null) {
			queryParams.put('page_index', GD_Utils.toPathValue(startIndex));
		}
		if (pageSize != null) {
			queryParams.put('page_size', GD_Utils.toPathValue(pageSize));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DocumentViewsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_DocumentViewsResponse.class);
	}

	/**
	 * Share document
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param body Sharers (required).
	 *
	 * @return GD_SharedUsersResponse instance
	 */
	public GD_SharedUsersResponse ShareDocument(String userId, String fileId, List<String> body) {
		if(userId == null || fileId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/sharers';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SharedUsersResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SharedUsersResponse.class);
	}

	/**
	 * Unshare document
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 *
	 * @return GD_SharedUsersResponse instance
	 */
	public GD_SharedUsersResponse UnshareDocument(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/sharers';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SharedUsersResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SharedUsersResponse.class);
	}

	/**
	 * Get folder sharers
	 *
	 * @param userId User GUID (required).
	 * @param folderId Folder Id (required).
	 *
	 * @return GD_SharedUsersResponse instance
	 */
	public GD_SharedUsersResponse GetFolderSharers(String userId, String folderId) {
		if(userId == null || folderId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/folders/{folderId}/sharers';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'folderId' + '}', GD_Utils.toPathValue(folderId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SharedUsersResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SharedUsersResponse.class);
	}

	/**
	 * Share folder
	 *
	 * @param userId User GUID (required).
	 * @param folderId Folder Id (required).
	 * @param body Sharers (required).
	 *
	 * @return GD_SharedUsersResponse instance
	 */
	public GD_SharedUsersResponse ShareFolder(String userId, String folderId, List<String> body) {
		if(userId == null || folderId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/folders/{folderId}/sharers';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'folderId' + '}', GD_Utils.toPathValue(folderId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SharedUsersResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SharedUsersResponse.class);
	}

	/**
	 * Unshare folder
	 *
	 * @param userId User GUID (required).
	 * @param folderId Folder Id (required).
	 *
	 * @return GD_SharedUsersResponse instance
	 */
	public GD_SharedUsersResponse UnshareFolder(String userId, String folderId) {
		if(userId == null || folderId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/folders/{folderId}/sharers';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'folderId' + '}', GD_Utils.toPathValue(folderId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SharedUsersResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SharedUsersResponse.class);
	}

	/**
	 * Set document access mode
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param mode Mode (optional).
	 *
	 * @return GD_DocumentAccessInfoResponse instance
	 */
	public GD_DocumentAccessInfoResponse SetDocumentAccessMode(String userId, String fileId, String mode) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/accessinfo';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (mode != null) {
			queryParams.put('mode', GD_Utils.toPathValue(mode));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DocumentAccessInfoResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_DocumentAccessInfoResponse.class);
	}

	/**
	 * Get document access info
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 *
	 * @return GD_DocumentAccessInfoResponse instance
	 */
	public GD_DocumentAccessInfoResponse GetDocumentAccessInfo(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/accessinfo';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DocumentAccessInfoResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_DocumentAccessInfoResponse.class);
	}

	/**
	 * Get document metadata
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 *
	 * @return GD_GetDocumentInfoResponse instance
	 */
	public GD_GetDocumentInfoResponse GetDocumentMetadata(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/metadata';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetDocumentInfoResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetDocumentInfoResponse.class);
	}

	/**
	 * Returns document metadata
	 *
	 * @param userId User GUID (required).
	 * @param path File path to return metadata for (required).
	 *
	 * @return GD_GetDocumentInfoResponse instance
	 */
	public GD_GetDocumentInfoResponse GetDocumentMetadataByPath(String userId, String path) {
		if(userId == null || path == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{path}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'path' + '}', GD_Utils.toPathValue(path));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetDocumentInfoResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetDocumentInfoResponse.class);
	}

	/**
	 * Set document user status
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param status Status (required).
	 *
	 * @return GD_DocumentUserStatusResponse instance
	 */
	public GD_DocumentUserStatusResponse SetDocumentUserStatus(String userId, String fileId, String status) {
		if(userId == null || fileId == null || status == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/sharer';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (status != null) {
			queryParams.put('status', GD_Utils.toPathValue(status));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DocumentUserStatusResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_DocumentUserStatusResponse.class);
	}

	/**
	 * Get shared documents
	 *
	 * @param userId User GUID (required).
	 * @param sharesTypes Shares types (optional).
	 * @param pageIndex Page index (optional).
	 * @param pageSize Page size (optional).
	 * @param orderBy Order by (optional).
	 * @param orderAsc Order asc (optional).
	 *
	 * @return GD_SharedDocumentsResponse instance
	 */
	public GD_SharedDocumentsResponse GetSharedDocuments(String userId, String sharesTypes, String pageIndex, String pageSize, String orderBy, Boolean orderAsc) {
		if(userId == null || sharesTypes == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/shares/{sharesTypes}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'sharesTypes' + '}', GD_Utils.toPathValue(sharesTypes));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (pageIndex != null) {
			queryParams.put('page_index', GD_Utils.toPathValue(pageIndex));
		}
		if (pageSize != null) {
			queryParams.put('page_size', GD_Utils.toPathValue(pageSize));
		}
		if (orderBy != null) {
			queryParams.put('order_by', GD_Utils.toPathValue(orderBy));
		}
		if (orderAsc != null) {
			queryParams.put('order_asc', GD_Utils.toPathValue(orderAsc));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SharedDocumentsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SharedDocumentsResponse.class);
	}

	/**
	 * Get template fields
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param includeGeometry Include geometry (optional).
	 *
	 * @return GD_TemplateFieldsResponse instance
	 */
	public GD_TemplateFieldsResponse GetTemplateFields(String userId, String fileId, Boolean includeGeometry) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/fields';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (includeGeometry != null) {
			queryParams.put('include_geometry', GD_Utils.toPathValue(includeGeometry));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_TemplateFieldsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_TemplateFieldsResponse.class);
	}

	/**
	 * Get document formats
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 *
	 * @return GD_GetDocumentForeignTypesResponse instance
	 */
	public GD_GetDocumentForeignTypesResponse GetDocumentFormats(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/formats';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetDocumentForeignTypesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetDocumentForeignTypesResponse.class);
	}

	/**
	 * Returns a stream of bytes representing a particular document page image.
	 *
	 * @param userId GroupDocs user global unique identifier. (required).
	 * @param fileId Document global unique identifier. (required).
	 * @param pageNumber Document page number to get image for. (required).
	 * @param dimension Image dimension in format '&lt;width&gt;x&lt;height&gt;' (one or both values can be omitted). (required).
	 * @param quality Image qualiry in range 1-100. (optional).
	 * @param usePdf A flag indicating whether a document should be converted to PDF format before generating the image. (optional).
	 * @param expiresOn The date and time in milliseconds since epoch the URL expires. (optional).
	 *
	 * @return Blob instance
	 */
	public Blob GetDocumentPageImage(String userId, String fileId, Integer pageNumber, String dimension, Integer quality, Boolean usePdf, Boolean expiresOn) {
		if(userId == null || fileId == null || pageNumber == null || dimension == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/pages/{pageNumber}/images/{dimension}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		resourcePath = resourcePath.replace('{' + 'pageNumber' + '}', GD_Utils.toPathValue(pageNumber));
		resourcePath = resourcePath.replace('{' + 'dimension' + '}', GD_Utils.toPathValue(dimension));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (quality != null) {
			queryParams.put('quality', GD_Utils.toPathValue(quality));
		}
		if (usePdf != null) {
			queryParams.put('use_pdf', GD_Utils.toPathValue(usePdf));
		}
		if (expiresOn != null) {
			queryParams.put('expires', GD_Utils.toPathValue(expiresOn));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (Blob) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, Blob.class);
	}

	/**
	 * Returns an HTML representantion of a particular document page.
	 *
	 * @param userId GroupDocs user global unique identifier. (required).
	 * @param fileId Document global unique identifier. (required).
	 * @param pageNumber Document page number to get image for. (required).
	 * @param expiresOn The date and time in milliseconds since epoch the URL expires. (optional).
	 *
	 * @return Blob instance
	 */
	public Blob GetDocumentPageHtml(String userId, String fileId, Integer pageNumber, Boolean expiresOn) {
		if(userId == null || fileId == null || pageNumber == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/pages/{pageNumber}/htmlRepresentations';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		resourcePath = resourcePath.replace('{' + 'pageNumber' + '}', GD_Utils.toPathValue(pageNumber));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (expiresOn != null) {
			queryParams.put('expires', GD_Utils.toPathValue(expiresOn));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (Blob) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, Blob.class);
	}

	/**
	 * Returns a list of URLs pointing to document page images.
	 *
	 * @param userId GroupDocs user global unique identifier. (required).
	 * @param fileId Document global unique identifier. (required).
	 * @param firstPage Document page number to start from. (optional).
	 * @param pageCount Page count to return URLs for. (optional).
	 * @param dimension Image dimension in format '&lt;width&gt;x&lt;height&gt;' (one or both values can be omitted). (required).
	 * @param quality Image qualiry in range 1-100. (optional).
	 * @param usePdf A flag indicating whether a document should be converted to PDF format before generating the image. (optional).
	 * @param token A document viewer session token returned by the View Document request. (optional).
	 *
	 * @return GD_GetImageUrlsResponse instance
	 */
	public GD_GetImageUrlsResponse GetDocumentPagesImageUrls(String userId, String fileId, Integer firstPage, Integer pageCount, String dimension, Integer quality, Boolean usePdf, String token) {
		if(userId == null || fileId == null || dimension == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/pages/images/{dimension}/urls';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		resourcePath = resourcePath.replace('{' + 'dimension' + '}', GD_Utils.toPathValue(dimension));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (firstPage != null) {
			queryParams.put('first_page', GD_Utils.toPathValue(firstPage));
		}
		if (pageCount != null) {
			queryParams.put('page_count', GD_Utils.toPathValue(pageCount));
		}
		if (quality != null) {
			queryParams.put('quality', GD_Utils.toPathValue(quality));
		}
		if (usePdf != null) {
			queryParams.put('use_pdf', GD_Utils.toPathValue(usePdf));
		}
		if (token != null) {
			queryParams.put('token', GD_Utils.toPathValue(token));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetImageUrlsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetImageUrlsResponse.class);
	}

	/**
	 * Returns a list of URLs pointing to document page HTML representations.
	 *
	 * @param userId GroupDocs user global unique identifier. (required).
	 * @param fileId Document global unique identifier. (required).
	 * @param firstPage Document page number to start from. (optional).
	 * @param pageCount Page count to return URLs for. (optional).
	 *
	 * @return GD_GetImageUrlsResponse instance
	 */
	public GD_GetImageUrlsResponse GetDocumentPagesHtmlUrls(String userId, String fileId, Integer firstPage, Integer pageCount) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/pages/htmlRepresentationUrls';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (firstPage != null) {
			queryParams.put('first_page', GD_Utils.toPathValue(firstPage));
		}
		if (pageCount != null) {
			queryParams.put('page_count', GD_Utils.toPathValue(pageCount));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetImageUrlsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetImageUrlsResponse.class);
	}

	/**
	 * Locks a document for editing and returns editing metadata.
	 *
	 * @param userId GroupDocs user global unique identifier. (required).
	 * @param fileId Document global unique identifier. (required).
	 *
	 * @return GD_GetEditLockResponse instance
	 */
	public GD_GetEditLockResponse GetEditLock(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/editlock';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetEditLockResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetEditLockResponse.class);
	}

	/**
	 * Removes edit lock for a document and replaces the document with its edited copy.
	 *
	 * @param userId GroupDocs user global unique identifier. (required).
	 * @param fileId Document global unique identifier. (required).
	 * @param lockId Lock Id. (required).
	 *
	 * @return GD_RemoveEditLockResponse instance
	 */
	public GD_RemoveEditLockResponse RemoveEditLock(String userId, String fileId, String lockId) {
		if(userId == null || fileId == null || lockId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/editlock';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (lockId != null) {
			queryParams.put('lockId', GD_Utils.toPathValue(lockId));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_RemoveEditLockResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_RemoveEditLockResponse.class);
	}

	/**
	 * Returns tags assigned to the document.
	 *
	 * @param userId GroupDocs user global unique identifier. (required).
	 * @param fileId Document global unique identifier. (required).
	 *
	 * @return GD_GetTagsResponse instance
	 */
	public GD_GetTagsResponse GetDocumentTags(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/tags';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetTagsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetTagsResponse.class);
	}

	/**
	 * Assign tags to the document.
	 *
	 * @param userId GroupDocs user global unique identifier. (required).
	 * @param fileId Document global unique identifier. (required).
	 *
	 * @return GD_SetTagsResponse instance
	 */
	public GD_SetTagsResponse SetDocumentTags(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/tags';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SetTagsResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_SetTagsResponse.class);
	}

	/**
	 * Removes tags assigned to the document.
	 *
	 * @param userId GroupDocs user global unique identifier. (required).
	 * @param fileId Document global unique identifier. (required).
	 *
	 * @return GD_RemoveTagsResponse instance
	 */
	public GD_RemoveTagsResponse RemoveDocumentTags(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/doc/{userId}/files/{fileId}/tags';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_RemoveTagsResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_RemoveTagsResponse.class);
	}

	
}

