import java.net.*;
import java.io.*;

public class URLReader {
    public static void main(String[] args) throws Exception {
	//	try {
	    URL site = new URL("http://docs.oracle.com/javase/tutorial/networking/urls/readingURL.html");
	    URLConnection con = site.openConnection();
	    con.connect();
	    if (con instanceof HttpURLConnection)
		HttpURLConnection = (HttpURLConnection)con 
	    InputStream is = con.getInputStream();

	    int status = con.getResponseCode();

	    
	    if (status >= con.HTTP_BAD_REQUEST)
		is = con.getErrorStream();
	    BufferedReader in = new BufferedReader(new InputStreamReader(is));
	  
	 
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