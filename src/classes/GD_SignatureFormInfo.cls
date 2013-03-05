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
public with sharing class GD_SignatureFormInfo {

	public String id { get; set; }
	public String name { get; set; }
	public String ownerGuid { get; set; }
	public String templateGuid { get; set; }
	public String createdTimeStamp { get; set; }
	public Integer status { get; set; }
	public String statusDateTime { get; set; }
	public Double documentsCount { get; set; }
	public Double documentsPages { get; set; }
	public Double participantsCount { get; set; }
	public List<String> fieldsInFinalFileName { get; set; }
	public Boolean canParticipantDownloadForm { get; set; }
	public String waterMarkText { get; set; }
	public String waterMarkImage { get; set; }
	

}

