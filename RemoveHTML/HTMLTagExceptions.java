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
		boolean isTag = false;
		if (s.length() > 5 &&
		    (s.substring(0,4)).equals("body")){
		    isBody = true;
		}
		//doesn't show the whole thing
		if (s.length() > 20 &&
		    (s.substring(0,19)).equals("div class=\"hatnote\"")){
		    System.out.println(s.substring(19));
		}
	  
		for (String tag: tags){
		    //tons of "if"s to account for the differnt lengths of tags
		    //there's probably a better way to do this
		    if (s.substring(0,1).equals(tag))
			isTag = true;
		    else if (s.length() > 1 &&
			s.substring(0,2).equals(tag))
			isTag = true;
		    else if (s.length() > 2 &&
			s.substring(0,3).equals(tag))
			isTag = true;
		    else if (s.length() > 3 &&
			s.substring(0,4).equals(tag))
			isTag = true;
		    else if (s.length() > 4 &&
			s.substring(0,5).equals(tag))
			isTag = true;
		    else if (s.length() > 5 &&
			s.substring(0,6).equals(tag))
			isTag = true;
		    else if (s.length() > 6 &&
			s.substring(0,7).equals(tag))
			isTag = true;
		    else isTag = false;
		    if (isTag) 
			break;
		}			
			
		if (isBody && !isTag) {
		    w.write("<" + s);
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
