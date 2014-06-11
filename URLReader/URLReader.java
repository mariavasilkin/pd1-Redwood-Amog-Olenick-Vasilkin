import java.net.*;
import java.io.*;

public class URLReader {
    public static void main(String[] args) throws Exception {
	//	try {
	    URL site = new URL("http://news.ycombinator.com");
	    URLConnection c = site.openConnection();
	    c.connect();
	    
	    HttpURLConnection con = (HttpURLConnection)c; 
	 
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
	    	    
//	}
	/*	catch(Exception e){
	    System.out.println("failed");
	    }*/

    }
}