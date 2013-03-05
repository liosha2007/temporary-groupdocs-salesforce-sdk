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
public with sharing class GD_SignatureEnvelopeRecipientInfo {

	public String id { get; set; }
	public String firstName { get; set; }
	public String lastName { get; set; }
	public String email { get; set; }
	public String userGuid { get; set; }
	public Integer order { get; set; }
	public Double roleId { get; set; }
	public Integer status { get; set; }
	public String statusMessage { get; set; }
	public String statusDateTime { get; set; }
	public Double delegatedRecipientId { get; set; }
	public String signatureFingerprint { get; set; }
	public String signatureHost { get; set; }
	public String signatureLocation { get; set; }
	public String signatureBrowser { get; set; }
	

}

