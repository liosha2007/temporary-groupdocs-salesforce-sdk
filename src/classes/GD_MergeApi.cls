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

public with sharing class GD_MergeApi {
	
	public GD_ApiClient apiClient { get; set; } 
	public String basePath { get; set; } 
	
	public GD_MergeApi(GD_ApiClient apiClient){
		this(apiClient, 'https://api.groupdocs.com/v2.0');
	}
	
	public GD_MergeApi(GD_ApiClient apiClient, String basePath){
		this.apiClient = apiClient;
		this.basePath = basePath;
	}
	
	/**
	 * Get questionnaire collectors
	 *
	 * @param userId User global unique identifier (required).
	 * @param questionnaireId Questionnaire identifier (required).
	 *
	 * @return GD_GetQuestionnaireCollectorsResponse instance
	 */
	public GD_GetQuestionnaireCollectorsResponse GetQuestionnaireCollectors(String userId, String questionnaireId) {
		if(userId == null || questionnaireId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/{questionnaireId}/collectors';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'questionnaireId' + '}', GD_Utils.toPathValue(questionnaireId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetQuestionnaireCollectorsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetQuestionnaireCollectorsResponse.class);
	}

	/**
	 * Returns questionnaire collector
	 *
	 * @param userId User global unique identifier (required).
	 * @param collectorId Questionnaire collector global unique identifier (required).
	 *
	 * @return GD_GetQuestionnaireCollectorResponse instance
	 */
	public GD_GetQuestionnaireCollectorResponse GetQuestionnaireCollector(String userId, String collectorId) {
		if(userId == null || collectorId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/collectors/{collectorId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'collectorId' + '}', GD_Utils.toPathValue(collectorId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetQuestionnaireCollectorResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetQuestionnaireCollectorResponse.class);
	}

	/**
	 * Add questionnaire collector
	 *
	 * @param userId User global unique identifier (required).
	 * @param questionnaireId Questionnaire identifier (required).
	 * @param body Questionnaire collector to be added (required).
	 *
	 * @return GD_AddQuestionnaireCollectorResponse instance
	 */
	public GD_AddQuestionnaireCollectorResponse AddQuestionnaireCollector(String userId, String questionnaireId, GD_QuestionnaireCollectorInfo body) {
		if(userId == null || questionnaireId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/{questionnaireId}/collectors';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'questionnaireId' + '}', GD_Utils.toPathValue(questionnaireId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddQuestionnaireCollectorResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_AddQuestionnaireCollectorResponse.class);
	}

	/**
	 * Update questionnaire collector
	 *
	 * @param userId User global unique identifier (required).
	 * @param collectorId Questionnaire collector global unique identifier (required).
	 * @param body Questionnaire collector data (required).
	 *
	 * @return GD_UpdateQuestionnaireCollectorResponse instance
	 */
	public GD_UpdateQuestionnaireCollectorResponse UpdateQuestionnaireCollector(String userId, String collectorId, GD_QuestionnaireCollectorInfo body) {
		if(userId == null || collectorId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/collectors/{collectorId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'collectorId' + '}', GD_Utils.toPathValue(collectorId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UpdateQuestionnaireCollectorResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_UpdateQuestionnaireCollectorResponse.class);
	}

	/**
	 * Removes questionnaire collector
	 *
	 * @param userId User global unique identifier (required).
	 * @param collectorId Questionnaire collector global unique identifier (required).
	 *
	 * @return GD_DeleteQuestionnaireCollectorResponse instance
	 */
	public GD_DeleteQuestionnaireCollectorResponse DeleteQuestionnaireCollector(String userId, String collectorId) {
		if(userId == null || collectorId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/collectors/{collectorId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'collectorId' + '}', GD_Utils.toPathValue(collectorId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteQuestionnaireCollectorResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteQuestionnaireCollectorResponse.class);
	}

	/**
	 * Get template documents information
	 *
	 * @param userId User global unique identifier (required).
	 *
	 * @return GD_GetTemplatesResponse instance
	 */
	public GD_GetTemplatesResponse GetTemplates(String userId) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/templates';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetTemplatesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetTemplatesResponse.class);
	}

	/**
	 * Get questionnaire fields
	 *
	 * @param userId User global unique identifier (required).
	 * @param questionnaireId Questionnaire global unique identifier (required).
	 * @param includeGeometry A flag indicating whether fields coordinates and size should be included into the response. (optional).
	 *
	 * @return GD_TemplateFieldsResponse instance
	 */
	public GD_TemplateFieldsResponse GetQuestionnaireFields(String userId, String questionnaireId, Boolean includeGeometry) {
		if(userId == null || questionnaireId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/{questionnaireId}/fields';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'questionnaireId' + '}', GD_Utils.toPathValue(questionnaireId));
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
	 * Get questionnaire metadata
	 *
	 * @param userId User global unique identifier (required).
	 * @param questionnaireId Questionnaire global unique identifier (required).
	 *
	 * @return GD_GetQuestionnaireMetadataResponse instance
	 */
	public GD_GetQuestionnaireMetadataResponse GetQuestionnaireMetadata(String userId, String questionnaireId) {
		if(userId == null || questionnaireId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/{questionnaireId}/metadata';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'questionnaireId' + '}', GD_Utils.toPathValue(questionnaireId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetQuestionnaireMetadataResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetQuestionnaireMetadataResponse.class);
	}

	/**
	 * Update questionnaire metadata
	 *
	 * @param userId User global unique identifier (required).
	 * @param questionnaireId Questionnaire global unique identifier (required).
	 * @param body Questionnaire metadata to update (required).
	 *
	 * @return GD_UpdateQuestionnaireResponse instance
	 */
	public GD_UpdateQuestionnaireResponse UpdateQuestionnaireMetadata(String userId, String questionnaireId, GD_QuestionnaireMetadata body) {
		if(userId == null || questionnaireId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/{questionnaireId}/metadata';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'questionnaireId' + '}', GD_Utils.toPathValue(questionnaireId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UpdateQuestionnaireResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_UpdateQuestionnaireResponse.class);
	}

	/**
	 * Add job document datasource
	 *
	 * @param userId User GUID (required).
	 * @param jobId Job indetifier (required).
	 * @param fileId File indetifier (required).
	 * @param datasourceId Datasource indetifier (required).
	 *
	 * @return GD_AddDocumentDataSourceResponse instance
	 */
	public GD_AddDocumentDataSourceResponse AddJobDocumentDataSource(String userId, Integer jobId, Integer fileId, Integer datasourceId) {
		if(userId == null || jobId == null || fileId == null || datasourceId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/jobs/{jobId}/files/{fileId}/datasources/{datasourceId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'jobId' + '}', GD_Utils.toPathValue(jobId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		resourcePath = resourcePath.replace('{' + 'datasourceId' + '}', GD_Utils.toPathValue(datasourceId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddDocumentDataSourceResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_AddDocumentDataSourceResponse.class);
	}

	/**
	 * Add job document datasource fields
	 *
	 * @param userId User GUID (required).
	 * @param jobId Job id (required).
	 * @param fileId File GUID (required).
	 * @param body Fields (required).
	 *
	 * @return GD_AddDocumentDataSourceResponse instance
	 */
	public GD_AddDocumentDataSourceResponse AddJobDocumentDataSourceFields(String userId, String jobId, String fileId, List<GD_DatasourceField> body) {
		if(userId == null || jobId == null || fileId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/jobs/{jobId}/files/{fileId}/datasources';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'jobId' + '}', GD_Utils.toPathValue(jobId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddDocumentDataSourceResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_AddDocumentDataSourceResponse.class);
	}

	/**
	 * Merge datasource
	 *
	 * @param userId User global unique identifier (required).
	 * @param collectorId Collector global unique identifier to fill (required).
	 * @param datasourceId Datasource identifier (required).
	 * @param targetType Filled document type (optional).
	 * @param emailResults Email results (optional).
	 *
	 * @return GD_MergeTemplateResponse instance
	 */
	public GD_MergeTemplateResponse FillQuestionnaire(String userId, String collectorId, String datasourceId, String targetType, String emailResults) {
		if(userId == null || collectorId == null || datasourceId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/collectors/{collectorId}/datasources/{datasourceId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'collectorId' + '}', GD_Utils.toPathValue(collectorId));
		resourcePath = resourcePath.replace('{' + 'datasourceId' + '}', GD_Utils.toPathValue(datasourceId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (targetType != null) {
			queryParams.put('new_type', GD_Utils.toPathValue(targetType));
		}
		if (emailResults != null) {
			queryParams.put('email_results', GD_Utils.toPathValue(emailResults));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_MergeTemplateResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_MergeTemplateResponse.class);
	}

	/**
	 * Scheduled questionnaire execution fullfilment job
	 *
	 * @param userId User global unique identifier (required).
	 * @param executionId Execution global unique identifier to fill (required).
	 * @param datasourceId Datasource identifier (required).
	 * @param targetType Filled document type (optional).
	 * @param emailResults Email results (optional).
	 *
	 * @return GD_MergeTemplateResponse instance
	 */
	public GD_MergeTemplateResponse FillExecution(String userId, String executionId, String datasourceId, String targetType, String emailResults) {
		if(userId == null || executionId == null || datasourceId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/executions/{executionId}/datasources/{datasourceId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'executionId' + '}', GD_Utils.toPathValue(executionId));
		resourcePath = resourcePath.replace('{' + 'datasourceId' + '}', GD_Utils.toPathValue(datasourceId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (targetType != null) {
			queryParams.put('new_type', GD_Utils.toPathValue(targetType));
		}
		if (emailResults != null) {
			queryParams.put('email_results', GD_Utils.toPathValue(emailResults));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_MergeTemplateResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_MergeTemplateResponse.class);
	}

	/**
	 * Merge datasource
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param datasourceId Datasource id (required).
	 * @param targetType Target type (optional).
	 * @param emailResults Email results (optional).
	 *
	 * @return GD_MergeTemplateResponse instance
	 */
	public GD_MergeTemplateResponse MergeDatasource(String userId, String fileId, String datasourceId, String targetType, String emailResults) {
		if(userId == null || fileId == null || datasourceId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/files/{fileId}/datasources/{datasourceId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		resourcePath = resourcePath.replace('{' + 'datasourceId' + '}', GD_Utils.toPathValue(datasourceId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (targetType != null) {
			queryParams.put('new_type', GD_Utils.toPathValue(targetType));
		}
		if (emailResults != null) {
			queryParams.put('email_results', GD_Utils.toPathValue(emailResults));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_MergeTemplateResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_MergeTemplateResponse.class);
	}

	/**
	 * Merge datasource fields
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param targetType Target type (optional).
	 * @param emailResults Email results (optional).
	 * @param assemblyName Assembly name (optional).
	 * @param body Fields (required).
	 *
	 * @return GD_MergeTemplateResponse instance
	 */
	public GD_MergeTemplateResponse MergeDatasourceFields(String userId, String fileId, String targetType, String emailResults, String assemblyName, List<GD_DatasourceField> body) {
		if(userId == null || fileId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/files/{fileId}/datasources';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (targetType != null) {
			queryParams.put('new_type', GD_Utils.toPathValue(targetType));
		}
		if (emailResults != null) {
			queryParams.put('email_results', GD_Utils.toPathValue(emailResults));
		}
		if (assemblyName != null) {
			queryParams.put('assembly_name', GD_Utils.toPathValue(assemblyName));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_MergeTemplateResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_MergeTemplateResponse.class);
	}

	/**
	 * Get questionnaire
	 *
	 * @param userId User GUID (required).
	 * @param questionnaireId Questionnaire id (required).
	 *
	 * @return GD_GetQuestionnaireResponse instance
	 */
	public GD_GetQuestionnaireResponse GetQuestionnaire(String userId, String questionnaireId) {
		if(userId == null || questionnaireId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/{questionnaireId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'questionnaireId' + '}', GD_Utils.toPathValue(questionnaireId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetQuestionnaireResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetQuestionnaireResponse.class);
	}

	/**
	 * Get questionnaires
	 *
	 * @param userId User GUID (required).
	 * @param status Questionnaire status to filter by (optional).
	 * @param pageNumber Page number to return questionnaires on (optional).
	 * @param pageSize Number of questionnaires to return (optional).
	 *
	 * @return GD_GetQuestionnairesResponse instance
	 */
	public GD_GetQuestionnairesResponse GetQuestionnaires(String userId, String status, Integer pageNumber, Integer pageSize) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (status != null) {
			queryParams.put('status', GD_Utils.toPathValue(status));
		}
		if (pageNumber != null) {
			queryParams.put('page_number', GD_Utils.toPathValue(pageNumber));
		}
		if (pageSize != null) {
			queryParams.put('page_size', GD_Utils.toPathValue(pageSize));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetQuestionnairesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetQuestionnairesResponse.class);
	}

	/**
	 * Create questionnaire
	 *
	 * @param userId User GUID (required).
	 * @param body Questionnaire (required).
	 *
	 * @return GD_CreateQuestionnaireResponse instance
	 */
	public GD_CreateQuestionnaireResponse CreateQuestionnaire(String userId, GD_QuestionnaireInfo body) {
		if(userId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_CreateQuestionnaireResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_CreateQuestionnaireResponse.class);
	}

	/**
	 * Update questionnaire
	 *
	 * @param userId User GUID (required).
	 * @param questionnaireId Questionnaire id (required).
	 * @param body Questionnaire (required).
	 *
	 * @return GD_UpdateQuestionnaireResponse instance
	 */
	public GD_UpdateQuestionnaireResponse UpdateQuestionnaire(String userId, String questionnaireId, GD_QuestionnaireInfo body) {
		if(userId == null || questionnaireId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/{questionnaireId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'questionnaireId' + '}', GD_Utils.toPathValue(questionnaireId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UpdateQuestionnaireResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_UpdateQuestionnaireResponse.class);
	}

	/**
	 * Delete questionnaire
	 *
	 * @param userId User GUID (required).
	 * @param questionnaireId Questionnaire id (required).
	 *
	 * @return GD_DeleteQuestionnaireResponse instance
	 */
	public GD_DeleteQuestionnaireResponse DeleteQuestionnaire(String userId, String questionnaireId) {
		if(userId == null || questionnaireId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/{questionnaireId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'questionnaireId' + '}', GD_Utils.toPathValue(questionnaireId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteQuestionnaireResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteQuestionnaireResponse.class);
	}

	/**
	 * Get document questionnaires
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 *
	 * @return GD_GetDocumentQuestionnairesResponse instance
	 */
	public GD_GetDocumentQuestionnairesResponse GetDocumentQuestionnaires(String userId, String fileId) {
		if(userId == null || fileId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/files/{fileId}/questionnaires';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetDocumentQuestionnairesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetDocumentQuestionnairesResponse.class);
	}

	/**
	 * Create document questionnaire
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param body Questionnaire (required).
	 *
	 * @return GD_AddDocumentQuestionnaireResponse instance
	 */
	public GD_AddDocumentQuestionnaireResponse CreateDocumentQuestionnaire(String userId, String fileId, GD_QuestionnaireInfo body) {
		if(userId == null || fileId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/files/{fileId}/questionnaires';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddDocumentQuestionnaireResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_AddDocumentQuestionnaireResponse.class);
	}

	/**
	 * Add document questionnaire
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param questionnaireId Questionnaire id (required).
	 *
	 * @return GD_AddDocumentQuestionnaireResponse instance
	 */
	public GD_AddDocumentQuestionnaireResponse AddDocumentQuestionnaire(String userId, String fileId, String questionnaireId) {
		if(userId == null || fileId == null || questionnaireId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/files/{fileId}/questionnaires/{questionnaireId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		resourcePath = resourcePath.replace('{' + 'questionnaireId' + '}', GD_Utils.toPathValue(questionnaireId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddDocumentQuestionnaireResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_AddDocumentQuestionnaireResponse.class);
	}

	/**
	 * Delete document questionnaire
	 *
	 * @param userId User GUID (required).
	 * @param fileId File GUID (required).
	 * @param questionnaireId Questionnaire id (required).
	 *
	 * @return GD_DeleteDocumentQuestionnaireResponse instance
	 */
	public GD_DeleteDocumentQuestionnaireResponse DeleteDocumentQuestionnaire(String userId, String fileId, String questionnaireId) {
		if(userId == null || fileId == null || questionnaireId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/files/{fileId}/questionnaires/{questionnaireId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fileId' + '}', GD_Utils.toPathValue(fileId));
		resourcePath = resourcePath.replace('{' + 'questionnaireId' + '}', GD_Utils.toPathValue(questionnaireId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteDocumentQuestionnaireResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteDocumentQuestionnaireResponse.class);
	}

	/**
	 * Add datasource
	 *
	 * @param userId User GUID (required).
	 * @param body Datasource (required).
	 *
	 * @return GD_AddDatasourceResponse instance
	 */
	public GD_AddDatasourceResponse AddDataSource(String userId, GD_Datasource body) {
		if(userId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/datasources';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddDatasourceResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_AddDatasourceResponse.class);
	}

	/**
	 * Update datasource
	 *
	 * @param userId User GUID (required).
	 * @param datasourceId Datasource id (required).
	 * @param body Datasource (required).
	 *
	 * @return GD_AddDatasourceResponse instance
	 */
	public GD_AddDatasourceResponse UpdateDataSource(String userId, String datasourceId, GD_Datasource body) {
		if(userId == null || datasourceId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/datasources/{datasourceId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'datasourceId' + '}', GD_Utils.toPathValue(datasourceId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddDatasourceResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_AddDatasourceResponse.class);
	}

	/**
	 * Update datasource fields
	 *
	 * @param userId User GUID (required).
	 * @param datasourceId Datasource id (required).
	 * @param body Datasource (required).
	 *
	 * @return GD_AddDatasourceResponse instance
	 */
	public GD_AddDatasourceResponse UpdateDataSourceFields(String userId, String datasourceId, GD_Datasource body) {
		if(userId == null || datasourceId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/datasources/{datasourceId}/fields';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'datasourceId' + '}', GD_Utils.toPathValue(datasourceId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddDatasourceResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_AddDatasourceResponse.class);
	}

	/**
	 * Delete datasource fields
	 *
	 * @param userId User GUID (required).
	 * @param datasourceId Datasource id (required).
	 *
	 * @return GD_DeleteDatasourceResponse instance
	 */
	public GD_DeleteDatasourceResponse DeleteDataSource(String userId, String datasourceId) {
		if(userId == null || datasourceId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/datasources/{datasourceId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'datasourceId' + '}', GD_Utils.toPathValue(datasourceId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteDatasourceResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteDatasourceResponse.class);
	}

	/**
	 * Get datasource
	 *
	 * @param userId User GUID (required).
	 * @param datasourceId Datasource id (required).
	 * @param fields Fields (optional).
	 *
	 * @return GD_GetDatasourceResponse instance
	 */
	public GD_GetDatasourceResponse GetDataSource(String userId, String datasourceId, String fields) {
		if(userId == null || datasourceId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/datasources/{datasourceId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'datasourceId' + '}', GD_Utils.toPathValue(datasourceId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (fields != null) {
			queryParams.put('field', GD_Utils.toPathValue(fields));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetDatasourceResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetDatasourceResponse.class);
	}

	/**
	 * Get questionnaire datasources
	 *
	 * @param userId User GUID (required).
	 * @param questionnaireId QuestionnaireId id (required).
	 * @param includeFields Include fields (optional).
	 *
	 * @return GD_GetDatasourcesResponse instance
	 */
	public GD_GetDatasourcesResponse GetQuestionnaireDataSources(String userId, String questionnaireId, Boolean includeFields) {
		if(userId == null || questionnaireId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/{questionnaireId}/datasources';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'questionnaireId' + '}', GD_Utils.toPathValue(questionnaireId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (includeFields != null) {
			queryParams.put('include_fields', GD_Utils.toPathValue(includeFields));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetDatasourcesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetDatasourcesResponse.class);
	}

	/**
	 * Add questionnaire execution
	 *
	 * @param userId User GUID (required).
	 * @param collectorId Questionnaire collector id (required).
	 * @param body Execution (required).
	 *
	 * @return GD_AddQuestionnaireExecutionResponse instance
	 */
	public GD_AddQuestionnaireExecutionResponse AddQuestionnaireExecution(String userId, String collectorId, GD_QuestionnaireExecutionInfo body) {
		if(userId == null || collectorId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/collectors/{collectorId}/executions';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'collectorId' + '}', GD_Utils.toPathValue(collectorId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddQuestionnaireExecutionResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_AddQuestionnaireExecutionResponse.class);
	}

	/**
	 * Get questionnaire collector executions
	 *
	 * @param userId User GUID (required).
	 * @param collectorId Questionnaire collector global unique identifier (required).
	 *
	 * @return GD_GetQuestionnaireExecutionsResponse instance
	 */
	public GD_GetQuestionnaireExecutionsResponse GetQuestionnaireCollectorExecutions(String userId, String collectorId) {
		if(userId == null || collectorId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/collectors/{collectorId}/executions';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'collectorId' + '}', GD_Utils.toPathValue(collectorId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetQuestionnaireExecutionsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetQuestionnaireExecutionsResponse.class);
	}

	/**
	 * Get questionnaire executions
	 *
	 * @param userId User GUID (required).
	 * @param questionnaireId Questionnaire global unique identifier (required).
	 *
	 * @return GD_GetQuestionnaireExecutionsResponse instance
	 */
	public GD_GetQuestionnaireExecutionsResponse GetQuestionnaireExecutions(String userId, String questionnaireId) {
		if(userId == null || questionnaireId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/{questionnaireId}/executions';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'questionnaireId' + '}', GD_Utils.toPathValue(questionnaireId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetQuestionnaireExecutionsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetQuestionnaireExecutionsResponse.class);
	}

	/**
	 * Get questionnaire execution
	 *
	 * @param userId User GUID (required).
	 * @param executionId Questionnaire execution global unique identifier (required).
	 *
	 * @return GD_GetQuestionnaireExecutionResponse instance
	 */
	public GD_GetQuestionnaireExecutionResponse GetQuestionnaireExecution(String userId, String executionId) {
		if(userId == null || executionId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/executions/{executionId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'executionId' + '}', GD_Utils.toPathValue(executionId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetQuestionnaireExecutionResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetQuestionnaireExecutionResponse.class);
	}

	/**
	 * Removes questionnaire execution
	 *
	 * @param userId User GUID (required).
	 * @param executionId Execution id (required).
	 *
	 * @return GD_DeleteQuestionnaireExecutionResponse instance
	 */
	public GD_DeleteQuestionnaireExecutionResponse DeleteQuestionnaireExecution(String userId, String executionId) {
		if(userId == null || executionId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/executions/{executionId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'executionId' + '}', GD_Utils.toPathValue(executionId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteQuestionnaireExecutionResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteQuestionnaireExecutionResponse.class);
	}

	/**
	 * Update questionnaire execution
	 *
	 * @param userId User GUID (required).
	 * @param executionId Execution id (required).
	 * @param body Execution (required).
	 *
	 * @return GD_UpdateQuestionnaireExecutionResponse instance
	 */
	public GD_UpdateQuestionnaireExecutionResponse UpdateQuestionnaireExecution(String userId, String executionId, GD_QuestionnaireExecutionInfo body) {
		if(userId == null || executionId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/executions/{executionId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'executionId' + '}', GD_Utils.toPathValue(executionId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UpdateQuestionnaireExecutionResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_UpdateQuestionnaireExecutionResponse.class);
	}

	/**
	 * Update questionnaire execution status
	 *
	 * @param userId User GUID (required).
	 * @param executionId Execution id (required).
	 * @param body Status (required).
	 *
	 * @return GD_UpdateQuestionnaireExecutionResponse instance
	 */
	public GD_UpdateQuestionnaireExecutionResponse UpdateQuestionnaireExecutionStatus(String userId, String executionId, String body) {
		if(userId == null || executionId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/merge/{userId}/questionnaires/executions/{executionId}/status';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'executionId' + '}', GD_Utils.toPathValue(executionId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UpdateQuestionnaireExecutionResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_UpdateQuestionnaireExecutionResponse.class);
	}

	
}

