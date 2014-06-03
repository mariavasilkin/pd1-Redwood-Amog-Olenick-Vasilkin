import java.net.*;
import java.io.*;

public class URLReader {
    public static void main(String[] args) throws Exception {
	//	try {
	    URL site = new URL("http://www.sosmath.com/calculus/series/convergence/convergence.html");
	    URLConnection con = site.openConnection();
	    con.connect();
	    InputStream is = con.getInputStream();
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