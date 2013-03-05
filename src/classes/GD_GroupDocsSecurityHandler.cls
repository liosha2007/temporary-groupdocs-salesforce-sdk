public with sharing class GD_GroupDocsSecurityHandler implements GD_SecurityHandler {
	
	private static final String SIGN_ALG = 'HmacSHA1'; 
	
	public String privateKey { get; set; }
	
	public GD_GroupDocsSecurityHandler(String privateKey){
		if(privateKey == null){
			throw new GD_ApiException('API key is required to sign GroupDocs API calls');
		}
		this.privateKey = privateKey;
	}

	public String handleURL(String url, Map<String, String> headers){
		URL resourceURL = new URL(url);
		String pathAndQuery = resourceURL.getFile();
		if(url.endsWith(' ')){
			pathAndQuery = pathAndQuery + ' ';
		}
		String signature = sign(GD_Utils.encodeURI(pathAndQuery));
		String signedURL = url + (resourceURL.getQuery() == null ? '?' : '&') + 'signature=' + GD_Utils.encodeURIComponent(signature);
		return signedURL;
	}
	
	public Object handleBody(Object requestBody, Map<String, String> headers){
		return requestBody;
	}

    private String sign(String toSign){
		Blob mac = Crypto.generateMac(SIGN_ALG, Blob.valueOf(toSign), Blob.valueOf(this.privateKey));
		String signature = EncodingUtil.base64Encode(mac);
		if(signature.endsWith('=')){
			signature = signature.substring(0, signature.length() - 1);
		}
		return signature;
	}

}
