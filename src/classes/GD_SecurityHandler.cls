public interface GD_SecurityHandler {

	String handleURL(String url, Map<String, String> headers);

	Object handleBody(Object requestBody, Map<String, String> headers);

}
