import java.io.*;
import java.util.*;
import java.net.*;

public class TextConverter {
    private String fileName;
    
    //from URLtoFile
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

    public void writeHTMLFile(String website, String name){
        try{
            String textToWrite = readURL(website);
            BufferedWriter out = new BufferedWriter( new FileWriter(name + ".txt") );
            out.write(textToWrite);
            System.out.println("this should be writing");
        }
        catch(Exception e){
            System.out.println("something went terribly terribly wrong - did not write to file");
        }
    }
    
    //from HTMLTagParser
    public void stripTags(String filename, String name){
        File webData = new File(filename);
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
            BufferedWriter out = new BufferedWriter( new FileWriter(name + ".txt") );
            while (sc.hasNextLine()){
                try{
                     line = sc.nextLine();
                     text = checkTag(line);
                     out.write("\n" + text);
                     //System.out.println(text);
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
    public String convertString(String filename){
        try {
            Scanner sc = new Scanner( new File(filename) );
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
    
    public String fromURLtoText (String website, String name){
        writeHTMLFile(website, name);
        String filename = name + ".txt";
        stripTags(filename, name + "NoTags");
        String notags = name + "NoTags.txt";
        return convertString(notags);
    }
    
}
