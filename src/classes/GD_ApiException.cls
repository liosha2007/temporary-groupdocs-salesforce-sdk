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
public with sharing class GD_ApiException extends Exception {

	private String message;
	private Integer code;
	
	public GD_ApiException(String message, Integer code){
		this.message = message;
		this.code = code;
	}

	/**
	 * @return true if something is wrong with your request
	 */
	public boolean isRequestError() {
		return (code >= 400 && code < 500);
	}

	/**
	 * @return true if this was a server error and you should contact support team
	 */
	public boolean isServerError() {
		return code >= 500;
	}

	/**
	 * Indicates failure to deserialize response string into model, probably because json response format has changed
	 * 
	 * @return true if API call successfully returned but there was an error while parsing response json
	 */
	public boolean isResponseParsingError() {
		return (code == -1);
	}

}
