Theimport java.io.*;
import java.util.*;
import java.net.*;

public class TextConverter {
    private String myURL;
    private String filename;
    
    public TextConverter(String name, String website){
         myURL = website;
         filename = name;
    }
    
    //from URLtoFile
    public String readURL() {
    
        try {
          URL site = new URL(myURL);
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
          while ((inputLine = in.readLine()) != null){
            allTheText += "\n" + inputLine;
            //System.out.println(inputLine);
          }
          in.close();
          return allTheText;

      }

      catch(Exception e){
      return "failed to read website";
      }
    }   

    public void writeHTMLFile(){
        try{
            String textToWrite = readURL();
            BufferedWriter out = new BufferedWriter( new FileWriter(filename + ".txt") );
            out.write(textToWrite);
            System.out.println("this should be writing");
        }
        catch(Exception e){
            System.out.println("something went terribly terribly wrong - did not write to file");
            System.out.println(e);
        }
    }
    
    //from HTMLTagParser
    public void stripTags(){
        File webData = new File(filename + ".txt");
        boolean isBody = false;
        try{
            int i = 0;
            Scanner sc = new Scanner(webData);
            String line = "";
            while (isBody == false){
                line = sc.nextLine();
                if (line.contains("body")){
                    System.out.println("start of body");
                    sc.nextLine();
                    isBody = true;
                }
            }
            
            String text = "";
            BufferedWriter out = new BufferedWriter( new FileWriter(filename + "NoTags.txt") );
            while (sc.hasNextLine()){
                try{
                     line = sc.nextLine();
                     text = checkTag(line);
                     //System.out.println(text);
                     out.write("\n" + text);
                     i++;
                }
                catch(Error e){
                    System.out.println("this is where it stops " + i);
                    
                }
            }
        }
        
        catch(Exception e){
        
        }
    }
    
    public String checkTag(String line){
        int openTag = 0;
        int closeTag = 0;
        if (!line.contains("<") && !line.contains(">"))
            return line;
        else{
            openTag = line.indexOf("<");
            closeTag = line.indexOf(">");
            String text = line.substring(0,openTag);
            text = text + line.substring(closeTag + 1);
            return checkTag(text);
        }
    }
    
    //to read contents of a file into one string -- to input to the textAnalysis stuff
    public String convertString(){
        try {
            Scanner sc = new Scanner( new File(filename + "NoTags.txt") );
            String allTheText = "";
            while (sc.hasNextLine()){
                allTheText += "\n" + sc.nextLine();
            }
          return allTheText;
        }
        catch (Exception e){
            return "failed to read file";
        }
    } 
    
    public String fromURLtoText (){
        writeHTMLFile();
        stripTags();
        return convertString();
    }
    
}
