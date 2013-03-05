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
public with sharing class GD_UserInfo {

	public String nickname { get; set; }
	public String firstname { get; set; }
	public String lastname { get; set; }
	public String pkey { get; set; }
	public String pswd_salt { get; set; }
	public String claimed_id { get; set; }
	public String token { get; set; }
	public Integer storage { get; set; }
	public String photo { get; set; }
	public Boolean active { get; set; }
	public Boolean trial { get; set; }
	public Boolean news_eanbled { get; set; }
	public Boolean alerts_eanbled { get; set; }
	public Boolean support_eanbled { get; set; }
	public String support_email { get; set; }
	public Boolean annotation_branded { get; set; }
	public Boolean viewer_branded { get; set; }
	public Long signedupOn { get; set; }
	public Long signedinOn { get; set; }
	public Integer signin_count { get; set; }
	public List<GD_RoleInfo> roles { get; set; }
	public Double id { get; set; }
	public String guid { get; set; }
	public String primary_email { get; set; }
	

}

