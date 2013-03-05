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
public with sharing class GD_FileSystemDocument {

	public String url { get; set; }
	public Integer version { get; set; }
	public String m_type { get; set; }
	public String file_type { get; set; }
	public Long size { get; set; }
	public String thumbnail { get; set; }
	public List<String> supported_types { get; set; }
	public Double id { get; set; }
	public String guid { get; set; }
	public String name { get; set; }
	public String access { get; set; }
	public GD_UserInfo owner { get; set; }
	public List<GD_UserInfo> sharers { get; set; }
	public Boolean dir { get; set; }
	public Long modified_on { get; set; }
	public Long created_on { get; set; }
	

}

