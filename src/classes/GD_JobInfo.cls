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
public with sharing class GD_JobInfo {

	public Double id { get; set; }
	public List<String> out_formats { get; set; }
	public String actions { get; set; }
	public String status { get; set; }
	public Boolean email_results { get; set; }
	public Double priority { get; set; }
	public Boolean url_only { get; set; }
	public GD_JobDocumentsEntry documents { get; set; }
	public Long requested_time { get; set; }
	public Long scheduled_time { get; set; }
	public String guid { get; set; }
	public String name { get; set; }
	public String callback_url { get; set; }
	

}

