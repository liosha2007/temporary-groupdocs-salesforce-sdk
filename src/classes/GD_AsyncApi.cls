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

public with sharing class GD_AsyncApi {
	
	public GD_ApiClient apiClient { get; set; } 
	public String basePath { get; set; } 
	
	public GD_AsyncApi(GD_ApiClient apiClient){
		this(apiClient, 'https://dev-api.groupdocs.com/v2.0');
	}
	
	public GD_AsyncApi(GD_ApiClient apiClient, String basePath){
		this.apiClient = apiClient;
		this.basePath = basePath;
	}
	
	/**
	 * Get job
	 *
	 * @param userId User GUID (required).
	 * @param jobId Job Id or Guid (required).
	 *
	 * @return GD_GetJobResponse instance
	 */
	public GD_GetJobResponse GetJob(String userId, String jobId) {
		if(userId == null || jobId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/async/{userId}/jobs/{jobId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'jobId' + '}', GD_Utils.toPathValue(jobId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetJobResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetJobResponse.class);
	}

	/**
	 * Get job json
	 *
	 * @param userId User GUID (required).
	 * @param jobId Job id (required).
	 *
	 * @return GD_GetJobResponse instance
	 */
	public GD_GetJobResponse GetJobJson(String userId, String jobId) {
		if(userId == null || jobId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/async/{userId}/jobs/{jobId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'jobId' + '}', GD_Utils.toPathValue(jobId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetJobResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetJobResponse.class);
	}

	/**
	 * Get job resources
	 *
	 * @param userId User GUID (required).
	 * @param statusIds Comma separated job status identifiers (required).
	 * @param actions Actions (optional).
	 * @param excludedActions Excluded actions (optional).
	 *
	 * @return GD_GetJobResourcesResponse instance
	 */
	public GD_GetJobResourcesResponse GetJobResources(String userId, String statusIds, String actions, String excludedActions) {
		if(userId == null || statusIds == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/async/{userId}/jobs/resources';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (statusIds != null) {
			queryParams.put('statusIds', GD_Utils.toPathValue(statusIds));
		}
		if (actions != null) {
			queryParams.put('actions', GD_Utils.toPathValue(actions));
		}
		if (excludedActions != null) {
			queryParams.put('excluded_actions', GD_Utils.toPathValue(excludedActions));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetJobResourcesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetJobResourcesResponse.class);
	}

	/**
	 * Get job documents
	 *
	 * @param userId User GUID (required).
	 * @param jobId Job id or guid (required).
	 * @param format Format (optional).
	 *
	 * @return GD_GetJobDocumentsResponse instance
	 */
	public GD_GetJobDocumentsResponse GetJobDocuments(String userId, String jobId, String format) {
		if(userId == null || jobId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/async/{userId}/jobs/{jobId}/documents';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'jobId' + '}', GD_Utils.toPathValue(jobId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (format != null) {
			queryParams.put('format', GD_Utils.toPathValue(format));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetJobDocumentsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetJobDocumentsResponse.class);
	}

	/**
	 * Create job
	 *
	 * @param userId User GUID (required).
	 * @param body Job (required).
	 *
	 * @return GD_CreateJobResponse instance
	 */
	public GD_CreateJobResponse CreateJob(String userId, GD_JobInfo body) {
		if(userId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/async/{userId}/jobs';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_CreateJobResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_CreateJobResponse.class);
	}

	/**
	 * Delete draft job
	 *
	 * @param userId User GUID (required).
	 * @param jobGuid Job Guid (required).
	 *
	 * @return GD_DeleteResult instance
	 */
	public GD_DeleteResult DeleteJob(String userId, String jobGuid) {
		if(userId == null || jobGuid == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/async/{userId}/jobs/{jobGuid}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'jobGuid' + '}', GD_Utils.toPathValue(jobGuid));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteResult) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteResult.class);
	}

	/**
	 * Add job document
	 *
	 * @param userId User GUID (required).
	 * @param jobId Job id or guid (required).
	 * @param fileId File GUID (required).
	 * @param checkOwnership Check Document Ownership (required).
	 * @param formats Formats (optional).
	 *
	 * @return GD_AddJobDocumentResponse instance
	 */
	public GD_AddJobDocumentResponse AddJobDocument(String userId, String jobId, String fileId, Boolean checkOwnership, String formats) {
		if(userId == null || jobId == null || fileId == null || checkOwnership == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/async/{userId}/jobs/{jobId}/files/{fileId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'jobId' + '}', GD_Utils.toPathValue(jobId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (checkOwnership != null) {
			queryParams.put('check_ownership', GD_Utils.toPathValue(checkOwnership));
		}
		if (formats != null) {
			queryParams.put('out_formats', GD_Utils.toPathValue(formats));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddJobDocumentResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_AddJobDocumentResponse.class);
	}

	/**
	 * Delete document from job
	 *
	 * @param userId User GUID (required).
	 * @param jobGuid Job Guid (required).
	 * @param documentId Document GUID (required).
	 *
	 * @return GD_DeleteResponse instance
	 */
	public GD_DeleteResponse DeleteJobDocument(String userId, String jobGuid, String documentId) {
		if(userId == null || jobGuid == null || documentId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/async/{userId}/jobs/{jobGuid}/documents/{documentId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'jobGuid' + '}', GD_Utils.toPathValue(jobGuid));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteResponse.class);
	}

	/**
	 * Add job document url
	 *
	 * @param userId User GUID (required).
	 * @param jobId Job id (required).
	 * @param absoluteUrl Absolute Url (required).
	 * @param formats Formats (optional).
	 *
	 * @return GD_AddJobDocumentResponse instance
	 */
	public GD_AddJobDocumentResponse AddJobDocumentUrl(String userId, String jobId, String absoluteUrl, String formats) {
		if(userId == null || jobId == null || absoluteUrl == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/async/{userId}/jobs/{jobId}/urls';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'jobId' + '}', GD_Utils.toPathValue(jobId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (absoluteUrl != null) {
			queryParams.put('absolute_url', GD_Utils.toPathValue(absoluteUrl));
		}
		if (formats != null) {
			queryParams.put('out_formats', GD_Utils.toPathValue(formats));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddJobDocumentResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_AddJobDocumentResponse.class);
	}

	/**
	 * Update job
	 *
	 * @param userId User GUID (required).
	 * @param jobId Job id or Guid (required).
	 * @param body Job (required).
	 *
	 * @return GD_UpdateJobResponse instance
	 */
	public GD_UpdateJobResponse UpdateJob(String userId, String jobId, GD_JobInfo body) {
		if(userId == null || jobId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/async/{userId}/jobs/{jobId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'jobId' + '}', GD_Utils.toPathValue(jobId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UpdateJobResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_UpdateJobResponse.class);
	}

	/**
	 * Get jobs
	 *
	 * @param userId User GUID (required).
	 * @param pageIndex Page Index (optional).
	 * @param pageSize Page Size (optional).
	 * @param m_date Date (optional).
	 * @param statusIds Comma separated status identifiers (optional).
	 * @param actions Actions (optional).
	 * @param excludedActions Excluded actions (optional).
	 *
	 * @return GD_GetJobsResponse instance
	 */
	public GD_GetJobsResponse GetJobs(String userId, String pageIndex, String pageSize, String m_date, String statusIds, String actions, String excludedActions) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/async/{userId}/jobs';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (pageIndex != null) {
			queryParams.put('page', GD_Utils.toPathValue(pageIndex));
		}
		if (pageSize != null) {
			queryParams.put('count', GD_Utils.toPathValue(pageSize));
		}
		if (m_date != null) {
			queryParams.put('date', GD_Utils.toPathValue(m_date));
		}
		if (statusIds != null) {
			queryParams.put('statusIds', GD_Utils.toPathValue(statusIds));
		}
		if (actions != null) {
			queryParams.put('actions', GD_Utils.toPathValue(actions));
		}
		if (excludedActions != null) {
			queryParams.put('excluded_actions', GD_Utils.toPathValue(excludedActions));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetJobsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetJobsResponse.class);
	}

	/**
	 * Get jobs documents
	 *
	 * @param userId User GUID (required).
	 * @param pageIndex Page Index (optional).
	 * @param pageSize Page Size (optional).
	 * @param actions Actions (optional).
	 * @param excludedActions Excluded actions (optional).
	 * @param orderBy Order by (optional).
	 * @param orderAsc Order asc (optional).
	 *
	 * @return GD_GetJobsDocumentsResponse instance
	 */
	public GD_GetJobsDocumentsResponse GetJobsDocuments(String userId, String pageIndex, String pageSize, String actions, String excludedActions, String orderBy, Boolean orderAsc) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/async/{userId}/jobs/documents';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (pageIndex != null) {
			queryParams.put('page', GD_Utils.toPathValue(pageIndex));
		}
		if (pageSize != null) {
			queryParams.put('count', GD_Utils.toPathValue(pageSize));
		}
		if (actions != null) {
			queryParams.put('actions', GD_Utils.toPathValue(actions));
		}
		if (excludedActions != null) {
			queryParams.put('excluded_actions', GD_Utils.toPathValue(excludedActions));
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
		return (GD_GetJobsDocumentsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetJobsDocumentsResponse.class);
	}

	/**
	 * Convert
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param emailResults Email results (optional).
	 * @param description Description (optional).
	 * @param printScript Print (optional).
	 * @param callbackUrl Callback url (optional).
	 * @param new_type Target type (optional).
	 *
	 * @return GD_ConvertResponse instance
	 */
	public GD_ConvertResponse Convert(String userId, String fileId, String emailResults, String description, Boolean printScript, String callbackUrl, String new_type) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/async/{userId}/files/{fileId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (emailResults != null) {
			queryParams.put('email_results', GD_Utils.toPathValue(emailResults));
		}
		if (description != null) {
			queryParams.put('new_description', GD_Utils.toPathValue(description));
		}
		if (printScript != null) {
			queryParams.put('print_script', GD_Utils.toPathValue(printScript));
		}
		if (callbackUrl != null) {
			queryParams.put('callback', GD_Utils.toPathValue(callbackUrl));
		}
		if (new_type != null) {
			queryParams.put('new_type', GD_Utils.toPathValue(new_type));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_ConvertResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_ConvertResponse.class);
	}

	
}

