import java.io.*;
import java.util.*;

public class HTMLTagParser {
  private ArrayList<String> tags = new ArrayList<String>();
  public void stripTags(String filename, String name) {
    File webData = new File(filename);
    boolean isBody = false;
    try {
      int i = 0;
      Scanner sc = new Scanner(webData);
      String line = "";
      while (isBody == false) {
        line = sc.nextLine();
        if (line.contains("body")) {
          System.out.println("start of body");
          sc.nextLine();
          isBody = true;
        }
      }

      String text = "";
      BufferedWriter out = new BufferedWriter( new FileWriter(name + ".txt") );
      while (sc.hasNextLine ()) {
        try {
          line = sc.nextLine();
          text = checkTag(line);
          out.write("\n" + text);
          i++;
        }
        catch(Error e) {
          System.out.println("this is where it stops " + i);
        }
      }
    }

    catch(Exception e) {
    }
  }
  public String checkTag(String line) {
    int openTag = 0;
    int closeTag = 0;
    if (!line.contains("<") && !line.contains(">"))
      return line;
    else {
      openTag = line.indexOf("<");
      closeTag = line.indexOf(">");
      String text = line.substring(0, openTag);
      text = text + line.substring(closeTag + 1);
      return checkTag(text);
    }
  }
}

