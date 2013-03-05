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
public with sharing class GD_AnnotationInfo {

	public String guid { get; set; }
	public String documentGuid { get; set; }
	public String sessionGuid { get; set; }
	public String creatorGuid { get; set; }
	public GD_Rectangle box { get; set; }
	public GD_Point annotationPosition { get; set; }
	public GD_Range range { get; set; }
	public String svgPath { get; set; }
	public String m_type { get; set; }
	public String access { get; set; }
	public List<GD_AnnotationReplyInfo> replies { get; set; }
	public Long createdOn { get; set; }
	public String fieldText { get; set; }
	public String fontFamily { get; set; }
	public Double fontSize { get; set; }
	

}

