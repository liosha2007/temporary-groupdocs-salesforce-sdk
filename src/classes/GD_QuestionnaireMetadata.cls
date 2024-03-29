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
public with sharing class GD_QuestionnaireMetadata {

	public Double id { get; set; }
	public String guid { get; set; }
	public String name { get; set; }
	public String descr { get; set; }
	public String status { get; set; }
	public Integer assigned_questions { get; set; }
	public Integer total_questions { get; set; }
	public Long modified { get; set; }
	public Long expires { get; set; }
	public String folder { get; set; }
	public String emails { get; set; }
	

}

