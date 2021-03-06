import java.net.*;
import java.io.*;

public class URLReader {
    public static void main(String[] args) throws Exception {
	try {

	    URL site = new URL("http://en.wikipedia.org/wiki/HTTP_404");

	    URLConnection c = site.openConnection();
	    
	    HttpURLConnection con = (HttpURLConnection)c; 
	    con.setRequestMethod("GET");
	    con.setDoInput(true);
	    con.setDoOutput(false);
	    con.connect();
	    int status = con.getResponseCode();
	    System.out.println(status);
	    
	    InputStream is = con.getInputStream();
	    if (status == con.HTTP_BAD_REQUEST)
		is = con.getErrorStream();
	    
	    
	    BufferedReader in = new BufferedReader(new InputStreamReader(is));
	       System.out.println(in.readLine());
	    
	    String inputLine = null;
	    while ((inputLine = in.readLine()) != null)
		System.out.println(inputLine);
	    in.close();
	    	    
	}
	catch(Exception e){
	    System.out.println("failed");
	}

    }
}
