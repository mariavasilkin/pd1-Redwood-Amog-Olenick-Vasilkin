import java.io.*;
import java.net.*;
import java.util.Scanner;
public class URLReaderTest {

  public String getUrlSource(String url) throws IOException {
    URL yahoo = new URL(url);
    URLConnection yc = yahoo.openConnection();
    BufferedReader in = new BufferedReader
      (new InputStreamReader(yc.getInputStream(), "UTF-8"));
    String inputLine;
    StringBuilder a = new StringBuilder();
    while ( (inputLine = in.readLine ()) != null)
      a.append(inputLine);
    in.close();

    return a.toString();
  }

  public String wiki(String subject)throws IOException {
    String s = subject;
    for (int i = 0; i < subject.length (); i++) {
      if ((subject.substring(i, i+1)).equals(" ")) {
        s = subject.substring(0, i) + "_" + subject.substring(i+1);
      }
    }
    String url = "http://en.wikipedia.org/wiki/" + s;
    return getUrlSource(url);
  }

  public String cleanedUpWiki(String subject) throws IOException {
    String s = wiki(subject);
    int startInd = -1, endInd;
    for (int i = 0; i < s.length () && i < 1000; i++) {
      if ((s.substring(i, i+1)).equals("<")) {
        startInd = i;
      }
      if (startInd != -1 && (s.substring(i, i+1)).equals(">")) {
        endInd = i;
        s = s.substring(0, startInd) + s.substring(endInd); 
        i -= (endInd - startInd);
      }
    }
    return s;
  }

  void main (String[] args) {
    String topic;
    URLReaderTest url = new URLReaderTest();
    Scanner input = new Scanner(System.in);
    System.out.println("Enter a subject matter");
    topic = input.next();
    try {
      System.out.println(url.cleanedUpWiki(topic));
    }
    catch (IOException e) {
      System.out.println("error");
    }
  }
}

