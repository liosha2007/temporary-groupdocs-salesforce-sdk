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
public with sharing class GD_SignatureEnvelopeSettings {

	public Integer ownerShouldSign { get; set; }
	public Integer orderedSignature { get; set; }
	public Double reminderTime { get; set; }
	public Double stepExpireTime { get; set; }
	public Double envelopeExpireTime { get; set; }
	public String emailSubject { get; set; }
	public String emailBody { get; set; }
	public Boolean isDemo { get; set; }
	public String waterMarkText { get; set; }
	public String waterMarkImage { get; set; }
	

}
