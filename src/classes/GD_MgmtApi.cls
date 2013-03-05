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

public with sharing class GD_MgmtApi {
	
	public GD_ApiClient apiClient { get; set; } 
	public String basePath { get; set; } 
	
	public GD_MgmtApi(GD_ApiClient apiClient){
		this(apiClient, 'https://dev-api.groupdocs.com/v2.0');
	}
	
	public GD_MgmtApi(GD_ApiClient apiClient, String basePath){
		this.apiClient = apiClient;
		this.basePath = basePath;
	}
	
	/**
	 * Get user profile
	 *
	 * @param userId User GUID (required).
	 *
	 * @return GD_UserInfoResponse instance
	 */
	public GD_UserInfoResponse GetUserProfile(String userId) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{userId}/profile';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UserInfoResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_UserInfoResponse.class);
	}

	/**
	 * Update user profile
	 *
	 * @param userId User GUID (required).
	 * @param body Info (required).
	 *
	 * @return GD_UpdateUserResponse instance
	 */
	public GD_UpdateUserResponse UpdateUserProfile(String userId, GD_UserInfo body) {
		if(userId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{userId}/profile';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UpdateUserResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_UpdateUserResponse.class);
	}

	/**
	 * Change user password
	 *
	 * @param userId User GUID (required).
	 * @param body Password (required).
	 *
	 * @return GD_ChangePasswordResponse instance
	 */
	public GD_ChangePasswordResponse ChangeUserPassword(String userId, GD_UserPasswordInfo body) {
		if(userId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{userId}/profile/password';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_ChangePasswordResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_ChangePasswordResponse.class);
	}

	/**
	 * Get user profile by reset token
	 *
	 * @param callerId Caller GUID (required).
	 * @param token Token (required).
	 *
	 * @return GD_UserInfoResponse instance
	 */
	public GD_UserInfoResponse GetUserProfileByResetToken(String callerId, String token) {
		if(callerId == null || token == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{callerId}/reset-tokens';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (token != null) {
			queryParams.put('token', GD_Utils.toPathValue(token));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UserInfoResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_UserInfoResponse.class);
	}

	/**
	 * Get user profile by verif token
	 *
	 * @param callerId Caller GUID (required).
	 * @param token Token (required).
	 *
	 * @return GD_UserInfoResponse instance
	 */
	public GD_UserInfoResponse GetUserProfileByVerifToken(String callerId, String token) {
		if(callerId == null || token == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{callerId}/verif-tokens';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (token != null) {
			queryParams.put('token', GD_Utils.toPathValue(token));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UserInfoResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_UserInfoResponse.class);
	}

	/**
	 * Get user profile by claimed token
	 *
	 * @param callerId Caller GUID (required).
	 * @param token Token (required).
	 *
	 * @return GD_UserInfoResponse instance
	 */
	public GD_UserInfoResponse GetUserProfileByClaimedToken(String callerId, String token) {
		if(callerId == null || token == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{callerId}/claimed-tokens';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (token != null) {
			queryParams.put('token', GD_Utils.toPathValue(token));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UserInfoResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_UserInfoResponse.class);
	}

	/**
	 * Get alien user profile
	 *
	 * @param callerId Caller GUID (required).
	 * @param userId User GUID (required).
	 *
	 * @return GD_UserInfoResponse instance
	 */
	public GD_UserInfoResponse GetAlienUserProfile(String callerId, String userId) {
		if(callerId == null || userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{callerId}/users/{userId}/profile';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UserInfoResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_UserInfoResponse.class);
	}

	/**
	 * Update alien user profile
	 *
	 * @param callerId Caller GUID (required).
	 * @param userId User GUID (required).
	 * @param body Info (required).
	 *
	 * @return GD_UpdateUserResponse instance
	 */
	public GD_UpdateUserResponse UpdateAlienUserProfile(String callerId, String userId, GD_UserInfo body) {
		if(callerId == null || userId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{callerId}/users/{userId}/profile';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UpdateUserResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_UpdateUserResponse.class);
	}

	/**
	 * Create user
	 *
	 * @param callerId Caller GUID (required).
	 * @param body Payload (required).
	 *
	 * @return GD_CreateUserResponse instance
	 */
	public GD_CreateUserResponse CreateUser(String callerId, GD_UserInfo body) {
		if(callerId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{callerId}/users';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_CreateUserResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_CreateUserResponse.class);
	}

	/**
	 * Create user login
	 *
	 * @param callerId Caller GUID (required).
	 * @param userId User GUID (required).
	 * @param password Password (required).
	 *
	 * @return GD_UserInfoResponse instance
	 */
	public GD_UserInfoResponse CreateUserLogin(String callerId, String userId, String password) {
		if(callerId == null || userId == null || password == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{callerId}/users/{userId}/logins';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		if (password != null) {
			queryParams.put('password', GD_Utils.toPathValue(password));
		}
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UserInfoResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, null, headerParams, GD_UserInfoResponse.class);
	}

	/**
	 * Change alien user password
	 *
	 * @param callerId Caller GUID (required).
	 * @param userId User GUID (required).
	 * @param body Password (required).
	 *
	 * @return GD_ChangePasswordResponse instance
	 */
	public GD_ChangePasswordResponse ChangeAlienUserPassword(String callerId, String userId, GD_UserPasswordInfo body) {
		if(callerId == null || userId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{callerId}/users/{userId}/password';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_ChangePasswordResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_ChangePasswordResponse.class);
	}

	/**
	 * Reset user password
	 *
	 * @param callerId Caller GUID (required).
	 * @param userId User GUID (required).
	 *
	 * @return GD_ResetPasswordResponse instance
	 */
	public GD_ResetPasswordResponse ResetUserPassword(String callerId, String userId) {
		if(callerId == null || userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{callerId}/users/{userId}/password';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_ResetPasswordResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_ResetPasswordResponse.class);
	}

	/**
	 * Returns user's storage providers.
	 *
	 * @param userId User GUID (required).
	 *
	 * @return GD_GetStorageProvidersResponse instance
	 */
	public GD_GetStorageProvidersResponse GetStorageProviders(String userId) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{userId}/storages';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetStorageProvidersResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetStorageProvidersResponse.class);
	}

	/**
	 * Adds a new storage provider configuration.
	 *
	 * @param userId User GUID (required).
	 * @param provider Storage provider name (required).
	 * @param body Storage provider configuration details (required).
	 *
	 * @return GD_AddStorageProviderResponse instance
	 */
	public GD_AddStorageProviderResponse AddStorageProvider(String userId, String provider, GD_StorageProviderInfo body) {
		if(userId == null || provider == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{userId}/storages/{provider}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'provider' + '}', GD_Utils.toPathValue(provider));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_AddStorageProviderResponse) apiClient.callAPI(basePath, resourcePath, 'POST', queryParams, body, headerParams, GD_AddStorageProviderResponse.class);
	}

	/**
	 * Updates user's storage provider configuration.
	 *
	 * @param userId User GUID (required).
	 * @param provider Storage provider name (required).
	 * @param body Storage provider configuration details (required).
	 *
	 * @return GD_UpdateStorageProviderResponse instance
	 */
	public GD_UpdateStorageProviderResponse UpdateStorageProvider(String userId, String provider, GD_StorageProviderInfo body) {
		if(userId == null || provider == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{userId}/storages/{provider}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'provider' + '}', GD_Utils.toPathValue(provider));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UpdateStorageProviderResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_UpdateStorageProviderResponse.class);
	}

	/**
	 * Returns a list of user roles.
	 *
	 * @param userId User GUID (required).
	 *
	 * @return GD_GetRolesResponse instance
	 */
	public GD_GetRolesResponse GetRoles(String userId) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{userId}/roles';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetRolesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetRolesResponse.class);
	}

	/**
	 * Returns a list of user roles.
	 *
	 * @param callerId Caller GUID (required).
	 * @param userId User GUID (required).
	 *
	 * @return GD_GetRolesResponse instance
	 */
	public GD_GetRolesResponse GetUserRoles(String callerId, String userId) {
		if(callerId == null || userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{callerId}/users/{userId}/roles';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetRolesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetRolesResponse.class);
	}

	/**
	 * Set user roles.
	 *
	 * @param callerId Caller GUID (required).
	 * @param userId User GUID (required).
	 * @param body A list of user roles (required).
	 *
	 * @return GD_SetUserRolesResponse instance
	 */
	public GD_SetUserRolesResponse SetUserRoles(String callerId, String userId, List<GD_RoleInfo> body) {
		if(callerId == null || userId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{callerId}/users/{userId}/roles';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SetUserRolesResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SetUserRolesResponse.class);
	}

	/**
	 * Returns an account information.
	 *
	 * @param userId User GUID (required).
	 *
	 * @return GD_GetAccountResponse instance
	 */
	public GD_GetAccountResponse GetAccount(String userId) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{userId}/account';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetAccountResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetAccountResponse.class);
	}

	/**
	 * Closes user's account.
	 *
	 * @param userId User global unique identifier (required).
	 *
	 * @return GD_DeleteAccountResponse instance
	 */
	public GD_DeleteAccountResponse DeleteAccount(String userId) {
		if(userId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{userId}/account';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteAccountResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteAccountResponse.class);
	}

	/**
	 * Returns account user list.
	 *
	 * @param adminId Administrator GUID (required).
	 *
	 * @return GD_GetAccountUsersResponse instance
	 */
	public GD_GetAccountUsersResponse GetAccountUsers(String adminId) {
		if(adminId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{adminId}/account/users';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'adminId' + '}', GD_Utils.toPathValue(adminId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetAccountUsersResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetAccountUsersResponse.class);
	}

	/**
	 * Create or update account user.
	 *
	 * @param adminId Administrator GUID (required).
	 * @param userName User name (required).
	 * @param body User details (required).
	 *
	 * @return GD_UpdateAccountUserResponse instance
	 */
	public GD_UpdateAccountUserResponse UpdateAccountUser(String adminId, String userName, GD_UserInfo body) {
		if(adminId == null || userName == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{adminId}/account/users/{userName}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'adminId' + '}', GD_Utils.toPathValue(adminId));
		resourcePath = resourcePath.replace('{' + 'userName' + '}', GD_Utils.toPathValue(userName));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_UpdateAccountUserResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_UpdateAccountUserResponse.class);
	}

	/**
	 * Delete account user.
	 *
	 * @param adminId Administrator GUID (required).
	 * @param userName User name (required).
	 *
	 * @return GD_DeleteAccountUserResponse instance
	 */
	public GD_DeleteAccountUserResponse DeleteAccountUser(String adminId, String userName) {
		if(adminId == null || userName == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{adminId}/account/users/{userName}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'adminId' + '}', GD_Utils.toPathValue(adminId));
		resourcePath = resourcePath.replace('{' + 'userName' + '}', GD_Utils.toPathValue(userName));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_DeleteAccountUserResponse) apiClient.callAPI(basePath, resourcePath, 'DELETE', queryParams, null, headerParams, GD_DeleteAccountUserResponse.class);
	}

	/**
	 * Returns active user embed key.
	 *
	 * @param userId User GUID (required).
	 * @param area Application area where the key is (required).
	 *
	 * @return GD_GetUserEmbedKeyResponse instance
	 */
	public GD_GetUserEmbedKeyResponse GetUserEmbedKey(String userId, String area) {
		if(userId == null || area == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{userId}/embedkey/{area}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'area' + '}', GD_Utils.toPathValue(area));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetUserEmbedKeyResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetUserEmbedKeyResponse.class);
	}

	/**
	 * Returns embed key by GUID.
	 *
	 * @param callerId UserId invoked the service (required).
	 * @param guid Key GUID (required).
	 *
	 * @return GD_GetUserEmbedKeyResponse instance
	 */
	public GD_GetUserEmbedKeyResponse GetUserEmbedKeyFromGuid(String callerId, String guid) {
		if(callerId == null || guid == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{callerId}/embedkey/guid/{guid}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		resourcePath = resourcePath.replace('{' + 'guid' + '}', GD_Utils.toPathValue(guid));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetUserEmbedKeyResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetUserEmbedKeyResponse.class);
	}

	/**
	 * Generates new active user embed key.
	 *
	 * @param userId User GUID (required).
	 * @param area Application area where the key is (required).
	 *
	 * @return GD_GetUserEmbedKeyResponse instance
	 */
	public GD_GetUserEmbedKeyResponse GenerateKeyForUser(String userId, String area) {
		if(userId == null || area == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/mgmt/{userId}/embedkey/new/{area}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'area' + '}', GD_Utils.toPathValue(area));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetUserEmbedKeyResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetUserEmbedKeyResponse.class);
	}

	
}

