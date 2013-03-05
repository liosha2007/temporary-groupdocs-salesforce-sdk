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
public with sharing class GD_UserInfo {

	public String nickname { get; set; }
	public String firstname { get; set; }
	public String lastname { get; set; }
	public String pkey { get; set; }
	public String pswd_salt { get; set; }
	public String claimed_id { get; set; }
	public String token { get; set; }
	public Integer storage { get; set; }
	public List<Integer> photo { get; set; }
	public Boolean active { get; set; }
	public Boolean trial { get; set; }
	public Boolean news_eanbled { get; set; }
	public Boolean alerts_eanbled { get; set; }
	public Boolean support_eanbled { get; set; }
	public String support_email { get; set; }
	public Boolean annotation_branded { get; set; }
	public Boolean viewer_branded { get; set; }
	public Boolean is_real_time_broadcast_enabled { get; set; }
	public Boolean is_scroll_broadcast_enabled { get; set; }
	public Boolean is_zoom_broadcast_enabled { get; set; }
	public List<Integer> annotation_logo { get; set; }
	public List<Integer> pointer_tool_cursor { get; set; }
	public Integer annotation_header_options { get; set; }
	public Boolean is_annotation_navigation_widget_enabled { get; set; }
	public Boolean is_annotation_zoom_widget_enabled { get; set; }
	public Boolean is_annotation_download_widget_enabled { get; set; }
	public Boolean is_annotation_print_widget_enabled { get; set; }
	public Boolean is_annotation_help_widget_enabled { get; set; }
	public Boolean is_right_panel_enabled { get; set; }
	public Boolean is_thumbnails_panel_enabled { get; set; }
	public Boolean is_standard_header_always_shown { get; set; }
	public Boolean is_toolbar_enabled { get; set; }
	public Boolean is_text_annotation_button_enabled { get; set; }
	public Boolean is_rectangle_annotation_button_enabled { get; set; }
	public Boolean is_point_annotation_button_enabled { get; set; }
	public Boolean is_strikeout_annotation_button_enabled { get; set; }
	public Boolean is_polyline_annotation_button_enabled { get; set; }
	public Boolean is_typewriter_annotation_button_enabled { get; set; }
	public Boolean is_watermark_annotation_button_enabled { get; set; }
	public List<Integer> viewer_logo { get; set; }
	public Integer viewer_options { get; set; }
	public Boolean is_viewer_navigation_widget_enabled { get; set; }
	public Boolean is_viewer_zoom_widget_enabled { get; set; }
	public Boolean is_viewer_download_widget_enabled { get; set; }
	public Boolean is_viewer_print_widget_enabled { get; set; }
	public Boolean is_viewer_help_widget_enabled { get; set; }
	public Long signedupOn { get; set; }
	public Long signedinOn { get; set; }
	public Integer signin_count { get; set; }
	public List<GD_RoleInfo> roles { get; set; }
	public Double id { get; set; }
	public String guid { get; set; }
	public String primary_email { get; set; }
	

}

