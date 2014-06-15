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
	    while (sc.hasNextLine()) {
		boolean isBody = false;
		String s = sc.next();
		if ((s.substring("0,6")).equals("body>")){
		    isBody = true;
		}
		if (isBody) {
		    System.out.println(s);
		}
	    }
	    w.write(s);
	    w.close();
	}
	catch (IOException e) {
	    System.out.println("Error");
	}
      }
}
