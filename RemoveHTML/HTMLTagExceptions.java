import java.io.*;
import java.util.*;
public class HTMLTagExceptions {
    private static ArrayList<String> tags = new ArrayList<String> ();  
    private static File processedText = new File("text.txt");
      public static void main(String[] args) {

	File IgnoreTags = new File("IgnoreTags.txt");

	try {

	    Scanner sc = new Scanner(IgnoreTags).useDelimiter("\n");

	    while (sc.hasNextLine()) {
	        tags.add(sc.next());
		//	System.out.println(s);
	    }
	    sc.close();
	} 
	catch (FileNotFoundException e) {
	    e.printStackTrace();
	}
	

      

	
	File FullWiki = new File("Wiki.txt");
	
	try {
	    Scanner sc = new  Scanner(FullWiki).useDelimiter("<");
	    FileOutputStream is = new FileOutputStream(processedText);
	    OutputStreamWriter osw = new OutputStreamWriter(is);
	    Writer w = new BufferedWriter(osw);
	    boolean isBody = false;
	    while (sc.hasNextLine()) {
		String s = sc.next();
		if (s.length() > 5 &&
		    (s.substring(0,4)).equals("body")){
		    isBody = true;
		}
		if (isBody) {
		    w.write(s);
		}
	    }
	    // w.write(s);
	    w.close();
	}
	catch (IOException e) {
	    System.out.println("Error");
	}
      }
}
