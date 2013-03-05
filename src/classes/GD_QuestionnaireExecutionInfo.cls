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
public with sharing class GD_QuestionnaireExecutionInfo {

	public String status { get; set; }
	public String guid { get; set; }
	public Double collector_id { get; set; }
	public String collector_guid { get; set; }
	public String questionnaire_name { get; set; }
	public GD_UserIdentity owner { get; set; }
	public GD_UserIdentity executive { get; set; }
	public GD_UserIdentity approver { get; set; }
	public Double datasource_id { get; set; }
	public Double id { get; set; }
	public Long modified { get; set; }
	public GD_DocumentDownloadInfo document { get; set; }
	

}

