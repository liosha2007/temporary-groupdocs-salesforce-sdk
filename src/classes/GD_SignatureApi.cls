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

public with sharing class GD_SignatureApi {
	
	public GD_ApiClient apiClient { get; set; } 
	public String basePath { get; set; } 
	
	public GD_SignatureApi(GD_ApiClient apiClient){
		this(apiClient, 'https://dev-api.groupdocs.com/v2.0');
	}
	
	public GD_SignatureApi(GD_ApiClient apiClient, String basePath){
		this.apiClient = apiClient;
		this.basePath = basePath;
	}
	
	/**
	 * Create signature field
	 *
	 * @param userId User GUID (required).
	 * @param body Settings of the new field (optional).
	 *
	 * @return GD_SignatureFieldResponse instance
	 */
	public GD_SignatureFieldResponse CreateSignatureField(String userId, GD_SignatureFieldSettings body) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/field';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFieldResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureFieldResponse.class);
	}

	/**
	 * Modify signature field
	 *
	 * @param userId User GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param body Settings of the field (optional).
	 *
	 * @return GD_SignatureFieldResponse instance
	 */
	public GD_SignatureFieldResponse ModifySignatureField(String userId, String fieldId, GD_SignatureFieldSettings body) {
		if(userId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/fields/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFieldResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureFieldResponse.class);
	}

	/**
	 * Delete signature field
	 *
	 * @param userId User GUID (required).
	 * @param fieldId Field GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureField(String userId, String fieldId) {
		if(userId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/fields/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Get contacts
	 *
	 * @param userId User GUID (required).
	 * @param page Page number (optional).
	 * @param firstName Filter by firstName (optional).
	 * @param lastName Filter by lastName (optional).
	 * @param email Filter by email (optional).
	 * @param records Records count to be returned (optional).
	 *
	 * @return GD_SignatureContactsResponse instance
	 */
	public GD_SignatureContactsResponse GetContacts(String userId, String page, String firstName, String lastName, String email, String records) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/contacts';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (page != null) {
			queryParams.put('page', GD_Utils.toPathValue(page));
		}
		if (firstName != null) {
			queryParams.put('firstName', GD_Utils.toPathValue(firstName));
		}
		if (lastName != null) {
			queryParams.put('lastName', GD_Utils.toPathValue(lastName));
		}
		if (email != null) {
			queryParams.put('email', GD_Utils.toPathValue(email));
		}
		if (records != null) {
			queryParams.put('records', GD_Utils.toPathValue(records));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureContactsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureContactsResponse.class);
	}

	/**
	 * Add contact
	 *
	 * @param userId User GUID (required).
	 * @param body Contact data (required).
	 *
	 * @return GD_SignatureContactResponse instance
	 */
	public GD_SignatureContactResponse AddContact(String userId, GD_SignatureContactSettings body) {
		if(userId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/contact';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureContactResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureContactResponse.class);
	}

	/**
	 * Update contact
	 *
	 * @param userId User GUID (required).
	 * @param contactId Contact GUID (required).
	 * @param body Contact data (optional).
	 *
	 * @return GD_SignatureContactResponse instance
	 */
	public GD_SignatureContactResponse ModifyContact(String userId, String contactId, GD_SignatureContactSettings body) {
		if(userId == null || contactId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/contacts/{contactId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'contactId' + '}', GD_Utils.toPathValue(contactId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureContactResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureContactResponse.class);
	}

	/**
	 * Delete contact
	 *
	 * @param userId User GUID (required).
	 * @param contactId Contact GUID (required).
	 *
	 * @return GD_SignatureContactResponse instance
	 */
	public GD_SignatureContactResponse DeleteContact(String userId, String contactId) {
		if(userId == null || contactId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/contacts/{contactId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'contactId' + '}', GD_Utils.toPathValue(contactId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureContactResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureContactResponse.class);
	}

	/**
	 * Import contacts
	 *
	 * @param userId User GUID (required).
	 * @param body Array of SignatureContactSettings (optional).
	 *
	 * @return GD_SignatureContactsImportResponse instance
	 */
	public GD_SignatureContactsImportResponse ImportContacts(String userId, List<GD_SignatureContactSettings> body) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/contacts';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureContactsImportResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureContactsImportResponse.class);
	}

	/**
	 * Add Contact Integration Authorization
	 *
	 * @param userId User GUID (required).
	 * @param body Authorization settings (optional).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse AddContactIntegration(String userId, String body) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/integration';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Sign document
	 *
	 * @param userId User GUID (required).
	 * @param body Settings of the signing document (optional).
	 *
	 * @return GD_SignatureSignDocumentsResponse instance
	 */
	public GD_SignatureSignDocumentsResponse SignDocument(String userId, GD_SignatureSignDocumentSettings body) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/sign';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureSignDocumentsResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureSignDocumentsResponse.class);
	}

	/**
	 * Archive envelope
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse ArchiveSignatureEnvelope(String userId, String envelopeId) {
		if(userId == null || envelopeId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/archive';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Get envelope audit logs
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 *
	 * @return GD_SignatureEnvelopeAuditLogsResponse instance
	 */
	public GD_SignatureEnvelopeAuditLogsResponse GetEnvelopeAuditLogs(String userId, String envelopeId) {
		if(userId == null || envelopeId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/logs';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeAuditLogsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureEnvelopeAuditLogsResponse.class);
	}

	/**
	 * Create signature envelope
	 *
	 * @param userId User GUID (required).
	 * @param name Envelope name (optional).
	 * @param body Settings of the new envelope (optional).
	 * @param templateGuid A templateGuid of the template which will be used to created the new envelope (optional).
	 * @param envelopeGuid A envelopeGuid of the envelope which will be used to created the new envelope (optional).
	 * @param documentGuid A documentGuid of the document which will be added to the new created envelope (optional).
	 *
	 * @return GD_SignatureEnvelopeResponse instance
	 */
	public GD_SignatureEnvelopeResponse CreateSignatureEnvelope(String userId, String name, GD_SignatureEnvelopeSettings body, String templateGuid, Integer envelopeGuid, Integer documentGuid) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelope';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (name != null) {
			queryParams.put('name', GD_Utils.toPathValue(name));
		}
		if (templateGuid != null) {
			queryParams.put('templateGuid', GD_Utils.toPathValue(templateGuid));
		}
		if (envelopeGuid != null) {
			queryParams.put('envelopeGuid', GD_Utils.toPathValue(envelopeGuid));
		}
		if (documentGuid != null) {
			queryParams.put('documentGuid', GD_Utils.toPathValue(documentGuid));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureEnvelopeResponse.class);
	}

	/**
	 * Decline envelope
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param recipientId Recipient GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeclineEnvelope(String userId, String envelopeId, String recipientId) {
		if(userId == null || envelopeId == null || recipientId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/recipient/{recipientId}/decline';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'recipientId' + '}', GD_Utils.toPathValue(recipientId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Delegate envelope recipient
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param recipientId Recipient GUID (required).
	 * @param recipientEmail Delegated recipient email (required).
	 * @param recipientFirstName Delegated recipient first name (required).
	 * @param recipientLastName Delegated recipient last name (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DelegateEnvelopeRecipient(String userId, String envelopeId, String recipientId, String recipientEmail, String recipientFirstName, String recipientLastName) {
		if(userId == null || envelopeId == null || recipientId == null || recipientEmail == null || recipientFirstName == null || recipientLastName == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/recipient/{recipientId}/delegate';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'recipientId' + '}', GD_Utils.toPathValue(recipientId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (recipientEmail != null) {
			queryParams.put('email', GD_Utils.toPathValue(recipientEmail));
		}
		if (recipientFirstName != null) {
			queryParams.put('firstname', GD_Utils.toPathValue(recipientFirstName));
		}
		if (recipientLastName != null) {
			queryParams.put('lastname', GD_Utils.toPathValue(recipientLastName));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Delete signature envelope
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureEnvelope(String userId, String envelopeId) {
		if(userId == null || envelopeId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Add document in envelope
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param documentId Document GUID (required).
	 * @param order Document order (optional).
	 *
	 * @return GD_SignatureEnvelopeDocumentResponse instance
	 */
	public GD_SignatureEnvelopeDocumentResponse AddSignatureEnvelopeDocument(String userId, String envelopeId, String documentId, Integer order) {
		if(userId == null || envelopeId == null || documentId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/document/{documentId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (order != null) {
			queryParams.put('order', GD_Utils.toPathValue(order));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeDocumentResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_SignatureEnvelopeDocumentResponse.class);
	}

	/**
	 * Get signed envelope document
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param documentId Document GUID (required).
	 *
	 * @return Blob instance
	 */
	public Blob GetSignedEnvelopeDocument(String userId, String envelopeId, String documentId) {
		if(userId == null || envelopeId == null || documentId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/document/{documentId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (Blob) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, Blob.class);
	}

	/**
	 * Delete document from envelope
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param documentId Document GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureEnvelopeDocument(String userId, String envelopeId, String documentId) {
		if(userId == null || envelopeId == null || documentId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/documents/{documentId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Get documents in envelope
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 *
	 * @return GD_SignatureEnvelopeDocumentsResponse instance
	 */
	public GD_SignatureEnvelopeDocumentsResponse GetSignatureEnvelopeDocuments(String userId, String envelopeId) {
		if(userId == null || envelopeId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/documents';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeDocumentsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureEnvelopeDocumentsResponse.class);
	}

	/**
	 * Get signed envelope documents
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 *
	 * @return Blob instance
	 */
	public Blob GetSignedEnvelopeDocuments(String userId, String envelopeId) {
		if(userId == null || envelopeId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/documents/get';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (Blob) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, Blob.class);
	}

	/**
	 * Add signature field for document in envelope
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param documentId Document GUID (required).
	 * @param recipientId Recipient GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param body Settings of the field (optional).
	 *
	 * @return GD_SignatureEnvelopeFieldsResponse instance
	 */
	public GD_SignatureEnvelopeFieldsResponse AddSignatureEnvelopeField(String userId, String envelopeId, String documentId, String recipientId, String fieldId, GD_SignatureEnvelopeFieldSettings body) {
		if(userId == null || envelopeId == null || documentId == null || recipientId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/documents/{documentId}/recipient/{recipientId}/field/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		resourcePath = resourcePath.replace('{' + 'recipientId' + '}', GD_Utils.toPathValue(recipientId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeFieldsResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureEnvelopeFieldsResponse.class);
	}

	/**
	 * Assign signature envelope field
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param documentId Document GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param body Settings of the field (optional).
	 *
	 * @return GD_SignatureEnvelopeFieldResponse instance
	 */
	public GD_SignatureEnvelopeFieldResponse AssignSignatureEnvelopeField(String userId, String envelopeId, String documentId, String fieldId, GD_SignatureEnvelopeAssignFieldSettings body) {
		if(userId == null || envelopeId == null || documentId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/documents/{documentId}/field/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeFieldResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureEnvelopeFieldResponse.class);
	}

	/**
	 * Fill envelope field
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param documentId Document GUID (required).
	 * @param recipientId Recipient GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param signatureId SignatureId GUID (optional).
	 * @param body Data to be placed in field (optional).
	 *
	 * @return GD_SignatureEnvelopeFieldResponse instance
	 */
	public GD_SignatureEnvelopeFieldResponse FillEnvelopeField(String userId, String envelopeId, String documentId, String recipientId, String fieldId, String signatureId, Blob body) {
		if(userId == null || envelopeId == null || documentId == null || recipientId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/documents/{documentId}/recipient/{recipientId}/field/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		resourcePath = resourcePath.replace('{' + 'recipientId' + '}', GD_Utils.toPathValue(recipientId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (signatureId != null) {
			queryParams.put('signatureId', GD_Utils.toPathValue(signatureId));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeFieldResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SignatureEnvelopeFieldResponse.class);
	}

	/**
	 * Modify signature envelope field location
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param documentId Document GUID (required).
	 * @param recipientId Recipient GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param locationId Field location GUID (required).
	 * @param body Settings of the field location (optional).
	 *
	 * @return GD_SignatureEnvelopeFieldResponse instance
	 */
	public GD_SignatureEnvelopeFieldResponse ModifySignatureEnvelopeFieldLocation(String userId, String envelopeId, String documentId, String recipientId, String fieldId, String locationId, GD_SignatureEnvelopeFieldLocationSetting body) {
		if(userId == null || envelopeId == null || documentId == null || recipientId == null || fieldId == null || locationId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/documents/{documentId}/recipient/{recipientId}/fields/{fieldId}/locations/{locationId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		resourcePath = resourcePath.replace('{' + 'recipientId' + '}', GD_Utils.toPathValue(recipientId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		resourcePath = resourcePath.replace('{' + 'locationId' + '}', GD_Utils.toPathValue(locationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeFieldResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SignatureEnvelopeFieldResponse.class);
	}

	/**
	 * Remove signature envelope field location
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param locationId Field location GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureEnvelopeFieldLocation(String userId, String envelopeId, String fieldId, String locationId) {
		if(userId == null || envelopeId == null || fieldId == null || locationId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/fields/{fieldId}/locations/{locationId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		resourcePath = resourcePath.replace('{' + 'locationId' + '}', GD_Utils.toPathValue(locationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Modify signature envelope field
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param documentId Document GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param body Settings of the field (optional).
	 *
	 * @return GD_SignatureEnvelopeFieldResponse instance
	 */
	public GD_SignatureEnvelopeFieldResponse ModifySignatureEnvelopeField(String userId, String envelopeId, String documentId, String fieldId, GD_SignatureEnvelopeFieldSettings body) {
		if(userId == null || envelopeId == null || documentId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/documents/{documentId}/field/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeFieldResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SignatureEnvelopeFieldResponse.class);
	}

	/**
	 * Delete signature envelope field
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param fieldId Field GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureEnvelopeField(String userId, String envelopeId, String fieldId) {
		if(userId == null || envelopeId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/fields/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Get signature field for document in envelope per recipient
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param documentId Document GUID (optional).
	 * @param recipientId Recipient GUID (optional).
	 *
	 * @return GD_SignatureEnvelopeFieldsResponse instance
	 */
	public GD_SignatureEnvelopeFieldsResponse GetSignatureEnvelopeFields(String userId, String envelopeId, String documentId, String recipientId) {
		if(userId == null || envelopeId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/fields';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (documentId != null) {
			queryParams.put('document', GD_Utils.toPathValue(documentId));
		}
		if (recipientId != null) {
			queryParams.put('recipient', GD_Utils.toPathValue(recipientId));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeFieldsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureEnvelopeFieldsResponse.class);
	}

	/**
	 * Get signature envelope
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 *
	 * @return GD_SignatureEnvelopeResponse instance
	 */
	public GD_SignatureEnvelopeResponse GetSignatureEnvelope(String userId, String envelopeId) {
		if(userId == null || envelopeId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureEnvelopeResponse.class);
	}

	/**
	 * Modify signature envelope
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param body Settings of the envelope (optional).
	 *
	 * @return GD_SignatureEnvelopeResponse instance
	 */
	public GD_SignatureEnvelopeResponse ModifySignatureEnvelope(String userId, String envelopeId, GD_SignatureEnvelopeSettings body) {
		if(userId == null || envelopeId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureEnvelopeResponse.class);
	}

	/**
	 * Add signature envelope recipient
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param recipientEmail Recipient email (required).
	 * @param recipientFirstName Recipient first name (required).
	 * @param recipientLastName Recipient last name (required).
	 * @param order Recipient order (optional).
	 * @param role Recipient role id (required).
	 *
	 * @return GD_SignatureEnvelopeRecipientResponse instance
	 */
	public GD_SignatureEnvelopeRecipientResponse AddSignatureEnvelopeRecipient(String userId, String envelopeId, String recipientEmail, String recipientFirstName, String recipientLastName, Integer order, String role) {
		if(userId == null || envelopeId == null || recipientEmail == null || recipientFirstName == null || recipientLastName == null || role == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/recipient';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (recipientEmail != null) {
			queryParams.put('email', GD_Utils.toPathValue(recipientEmail));
		}
		if (recipientFirstName != null) {
			queryParams.put('firstname', GD_Utils.toPathValue(recipientFirstName));
		}
		if (recipientLastName != null) {
			queryParams.put('lastname', GD_Utils.toPathValue(recipientLastName));
		}
		if (order != null) {
			queryParams.put('order', GD_Utils.toPathValue(order));
		}
		if (role != null) {
			queryParams.put('role', GD_Utils.toPathValue(role));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeRecipientResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_SignatureEnvelopeRecipientResponse.class);
	}

	/**
	 * Modify signature envelope recipient
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param recipientId Recipient GUID (required).
	 * @param recipientEmail Recipient email (required).
	 * @param recipientFirstName Recipient first name (required).
	 * @param recipientLastName Recipient last name (required).
	 * @param order Recipient order (optional).
	 * @param role Recipient role id (required).
	 *
	 * @return GD_SignatureEnvelopeRecipientResponse instance
	 */
	public GD_SignatureEnvelopeRecipientResponse ModifySignatureEnvelopeRecipient(String userId, String envelopeId, String recipientId, String recipientEmail, String recipientFirstName, String recipientLastName, Integer order, String role) {
		if(userId == null || envelopeId == null || recipientId == null || recipientEmail == null || recipientFirstName == null || recipientLastName == null || role == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/recipient/{recipientId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'recipientId' + '}', GD_Utils.toPathValue(recipientId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (recipientEmail != null) {
			queryParams.put('email', GD_Utils.toPathValue(recipientEmail));
		}
		if (recipientFirstName != null) {
			queryParams.put('firstname', GD_Utils.toPathValue(recipientFirstName));
		}
		if (recipientLastName != null) {
			queryParams.put('lastname', GD_Utils.toPathValue(recipientLastName));
		}
		if (order != null) {
			queryParams.put('order', GD_Utils.toPathValue(order));
		}
		if (role != null) {
			queryParams.put('role', GD_Utils.toPathValue(role));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeRecipientResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_SignatureEnvelopeRecipientResponse.class);
	}

	/**
	 * Delete signature envelope recipient
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param recipientId Recipient GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureEnvelopeRecipient(String userId, String envelopeId, String recipientId) {
		if(userId == null || envelopeId == null || recipientId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/recipients/{recipientId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'recipientId' + '}', GD_Utils.toPathValue(recipientId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Get signature envelope recipients
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 *
	 * @return GD_SignatureEnvelopeRecipientsResponse instance
	 */
	public GD_SignatureEnvelopeRecipientsResponse GetSignatureEnvelopeRecipients(String userId, String envelopeId) {
		if(userId == null || envelopeId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/recipients';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeRecipientsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureEnvelopeRecipientsResponse.class);
	}

	/**
	 * Rename signature envelope
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param name New envelope name (required).
	 *
	 * @return GD_SignatureEnvelopeResponse instance
	 */
	public GD_SignatureEnvelopeResponse RenameSignatureEnvelope(String userId, String envelopeId, String name) {
		if(userId == null || envelopeId == null || name == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (name != null) {
			queryParams.put('name', GD_Utils.toPathValue(name));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_SignatureEnvelopeResponse.class);
	}

	/**
	 * Restart expired envelope
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse RestartExpiredSignatureEnvelope(String userId, String envelopeId) {
		if(userId == null || envelopeId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/restart';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Send envelope
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param body Webhook Callback Url (required).
	 *
	 * @return GD_SignatureEnvelopeSendResponse instance
	 */
	public GD_SignatureEnvelopeSendResponse SignatureEnvelopeSend(String userId, String envelopeId, Blob body) {
		if(userId == null || envelopeId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/send';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeSendResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SignatureEnvelopeSendResponse.class);
	}

	/**
	 * Sign envelope
	 *
	 * @param userId User GUID (required).
	 * @param envelopeId Envelope GUID (required).
	 * @param recipientId Recipient GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse SignEnvelope(String userId, String envelopeId, String recipientId) {
		if(userId == null || envelopeId == null || recipientId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/{envelopeId}/recipient/{recipientId}/sign';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'envelopeId' + '}', GD_Utils.toPathValue(envelopeId));
		resourcePath = resourcePath.replace('{' + 'recipientId' + '}', GD_Utils.toPathValue(recipientId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Get signature envelopes
	 *
	 * @param userId User GUID (required).
	 * @param statusId Filter envelopes by statusId (optional).
	 * @param page Show records for page number (optional).
	 * @param m_date Filter envelopes by date (optional).
	 * @param name Filter envelopes by name (optional).
	 * @param recipient Filter envelopes by recipient email (optional).
	 * @param document Filter envelopes by original document md5 checksum (optional).
	 * @param records Show records count (optional).
	 *
	 * @return GD_SignatureEnvelopesResponse instance
	 */
	public GD_SignatureEnvelopesResponse GetSignatureEnvelopes(String userId, String statusId, Integer page, String m_date, String name, String recipient, String document, Integer records) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (statusId != null) {
			queryParams.put('statusId', GD_Utils.toPathValue(statusId));
		}
		if (page != null) {
			queryParams.put('page', GD_Utils.toPathValue(page));
		}
		if (m_date != null) {
			queryParams.put('date', GD_Utils.toPathValue(m_date));
		}
		if (name != null) {
			queryParams.put('name', GD_Utils.toPathValue(name));
		}
		if (recipient != null) {
			queryParams.put('recipient', GD_Utils.toPathValue(recipient));
		}
		if (document != null) {
			queryParams.put('document', GD_Utils.toPathValue(document));
		}
		if (records != null) {
			queryParams.put('records', GD_Utils.toPathValue(records));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureEnvelopesResponse.class);
	}

	/**
	 * Get envelope recources
	 *
	 * @param userId User GUID (required).
	 * @param statusIds Envelope status identifier - comma separated list (optional).
	 *
	 * @return GD_SignatureEnvelopeResourcesResponse instance
	 */
	public GD_SignatureEnvelopeResourcesResponse GetSignatureEnvelopeResources(String userId, String statusIds) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/resources';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (statusIds != null) {
			queryParams.put('statusIds', GD_Utils.toPathValue(statusIds));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopeResourcesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureEnvelopeResourcesResponse.class);
	}

	/**
	 * Get signature envelopes where the user is recipient
	 *
	 * @param userId User GUID (required).
	 * @param statusId Filter envelopes by statusId (optional).
	 * @param page Show records for page number (optional).
	 * @param records Show records count (optional).
	 *
	 * @return GD_SignatureEnvelopesResponse instance
	 */
	public GD_SignatureEnvelopesResponse GetRecipientSignatureEnvelopes(String userId, String statusId, Integer page, Integer records) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/envelopes/recipient';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (statusId != null) {
			queryParams.put('statusId', GD_Utils.toPathValue(statusId));
		}
		if (page != null) {
			queryParams.put('page', GD_Utils.toPathValue(page));
		}
		if (records != null) {
			queryParams.put('records', GD_Utils.toPathValue(records));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureEnvelopesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureEnvelopesResponse.class);
	}

	/**
	 * Archive signature form
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse ArchiveSignatureForm(String userId, String formId) {
		if(userId == null || formId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/archive';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Complete signature form
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse CompleteSignatureForm(String userId, String formId) {
		if(userId == null || formId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/complete';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Create signature form
	 *
	 * @param userId User GUID (required).
	 * @param name Form name (optional).
	 * @param templateId A templateGuid of the template which will be used to created the new form (optional).
	 * @param assemblyId A guid of the assembly which will be used to created the new form (optional).
	 * @param body Settings of the new form (optional).
	 *
	 * @return GD_SignatureFormResponse instance
	 */
	public GD_SignatureFormResponse CreateSignatureForm(String userId, String name, String templateId, Integer assemblyId, GD_SignatureFormSettings body) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/form';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (name != null) {
			queryParams.put('name', GD_Utils.toPathValue(name));
		}
		if (templateId != null) {
			queryParams.put('templateId', GD_Utils.toPathValue(templateId));
		}
		if (assemblyId != null) {
			queryParams.put('assemblyId', GD_Utils.toPathValue(assemblyId));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFormResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureFormResponse.class);
	}

	/**
	 * Delete signature form
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureForm(String userId, String formId) {
		if(userId == null || formId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Add document in form
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 * @param documentId Document GUID (required).
	 * @param order Document order (optional).
	 *
	 * @return GD_SignatureFormDocumentResponse instance
	 */
	public GD_SignatureFormDocumentResponse AddSignatureFormDocument(String userId, String formId, String documentId, Integer order) {
		if(userId == null || formId == null || documentId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/document/{documentId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (order != null) {
			queryParams.put('order', GD_Utils.toPathValue(order));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFormDocumentResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_SignatureFormDocumentResponse.class);
	}

	/**
	 * Delete document from form
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 * @param documentId Document GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureFormDocument(String userId, String formId, String documentId) {
		if(userId == null || formId == null || documentId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/documents/{documentId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Get documents in form
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 *
	 * @return GD_SignatureFormDocumentsResponse instance
	 */
	public GD_SignatureFormDocumentsResponse GetSignatureFormDocuments(String userId, String formId) {
		if(userId == null || formId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/documents';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFormDocumentsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureFormDocumentsResponse.class);
	}

	/**
	 * Add signature field for document in form
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 * @param documentId Document GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param body Settings of the field (optional).
	 *
	 * @return GD_SignatureFormFieldResponse instance
	 */
	public GD_SignatureFormFieldResponse AddSignatureFormField(String userId, String formId, String documentId, String fieldId, GD_SignatureFormFieldSettings body) {
		if(userId == null || formId == null || documentId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/documents/{documentId}/field/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFormFieldResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureFormFieldResponse.class);
	}

	/**
	 * Modify signature form field location
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 * @param documentId Document GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param locationId Field location GUID (required).
	 * @param body Settings of the field location (optional).
	 *
	 * @return GD_SignatureFormFieldResponse instance
	 */
	public GD_SignatureFormFieldResponse ModifySignatureFormFieldLocation(String userId, String formId, String documentId, String fieldId, String locationId, GD_SignatureFormFieldLocationSettings body) {
		if(userId == null || formId == null || documentId == null || fieldId == null || locationId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/documents/{documentId}/fields/{fieldId}/locations/{locationId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		resourcePath = resourcePath.replace('{' + 'locationId' + '}', GD_Utils.toPathValue(locationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFormFieldResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SignatureFormFieldResponse.class);
	}

	/**
	 * Remove signature form field location
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param locationId Field location GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureFormFieldLocation(String userId, String formId, String fieldId, String locationId) {
		if(userId == null || formId == null || fieldId == null || locationId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/fields/{fieldId}/locations/{locationId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		resourcePath = resourcePath.replace('{' + 'locationId' + '}', GD_Utils.toPathValue(locationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Modify signature form field
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 * @param documentId Document GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param body Settings of the field (optional).
	 *
	 * @return GD_SignatureFormFieldResponse instance
	 */
	public GD_SignatureFormFieldResponse ModifySignatureFormField(String userId, String formId, String documentId, String fieldId, GD_SignatureFormFieldSettings body) {
		if(userId == null || formId == null || documentId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/documents/{documentId}/field/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFormFieldResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SignatureFormFieldResponse.class);
	}

	/**
	 * Delete signature form field
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 * @param fieldId Field GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureFormField(String userId, String formId, String fieldId) {
		if(userId == null || formId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/fields/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Get form fields for document in form per participant
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 * @param documentId Document GUID (required).
	 *
	 * @return GD_SignatureFormFieldsResponse instance
	 */
	public GD_SignatureFormFieldsResponse GetSignatureFormFields(String userId, String formId, String documentId) {
		if(userId == null || formId == null || documentId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/documents/{documentId}/fields';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFormFieldsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureFormFieldsResponse.class);
	}

	/**
	 * Get signature form
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 *
	 * @return GD_SignatureFormResponse instance
	 */
	public GD_SignatureFormResponse GetSignatureForm(String userId, String formId) {
		if(userId == null || formId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFormResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureFormResponse.class);
	}

	/**
	 * Modify signature form
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 * @param body Settings of the form (optional).
	 *
	 * @return GD_SignatureFormResponse instance
	 */
	public GD_SignatureFormResponse ModifySignatureForm(String userId, String formId, GD_SignatureFormSettings body) {
		if(userId == null || formId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFormResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureFormResponse.class);
	}

	/**
	 * Publish signature form
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse PublishSignatureForm(String userId, String formId) {
		if(userId == null || formId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/publish';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Rename signature form
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 * @param name New form name (required).
	 *
	 * @return GD_SignatureFormResponse instance
	 */
	public GD_SignatureFormResponse RenameSignatureForm(String userId, String formId, String name) {
		if(userId == null || formId == null || name == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (name != null) {
			queryParams.put('new_name', GD_Utils.toPathValue(name));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFormResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_SignatureFormResponse.class);
	}

	/**
	 * Add signature form fields from template
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 * @param templateId Template GUID (required).
	 *
	 * @return GD_SignatureFormResponse instance
	 */
	public GD_SignatureFormResponse UpdateSignatureFormFromTemplate(String userId, String formId, String templateId) {
		if(userId == null || formId == null || templateId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/templates/{templateId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFormResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_SignatureFormResponse.class);
	}

	/**
	 * Get signature forms
	 *
	 * @param userId User GUID (required).
	 * @param statusId Filter forms by statusId (optional).
	 * @param page Show records for page number (optional).
	 * @param m_date Filter forms by date (optional).
	 * @param name Filter forms by name (optional).
	 * @param records Show records count (optional).
	 * @param documentId Filter forms by document GUID (optional).
	 *
	 * @return GD_SignatureFormsResponse instance
	 */
	public GD_SignatureFormsResponse GetSignatureForms(String userId, String statusId, Integer page, String m_date, String name, Integer records, String documentId) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (statusId != null) {
			queryParams.put('statusId', GD_Utils.toPathValue(statusId));
		}
		if (page != null) {
			queryParams.put('page', GD_Utils.toPathValue(page));
		}
		if (m_date != null) {
			queryParams.put('date', GD_Utils.toPathValue(m_date));
		}
		if (name != null) {
			queryParams.put('name', GD_Utils.toPathValue(name));
		}
		if (records != null) {
			queryParams.put('records', GD_Utils.toPathValue(records));
		}
		if (documentId != null) {
			queryParams.put('documentId', GD_Utils.toPathValue(documentId));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFormsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureFormsResponse.class);
	}

	/**
	 * Get form recources
	 *
	 * @param userId User GUID (required).
	 * @param statusIds Form status identifier - comma separated list (required).
	 *
	 * @return GD_SignatureFormResourcesResponse instance
	 */
	public GD_SignatureFormResourcesResponse GetSignatureFormResources(String userId, String statusIds) {
		if(userId == null || statusIds == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/resources';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (statusIds != null) {
			queryParams.put('statusIds', GD_Utils.toPathValue(statusIds));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFormResourcesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureFormResourcesResponse.class);
	}

	/**
	 * Get signed form documents
	 *
	 * @param userId User GUID (required).
	 * @param formId Form GUID (required).
	 *
	 * @return Blob instance
	 */
	public Blob GetSignedFormDocuments(String userId, String formId) {
		if(userId == null || formId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/forms/{formId}/documents/get';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'formId' + '}', GD_Utils.toPathValue(formId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (Blob) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, Blob.class);
	}

	/**
	 * Get user predefined lists
	 *
	 * @param userId User GUID (required).
	 *
	 * @return GD_SignaturePredefinedListsResponse instance
	 */
	public GD_SignaturePredefinedListsResponse GetSignaturePredefinedLists(String userId) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/lists';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignaturePredefinedListsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignaturePredefinedListsResponse.class);
	}

	/**
	 * Add predefined list
	 *
	 * @param userId User GUID (required).
	 * @param body List data (required).
	 *
	 * @return GD_SignaturePredefinedListResponse instance
	 */
	public GD_SignaturePredefinedListResponse AddPredefinedList(String userId, GD_SignaturePredefinedListSettings body) {
		if(userId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/list';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignaturePredefinedListResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignaturePredefinedListResponse.class);
	}

	/**
	 * Delete predefined list
	 *
	 * @param userId User GUID (required).
	 * @param listId List GUID (required).
	 *
	 * @return GD_SignaturePredefinedListResponse instance
	 */
	public GD_SignaturePredefinedListResponse DeletePredefinedList(String userId, String listId) {
		if(userId == null || listId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/lists/{listId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'listId' + '}', GD_Utils.toPathValue(listId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignaturePredefinedListResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignaturePredefinedListResponse.class);
	}

	/**
	 * Get signature roles
	 *
	 * @param userId User GUID (required).
	 * @param id Filter roles by id (optional).
	 *
	 * @return GD_SignatureRolesResponse instance
	 */
	public GD_SignatureRolesResponse GetRolesList(String userId, String id) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/roles';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (id != null) {
			queryParams.put('id', GD_Utils.toPathValue(id));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureRolesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureRolesResponse.class);
	}

	/**
	 * Create user signature
	 *
	 * @param userId User GUID (required).
	 * @param name Signature name (required).
	 * @param body Settings of the field (optional).
	 *
	 * @return GD_SignatureSignatureResponse instance
	 */
	public GD_SignatureSignatureResponse CreateSignature(String userId, String name, GD_SignatureSignatureSettings body) {
		if(userId == null || name == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/signature';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (name != null) {
			queryParams.put('name', GD_Utils.toPathValue(name));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureSignatureResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureSignatureResponse.class);
	}

	/**
	 * Delete user signature
	 *
	 * @param userId User GUID (required).
	 * @param signatureId Signature GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignature(String userId, String signatureId) {
		if(userId == null || signatureId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/signatures/{signatureId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'signatureId' + '}', GD_Utils.toPathValue(signatureId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Get user signatures
	 *
	 * @param userId User GUID (required).
	 * @param page Show records for page number (optional).
	 * @param name Filter by signature name (optional).
	 * @param records Show records count (optional).
	 *
	 * @return GD_SignatureSignaturesResponse instance
	 */
	public GD_SignatureSignaturesResponse GetSignatures(String userId, Integer page, String name, Integer records) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/signatures';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (page != null) {
			queryParams.put('page', GD_Utils.toPathValue(page));
		}
		if (name != null) {
			queryParams.put('name', GD_Utils.toPathValue(name));
		}
		if (records != null) {
			queryParams.put('records', GD_Utils.toPathValue(records));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureSignaturesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureSignaturesResponse.class);
	}

	/**
	 * Get templates
	 *
	 * @param userId User GUID (required).
	 * @param page Page number (optional).
	 * @param documentGuid Fitler templates by document originalMD5 (optional).
	 * @param recipientName Filter templates by recipient nickname (optional).
	 * @param name Filter templates by signatureTemplate name (optional).
	 * @param records Records count (optional).
	 *
	 * @return GD_SignatureTemplatesResponse instance
	 */
	public GD_SignatureTemplatesResponse GetSignatureTemplates(String userId, String page, String documentGuid, String recipientName, String name, String records) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (page != null) {
			queryParams.put('page', GD_Utils.toPathValue(page));
		}
		if (documentGuid != null) {
			queryParams.put('documentGuid', GD_Utils.toPathValue(documentGuid));
		}
		if (recipientName != null) {
			queryParams.put('recipientName', GD_Utils.toPathValue(recipientName));
		}
		if (name != null) {
			queryParams.put('name', GD_Utils.toPathValue(name));
		}
		if (records != null) {
			queryParams.put('records', GD_Utils.toPathValue(records));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplatesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureTemplatesResponse.class);
	}

	/**
	 * Get template
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 *
	 * @return GD_SignatureTemplateResponse instance
	 */
	public GD_SignatureTemplateResponse GetSignatureTemplate(String userId, String templateId) {
		if(userId == null || templateId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureTemplateResponse.class);
	}

	/**
	 * Create template
	 *
	 * @param userId User GUID (required).
	 * @param name Template name (optional).
	 * @param templateId Template GUID of the template that will be used to create the new template (optional).
	 * @param body Settings of the template (optional).
	 * @param envelopetId Envelope GUID of the envelope that will be used to create the new template (required).
	 *
	 * @return GD_SignatureTemplateResponse instance
	 */
	public GD_SignatureTemplateResponse CreateSignatureTemplate(String userId, String name, String templateId, GD_SignatureTemplateSettings body, String envelopetId) {
		if(userId == null || envelopetId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/template';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (name != null) {
			queryParams.put('name', GD_Utils.toPathValue(name));
		}
		if (templateId != null) {
			queryParams.put('templateId', GD_Utils.toPathValue(templateId));
		}
		if (envelopetId != null) {
			queryParams.put('envelopetId', GD_Utils.toPathValue(envelopetId));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureTemplateResponse.class);
	}

	/**
	 * Modify template
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param body Settings of the template (optional).
	 *
	 * @return GD_SignatureTemplateResponse instance
	 */
	public GD_SignatureTemplateResponse ModifySignatureTemplate(String userId, String templateId, GD_SignatureTemplateSettings body) {
		if(userId == null || templateId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureTemplateResponse.class);
	}

	/**
	 * Rename template
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param name New template name (required).
	 *
	 * @return GD_SignatureTemplateResponse instance
	 */
	public GD_SignatureTemplateResponse RenameSignatureTemplate(String userId, String templateId, String name) {
		if(userId == null || templateId == null || name == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (name != null) {
			queryParams.put('name', GD_Utils.toPathValue(name));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_SignatureTemplateResponse.class);
	}

	/**
	 * Delete template
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureTemplate(String userId, String templateId) {
		if(userId == null || templateId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Add recipient to the template
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param nickname Nickname of the recipient (required).
	 * @param roleId Role GUID (required).
	 * @param order Display order of the recipient (optional).
	 *
	 * @return GD_SignatureTemplateResponse instance
	 */
	public GD_SignatureTemplateResponse AddSignatureTemplateRecipient(String userId, String templateId, String nickname, String roleId, String order) {
		if(userId == null || templateId == null || nickname == null || roleId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/recipient';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (nickname != null) {
			queryParams.put('nickname', GD_Utils.toPathValue(nickname));
		}
		if (roleId != null) {
			queryParams.put('role', GD_Utils.toPathValue(roleId));
		}
		if (order != null) {
			queryParams.put('order', GD_Utils.toPathValue(order));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_SignatureTemplateResponse.class);
	}

	/**
	 * Get template recipients
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 *
	 * @return GD_SignatureTemplateRecipientsResponse instance
	 */
	public GD_SignatureTemplateRecipientsResponse GetSignatureTemplateRecipients(String userId, String templateId) {
		if(userId == null || templateId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/recipients';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateRecipientsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureTemplateRecipientsResponse.class);
	}

	/**
	 * Remove recipient from template
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param recipientId Recipient GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureTemplateRecipient(String userId, String templateId, String recipientId) {
		if(userId == null || templateId == null || recipientId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/recipients/{recipientId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		resourcePath = resourcePath.replace('{' + 'recipientId' + '}', GD_Utils.toPathValue(recipientId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Update template recipient
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param recipientId Recipient GUID (required).
	 * @param nickname Nickname of the recipient (required).
	 * @param roleId Role GUID (required).
	 * @param order Display order of the recipient (optional).
	 *
	 * @return GD_SignatureTemplateResponse instance
	 */
	public GD_SignatureTemplateResponse ModifySignatureTemplateRecipient(String userId, String templateId, String recipientId, String nickname, String roleId, String order) {
		if(userId == null || templateId == null || recipientId == null || nickname == null || roleId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/recipient/{recipientId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		resourcePath = resourcePath.replace('{' + 'recipientId' + '}', GD_Utils.toPathValue(recipientId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (nickname != null) {
			queryParams.put('nickname', GD_Utils.toPathValue(nickname));
		}
		if (roleId != null) {
			queryParams.put('role', GD_Utils.toPathValue(roleId));
		}
		if (order != null) {
			queryParams.put('order', GD_Utils.toPathValue(order));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, null, headerParams, GD_SignatureTemplateResponse.class);
	}

	/**
	 * Add document to template
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param documentId Document GUID (required).
	 * @param order Display order of the document (optional).
	 *
	 * @return GD_SignatureTemplateDocumentResponse instance
	 */
	public GD_SignatureTemplateDocumentResponse AddSignatureTemplateDocument(String userId, String templateId, String documentId, String order) {
		if(userId == null || templateId == null || documentId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/document/{documentId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (order != null) {
			queryParams.put('order', GD_Utils.toPathValue(order));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateDocumentResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_SignatureTemplateDocumentResponse.class);
	}

	/**
	 * Get documents in template
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 *
	 * @return GD_SignatureTemplateDocumentsResponse instance
	 */
	public GD_SignatureTemplateDocumentsResponse GetSignatureTemplateDocuments(String userId, String templateId) {
		if(userId == null || templateId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/documents';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateDocumentsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureTemplateDocumentsResponse.class);
	}

	/**
	 * Remove document from template
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param documentId Document GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureTemplateDocument(String userId, String templateId, String documentId) {
		if(userId == null || templateId == null || documentId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/documents/{documentId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Add signature template field
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param documentId Document GUID (required).
	 * @param recipientId Recipient GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param body Settings of the field (optional).
	 *
	 * @return GD_SignatureTemplateFieldResponse instance
	 */
	public GD_SignatureTemplateFieldResponse AddSignatureTemplateField(String userId, String templateId, String documentId, String recipientId, String fieldId, GD_SignatureTemplateFieldSettings body) {
		if(userId == null || templateId == null || documentId == null || recipientId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/documents/{documentId}/recipient/{recipientId}/field/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		resourcePath = resourcePath.replace('{' + 'recipientId' + '}', GD_Utils.toPathValue(recipientId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateFieldResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureTemplateFieldResponse.class);
	}

	/**
	 * Assign signature template field
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param documentId Document GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param body Settings of the field (optional).
	 *
	 * @return GD_SignatureTemplateFieldResponse instance
	 */
	public GD_SignatureTemplateFieldResponse AssignSignatureTemplateField(String userId, String templateId, String documentId, String fieldId, GD_SignatureTemplateAssignFieldSettings body) {
		if(userId == null || templateId == null || documentId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/documents/{documentId}/field/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateFieldResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_SignatureTemplateFieldResponse.class);
	}

	/**
	 * Modify signature template field
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param documentId Document GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param body Settings of the field (optional).
	 *
	 * @return GD_SignatureTemplateFieldResponse instance
	 */
	public GD_SignatureTemplateFieldResponse ModifySignatureTemplateField(String userId, String templateId, String documentId, String fieldId, GD_SignatureTemplateFieldSettings body) {
		if(userId == null || templateId == null || documentId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/documents/{documentId}/field/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateFieldResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SignatureTemplateFieldResponse.class);
	}

	/**
	 * Delete signature template field location
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param locationId Field location GUID (required).
	 *
	 * @return GD_SignatureStatusResponse instance
	 */
	public GD_SignatureStatusResponse DeleteSignatureTemplateFieldLocation(String userId, String templateId, String fieldId, String locationId) {
		if(userId == null || templateId == null || fieldId == null || locationId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/fields/{fieldId}/locations/{locationId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		resourcePath = resourcePath.replace('{' + 'locationId' + '}', GD_Utils.toPathValue(locationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureStatusResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureStatusResponse.class);
	}

	/**
	 * Modify signature template field location
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param documentId Document GUID (required).
	 * @param recipientId Recipient GUID (required).
	 * @param fieldId Field GUID (required).
	 * @param locationId Field location GUID (required).
	 * @param body Settings of the field location (optional).
	 *
	 * @return GD_SignatureTemplateFieldResponse instance
	 */
	public GD_SignatureTemplateFieldResponse ModifySignatureTemplateFieldLocation(String userId, String templateId, String documentId, String recipientId, String fieldId, String locationId, GD_SignatureTemplateFieldLocationSetting body) {
		if(userId == null || templateId == null || documentId == null || recipientId == null || fieldId == null || locationId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/documents/{documentId}/recipient/{recipientId}/fields/{fieldId}/locations/{locationId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		resourcePath = resourcePath.replace('{' + 'documentId' + '}', GD_Utils.toPathValue(documentId));
		resourcePath = resourcePath.replace('{' + 'recipientId' + '}', GD_Utils.toPathValue(recipientId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		resourcePath = resourcePath.replace('{' + 'locationId' + '}', GD_Utils.toPathValue(locationId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateFieldResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SignatureTemplateFieldResponse.class);
	}

	/**
	 * Get template fields
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param documentId Document GUID (required).
	 * @param recipientId Recipient GUID (required).
	 *
	 * @return GD_SignatureTemplateFieldsResponse instance
	 */
	public GD_SignatureTemplateFieldsResponse GetSignatureTemplateFields(String userId, String templateId, String documentId, String recipientId) {
		if(userId == null || templateId == null || documentId == null || recipientId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/fields';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (documentId != null) {
			queryParams.put('document', GD_Utils.toPathValue(documentId));
		}
		if (recipientId != null) {
			queryParams.put('recipient', GD_Utils.toPathValue(recipientId));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateFieldsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureTemplateFieldsResponse.class);
	}

	/**
	 * Delete signature template field
	 *
	 * @param userId User GUID (required).
	 * @param templateId Template GUID (required).
	 * @param fieldId Field GUID (required).
	 *
	 * @return GD_SignatureTemplateResponse instance
	 */
	public GD_SignatureTemplateResponse DeleteSignatureTemplateField(String userId, String templateId, String fieldId) {
		if(userId == null || templateId == null || fieldId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/{templateId}/fields/{fieldId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'templateId' + '}', GD_Utils.toPathValue(templateId));
		resourcePath = resourcePath.replace('{' + 'fieldId' + '}', GD_Utils.toPathValue(fieldId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_SignatureTemplateResponse.class);
	}

	/**
	 * Get template recources
	 *
	 * @param userId User GUID (required).
	 *
	 * @return GD_SignatureTemplateResourcesResponse instance
	 */
	public GD_SignatureTemplateResourcesResponse GetSignatureTemplateResources(String userId) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/templates/resources';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureTemplateResourcesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureTemplateResourcesResponse.class);
	}

	/**
	 * Get signature fields
	 *
	 * @param userId User GUID (required).
	 * @param fieldId Filter fields by id (optional).
	 *
	 * @return GD_SignatureFieldsResponse instance
	 */
	public GD_SignatureFieldsResponse GetFieldsList(String userId, String fieldId) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/signature/{userId}/fields';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (fieldId != null) {
			queryParams.put('id', GD_Utils.toPathValue(fieldId));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SignatureFieldsResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_SignatureFieldsResponse.class);
	}

	
}

