import java.io.*;
import java.util.*;

public class URLtoFile {

  public String readURL(String website) {

    try {
      URL site = new URL(website);
      URLConnection c = site.openConnection();
      HttpURLConnection con = (HttpURLConnection)c; 
      con.setRequestMethod("GET");
      con.setDoInput(true);
      con.setDoOutput(false);
      con.connect();

      InputStream is = con.getInputStream();

      BufferedReader in = new BufferedReader(new InputStreamReader(is));

      String inputLine = null;
      String allTheText = "";
      while ( (inputLine = in.readLine ()) != null)
        allTheText += "\n" + inputLine;
      in.close();
      return allTheText;
    }

    catch(Exception e) {
      return "failed to read website";
    }
  }   

  public void writeFile(String website, String name) {
    try {
      String textToWrite = readURL(website);
      BufferedWriter out = new BufferedWriter( new FileWriter(name + ".txt") );
      out.write(textToWrite);
    }
    catch(Exception e) {
    }
  }
}

