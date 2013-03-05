@isTest
private class GD_TestRequestSigner {
	static final String basePath = 'https://api.groupdocs.com/v2.0/storage/2721ad21bcf0d71e/folders/test.docx?description=';
	static final String privateKey = '8d8a7d642a807a31c2741c101a60cef2';
	static final GD_SecurityHandler signer = new GD_GroupDocsSecurityHandler(privateKey);
	static final Map<String, String> headers = new Map<String, String>();
	
	static testMethod void testSimplePath() {
		String requestUrl = basePath + 'uploaded';
		String expected = requestUrl + '&signature=OT6eFQYsZulqFDTsv4XSNlmc3FY';
		System.assertEquals(expected, GD_Utils.encodeURI(signer.handleURL(requestUrl, headers)));
	}

	static testMethod void testPathEndingWithSpace() {
		String requestUrl = basePath + 'test DOC file ';
		String expected = basePath + 'test%20DOC%20file%20&signature=rdw%2F%2FiP0mwN7Bme2sJ99AZmOpq4';
		System.assertEquals(expected, GD_Utils.encodeURI(signer.handleURL(requestUrl, headers)));
	}
	
	static testMethod void testPathWithAtSymbol() {
		String requestUrl = basePath + 'with @ symbol';
		String expected = basePath + 'with%20@%20symbol&signature=ar7cFk0RSaVukMIUbvJB%2FYp5oHs';
		System.assertEquals(expected, GD_Utils.encodeURI(signer.handleURL(requestUrl, headers)));
	}
	
	static testMethod void testPathWithStarSymbol() {
		String requestUrl = basePath + 'with * symbol';
		String expected = basePath + 'with%20*%20symbol&signature=iwzySzo6jbCXhf4lMB3r%2FtcV8Kc';
		System.assertEquals(expected, GD_Utils.encodeURI(signer.handleURL(requestUrl, headers)));
	}
	
	static testMethod void testPathWithBrackets() {
		String requestUrl = basePath + 'with ( and )';
		String expected = basePath + 'with%20(%20and%20)&signature=rDzSggRSTkBFOi%2F0P%2Bta6j%2BvYzY';
		System.assertEquals(expected, GD_Utils.encodeURI(signer.handleURL(requestUrl, headers)));
	}
	
	static testMethod void testPathWithSquareBrackets() {
		String requestUrl = basePath + 'with [ and ]';
		String expected = basePath + 'with%20%5B%20and%20%5D&signature=hfLg0YTTGdXpvdqV%2B7y2YJkJZqo';
		System.assertEquals(expected, GD_Utils.encodeURI(signer.handleURL(requestUrl, headers)));
	}
	
	static testMethod void testPathWithEncodeURIComponent() {
		// https://developer.mozilla.org/en-US/docs/JavaScript/Reference/Global_Objects/encodeURIComponent
		String requestUrl = basePath + 'alpha123 - _ . ! ~ * \' ( )';
		String expected = basePath + 'alpha123%20-%20_%20.%20!%20~%20*%20\'%20(%20)&signature=6ZTSvVrJ3Wvp9aZ93wtp5oH2hJ4';
		System.assertEquals(expected, GD_Utils.encodeURI(signer.handleURL(requestUrl, headers)));
	}
	
	static testMethod void testPathWithEncodeURI() {
		// https://developer.mozilla.org/en-US/docs/JavaScript/Reference/Global_Objects/encodeURI
		String requestUrl = basePath + 'alpha123 ; , / ? : @ & = + $'; // omitted # 
		String expected = basePath + 'alpha123%20;%20,%20/%20?%20:%20@%20&%20=%20%2B%20$&signature=zqj1XJtWE0%2F%2FMon%2FiSJN%2FC6Yyco';
		System.assertEquals(expected, GD_Utils.encodeURI(signer.handleURL(requestUrl, headers)));
	}

	static testMethod void testBodySigning() {
		String expected = 'content';
		System.assertEquals(expected, signer.handleBody('content', headers));
	}
}