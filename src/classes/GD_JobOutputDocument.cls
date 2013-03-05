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
public with sharing class GD_JobOutputDocument {

	public String error { get; set; }
	public String name { get; set; }
	public Integer version { get; set; }
	public Long size { get; set; }
	public String m_type { get; set; }
	public String type_str { get; set; }
	public String file_type_str { get; set; }
	public String document_path { get; set; }
	public String access { get; set; }
	public String url { get; set; }
	public String file_type { get; set; }
	public Double id { get; set; }
	public String guid { get; set; }
	

}

