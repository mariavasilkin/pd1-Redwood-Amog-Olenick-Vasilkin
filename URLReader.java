import java.net.*;
import java.io.*;

public class URLReader {
    public static void main(String[] args) throws Exception {

        URL webpage = new URL("http://en.wikipedia.org/Html");
        BufferedReader in = new BufferedReader(new InputStreamReader(webpage.openStream()));

        String inputLine;
        while ((inputLine = in.readLine()) != null)
            System.out.println(inputLine);
        in.close();
    }
}