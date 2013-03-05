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

public with sharing class GD_AntApi {
	
	public GD_ApiClient apiClient { get; set; } 
	public String basePath { get; set; } 
	
	public GD_AntApi(GD_ApiClient apiClient){
		this(apiClient, 'https://dev-api.groupdocs.com/v2.0');
	}
	
	public GD_AntApi(GD_ApiClient apiClient, String basePath){
		this.apiClient = apiClient;
		this.basePath = basePath;
	}
	
	/**
	 * Create annotation
	 *
	 * @param userId User GUID (required).
	 * @param fileId File ID (required).
	 * @param body annotation (required).
	 *
	 * @return GD_CreateAnnotationResponse instance
	 */
	public GD_CreateAnnotationResponse CreateAnnotation(String userId, String fileId, GD_AnnotationInfo body) {
		if(userId == null || fileId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/files/{fileId}/annotations';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_CreateAnnotationResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_CreateAnnotationResponse.class);
	}

	/**
	 * Get list of annotations
	 *
	 * @param userId User GUID (required).
	 * @param fileId File ID (required).
	 *
	 * @return GD_ListAnnotationsResponse instance
	 */
	public GD_ListAnnotationsResponse ListAnnotations(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/files/{fileId}/annotations';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_ListAnnotationsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_ListAnnotationsResponse.class);
	}

	/**
	 * Delete annotation
	 *
	 * @param userId User GUID (required).
	 * @param annotationId Annotation ID (required).
	 *
	 * @return GD_DeleteAnnotationResponse instance
	 */
	public GD_DeleteAnnotationResponse DeleteAnnotation(String userId, String annotationId) {
		if(userId == null || annotationId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/annotations/{annotationId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'annotationId' + '}', GD_Utils.toPathValue(annotationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteAnnotationResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteAnnotationResponse.class);
	}

	/**
	 * Create annotation reply
	 *
	 * @param userId User GUID (required).
	 * @param annotationId Annotation ID (required).
	 * @param body Reply (required).
	 *
	 * @return GD_AddReplyResponse instance
	 */
	public GD_AddReplyResponse CreateAnnotationReply(String userId, String annotationId, GD_AnnotationReplyInfo body) {
		if(userId == null || annotationId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/annotations/{annotationId}/replies';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'annotationId' + '}', GD_Utils.toPathValue(annotationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddReplyResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_AddReplyResponse.class);
	}

	/**
	 * Edit annotation reply
	 *
	 * @param userId User GUID (required).
	 * @param replyGuid Reply GUID (required).
	 * @param body Message (required).
	 *
	 * @return GD_EditReplyResponse instance
	 */
	public GD_EditReplyResponse EditAnnotationReply(String userId, String replyGuid, String body) {
		if(userId == null || replyGuid == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/replies/{replyGuid}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'replyGuid' + '}', GD_Utils.toPathValue(replyGuid));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_EditReplyResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_EditReplyResponse.class);
	}

	/**
	 * Delete annotation reply
	 *
	 * @param userId User GUID (required).
	 * @param replyGuid Reply GUID (required).
	 *
	 * @return GD_DeleteReplyResponse instance
	 */
	public GD_DeleteReplyResponse DeleteAnnotationReply(String userId, String replyGuid) {
		if(userId == null || replyGuid == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/replies/{replyGuid}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'replyGuid' + '}', GD_Utils.toPathValue(replyGuid));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteReplyResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteReplyResponse.class);
	}

	/**
	 * Get list of annotation replies
	 *
	 * @param userId User GUID (required).
	 * @param annotationId Annotation ID (required).
	 * @param after After (required).
	 *
	 * @return GD_ListRepliesResponse instance
	 */
	public GD_ListRepliesResponse ListAnnotationReplies(String userId, String annotationId, Long after) {
		if(userId == null || annotationId == null || after == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/annotations/{annotationId}/replies';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'annotationId' + '}', GD_Utils.toPathValue(annotationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (after != null) {
			queryParams.put('after', GD_Utils.toPathValue(after));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_ListRepliesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_ListRepliesResponse.class);
	}

	/**
	 * Set annotation collaborators
	 *
	 * @param userId User GUID (required).
	 * @param fileId File ID (required).
	 * @param version Annotation version (required).
	 * @param body Collaborators (optional).
	 *
	 * @return GD_SetCollaboratorsResponse instance
	 */
	public GD_SetCollaboratorsResponse SetAnnotationCollaborators(String userId, String fileId, String version, List<String> body) {
		if(userId == null || fileId == null || version == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/files/{fileId}/version/{version}/collaborators';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		resourcePath = resourcePath.replace('{' + 'version' + '}', GD_Utils.toPathValue(version));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SetCollaboratorsResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SetCollaboratorsResponse.class);
	}

	/**
	 * Get list of annotation collaborators
	 *
	 * @param userId User GUID (required).
	 * @param fileId File ID (required).
	 *
	 * @return GD_GetCollaboratorsResponse instance
	 */
	public GD_GetCollaboratorsResponse GetAnnotationCollaborators(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/files/{fileId}/collaborators';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetCollaboratorsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetCollaboratorsResponse.class);
	}

	/**
	 * Add an annotation collaborator
	 *
	 * @param userId User GUID (required).
	 * @param fileId File ID (required).
	 * @param body Reviewer Info (optional).
	 *
	 * @return GD_AddCollaboratorResponse instance
	 */
	public GD_AddCollaboratorResponse AddAnnotationCollaborator(String userId, String fileId, GD_ReviewerInfo body) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/files/{fileId}/collaborators';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddCollaboratorResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_AddCollaboratorResponse.class);
	}

	/**
	 * Delete document reviewer
	 *
	 * @param userId User GUID (required).
	 * @param fileId File ID (required).
	 * @param reviewerId Reviewer ID (required).
	 *
	 * @return GD_AddCollaboratorResponse instance
	 */
	public GD_AddCollaboratorResponse DeleteDocumentReviewer(String userId, String fileId, String reviewerId) {
		if(userId == null || fileId == null || reviewerId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/files/{fileId}/collaborators/{reviewerId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		resourcePath = resourcePath.replace('{' + 'reviewerId' + '}', GD_Utils.toPathValue(reviewerId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddCollaboratorResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_AddCollaboratorResponse.class);
	}

	/**
	 * Get list of reviewer contacts
	 *
	 * @param userId User GUID (required).
	 *
	 * @return GD_GetReviewerContactsResponse instance
	 */
	public GD_GetReviewerContactsResponse GetReviewerContacts(String userId) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/contacts';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetReviewerContactsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetReviewerContactsResponse.class);
	}

	/**
	 * Get list of reviewer contacts
	 *
	 * @param userId User GUID (required).
	 * @param body Reviewer Contacts Array (optional).
	 *
	 * @return GD_GetReviewerContactsResponse instance
	 */
	public GD_GetReviewerContactsResponse SetReviewerContacts(String userId, List<GD_ReviewerContactInfo> body) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/reviewerContacts';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetReviewerContactsResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_GetReviewerContactsResponse.class);
	}

	/**
	 * Move annotation
	 *
	 * @param userId User GUID (required).
	 * @param annotationId Annotation ID (required).
	 * @param body position (required).
	 *
	 * @return GD_MoveAnnotationResponse instance
	 */
	public GD_MoveAnnotationResponse MoveAnnotation(String userId, String annotationId, GD_Point body) {
		if(userId == null || annotationId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/annotations/{annotationId}/position';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'annotationId' + '}', GD_Utils.toPathValue(annotationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_MoveAnnotationResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_MoveAnnotationResponse.class);
	}

	/**
	 * Resize annotation
	 *
	 * @param userId User GUID (required).
	 * @param annotationId Annotation ID (required).
	 * @param body position (required).
	 *
	 * @return GD_ResizeAnnotationResponse instance
	 */
	public GD_ResizeAnnotationResponse ResizeAnnotation(String userId, String annotationId, GD_AnnotationSizeInfo body) {
		if(userId == null || annotationId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/annotations/{annotationId}/size';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'annotationId' + '}', GD_Utils.toPathValue(annotationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_ResizeAnnotationResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_ResizeAnnotationResponse.class);
	}

	/**
	 * Set Annotation Access
	 *
	 * @param userId User GUID (required).
	 * @param annotationId Annotation ID (required).
	 * @param body Annotation Access (required).
	 *
	 * @return GD_SetAnnotationAccessResponse instance
	 */
	public GD_SetAnnotationAccessResponse SetAnnotationAccess(String userId, String annotationId, Integer body) {
		if(userId == null || annotationId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/annotations/{annotationId}/annotationAccess';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'annotationId' + '}', GD_Utils.toPathValue(annotationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SetAnnotationAccessResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SetAnnotationAccessResponse.class);
	}

	/**
	 * Move Annotation Marker
	 *
	 * @param userId User GUID (required).
	 * @param annotationId Annotation ID (required).
	 * @param body position (required).
	 *
	 * @return GD_MoveAnnotationResponse instance
	 */
	public GD_MoveAnnotationResponse MoveAnnotationMarker(String userId, String annotationId, GD_Point body) {
		if(userId == null || annotationId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/annotations/{annotationId}/markerPosition';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'annotationId' + '}', GD_Utils.toPathValue(annotationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_MoveAnnotationResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_MoveAnnotationResponse.class);
	}

	/**
	 * Set Reviewer Rights
	 *
	 * @param userId User GUID (required).
	 * @param fileId File ID (required).
	 * @param body Collaborators (required).
	 *
	 * @return GD_SetReviewerRightsResponse instance
	 */
	public GD_SetReviewerRightsResponse SetReviewerRights(String userId, String fileId, List<GD_ReviewerInfo> body) {
		if(userId == null || fileId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/files/{fileId}/reviewerRights';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SetReviewerRightsResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SetReviewerRightsResponse.class);
	}

	/**
	 * Get Shared Link Access Rights
	 *
	 * @param userId User GUID (required).
	 * @param fileId File ID (required).
	 *
	 * @return GD_GetSharedLinkAccessRightsResponse instance
	 */
	public GD_GetSharedLinkAccessRightsResponse GetSharedLinkAccessRights(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/files/{fileId}/sharedLinkAccessRights';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetSharedLinkAccessRightsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetSharedLinkAccessRightsResponse.class);
	}

	/**
	 * Set Shared Link Access Rights
	 *
	 * @param userId User GUID (required).
	 * @param fileId File ID (required).
	 * @param body Access Rights for the collaborate link (required).
	 *
	 * @return GD_SetSharedLinkAccessRightsResponse instance
	 */
	public GD_SetSharedLinkAccessRightsResponse SetSharedLinkAccessRights(String userId, String fileId, Integer body) {
		if(userId == null || fileId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/files/{fileId}/sharedLinkAccessRights';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SetSharedLinkAccessRightsResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SetSharedLinkAccessRightsResponse.class);
	}

	/**
	 * Set Session Web Hook Callback Url
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param body Callback Url (required).
	 *
	 * @return GD_SetSessionCallbackUrlResponse instance
	 */
	public GD_SetSessionCallbackUrlResponse SetSessionCallbackUrl(String userId, String fileId, String body) {
		if(userId == null || fileId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/files/{fileId}/sessionCallbackUrl';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SetSessionCallbackUrlResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SetSessionCallbackUrlResponse.class);
	}

	/**
	 * Save Text Of Text Field
	 *
	 * @param userId User GUID (required).
	 * @param annotationId Annotation ID (required).
	 * @param body Text (required).
	 *
	 * @return GD_SaveAnnotationTextResponse instance
	 */
	public GD_SaveAnnotationTextResponse SaveTextField(String userId, String annotationId, GD_TextFieldInfo body) {
		if(userId == null || annotationId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/annotations/{annotationId}/textFieldInfo';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'annotationId' + '}', GD_Utils.toPathValue(annotationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SaveAnnotationTextResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SaveAnnotationTextResponse.class);
	}

	/**
	 * Save Text Of Text Field
	 *
	 * @param userId User GUID (required).
	 * @param annotationId Annotation ID (required).
	 * @param body Font Color (required).
	 *
	 * @return GD_SaveAnnotationTextResponse instance
	 */
	public GD_SaveAnnotationTextResponse SetTextFieldColor(String userId, String annotationId, Integer body) {
		if(userId == null || annotationId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/ant/{userId}/annotations/{annotationId}/textFieldColor';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'annotationId' + '}', GD_Utils.toPathValue(annotationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SaveAnnotationTextResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SaveAnnotationTextResponse.class);
	}

	
}

