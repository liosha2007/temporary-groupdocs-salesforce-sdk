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

/**
 * 
 *
 */
public with sharing class GD_SubscriptionPlanInfo {

	public Integer productId { get; set; }
	public String name { get; set; }
	public Integer userCount { get; set; }
	public String firstNameOnCard { get; set; }
	public String lastNameOnCard { get; set; }
	public String m_number { get; set; }
	public DateTime expirationDate { get; set; }
	public String cvv { get; set; }
	public GD_BillingAddressInfo address { get; set; }
	

}

