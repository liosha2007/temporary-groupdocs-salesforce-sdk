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

public with sharing class GD_SystemApi {
	
	public GD_ApiClient apiClient { get; set; } 
	public String basePath { get; set; } 
	
	public GD_SystemApi(GD_ApiClient apiClient){
		this(apiClient, 'https://api.groupdocs.com/v2.0');
	}
	
	public GD_SystemApi(GD_ApiClient apiClient, String basePath){
		this.apiClient = apiClient;
		this.basePath = basePath;
	}
	
	/**
	 * Get user plan
	 *
	 * @param callerId User GUID (required).
	 *
	 * @return GD_GetPlanResponse instance
	 */
	public GD_GetPlanResponse GetUserPlan(String callerId) {
		if(callerId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/system/{callerId}/plan';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetPlanResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetPlanResponse.class);
	}

	/**
	 * Get user plan
	 *
	 * @param callerId User GUID (required).
	 *
	 * @return GD_GetUserSubscriptionPlanResponse instance
	 */
	public GD_GetUserSubscriptionPlanResponse GetUserSubscriptionPlan(String callerId) {
		if(callerId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/system/{callerId}/subscription';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetUserSubscriptionPlanResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetUserSubscriptionPlanResponse.class);
	}

	/**
	 * Get subscription plans
	 *
	 * @param callerId User GUID (required).
	 * @param family Product Family Name (required).
	 *
	 * @return GD_GetSubscriptionPlansResponse instance
	 */
	public GD_GetSubscriptionPlansResponse GetSubscriptionPlans(String callerId, String family) {
		if(callerId == null || family == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/system/{callerId}/plans/{family}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		resourcePath = resourcePath.replace('{' + 'family' + '}', GD_Utils.toPathValue(family));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetSubscriptionPlansResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetSubscriptionPlansResponse.class);
	}

	/**
	 * Set subscription plan user plan
	 *
	 * @param userId User GUID (required).
	 * @param productId Product ID (required).
	 * @param body Subscription Plan (required).
	 *
	 * @return GD_SetUserSubscriptionPlanResponse instance
	 */
	public GD_SetUserSubscriptionPlanResponse SetSubscriptionPlan(String userId, String productId, GD_SubscriptionPlanInfo body) {
		if(userId == null || productId == null || body == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/system/{userId}/subscriptions/{productId}';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'userId' + '}', GD_Utils.toPathValue(userId));
		resourcePath = resourcePath.replace('{' + 'productId' + '}', GD_Utils.toPathValue(productId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_SetUserSubscriptionPlanResponse) apiClient.callAPI(basePath, resourcePath, 'PUT', queryParams, body, headerParams, GD_SetUserSubscriptionPlanResponse.class);
	}

	/**
	 * Get countries
	 *
	 * @param callerId User GUID (required).
	 *
	 * @return GD_GetCountriesResponse instance
	 */
	public GD_GetCountriesResponse GetCountries(String callerId) {
		if(callerId == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/system/{callerId}/countries';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetCountriesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetCountriesResponse.class);
	}

	/**
	 * Get states
	 *
	 * @param callerId User GUID (required).
	 * @param countryName Country Name (required).
	 *
	 * @return GD_GetStatesResponse instance
	 */
	public GD_GetStatesResponse GetStates(String callerId, String countryName) {
		if(callerId == null || countryName == null ) {
			throw new GD_ApiException('missing required params');
		}
		String resourcePath = '/system/{callerId}/countries/{countryName}/states';

		// replace path parameters
		resourcePath = resourcePath.replace('{' + 'callerId' + '}', GD_Utils.toPathValue(callerId));
		resourcePath = resourcePath.replace('{' + 'countryName' + '}', GD_Utils.toPathValue(countryName));
		// add query parameters
		Map<String, String> queryParams = new Map<String, String>();
		// add header parameters
		Map<String, String> headerParams = new Map<String, String>();
		// make the API Call
		return (GD_GetStatesResponse) apiClient.callAPI(basePath, resourcePath, 'GET', queryParams, null, headerParams, GD_GetStatesResponse.class);
	}

	
}

