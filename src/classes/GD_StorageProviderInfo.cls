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
public with sharing class GD_StorageProviderInfo {

	public Double id { get; set; }
	public String provider { get; set; }
	public String m_type { get; set; }
	public List<Integer> token { get; set; }
	public String publicKey { get; set; }
	public String privateKey { get; set; }
	public String rootFolder { get; set; }
	public Boolean isPrimary { get; set; }
	public String serviceHost { get; set; }
	

}

