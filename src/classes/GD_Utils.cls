public with sharing class GD_Utils {
	
	public static final String ENC = 'UTF-8';
	
	public static String toPathValue(Object value){
		return String.valueOf(value);
	}
	
	public static String encodeURI(String uri) {
		return encodeURIComponent(uri).replace('%3B', ';').replace('%2C', ',')
				.replace('%2F', '/').replace('%3F', '?').replace('%3A', ':')
				.replace('%40', '@').replace('%26', '&').replace('%3D', '=')
				.replace('%24', '$').replace('%25', '%').replace('%23', '#');
	}

	public static String encodeURIComponent(String str) {
		return EncodingUtil.urlEncode(str, ENC).replace('+', '%20')
				.replace('%21', '!').replace('%27', '\'')
				.replace('%28', '(').replace('%29', ')')
				.replace('%7E', '~');
	}

	public static String serialize(Object obj) {
		return JSON.serialize(obj);
	}
	
	public static Object deserialize(String jsonStr, Type cls) {
		return JSON.deserialize(jsonStr, cls);
	}

}
