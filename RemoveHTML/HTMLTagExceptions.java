import java.io.*;
import java.util.*;
public class HTMLTagExceptions {
    private static ArrayList<String> tags = new ArrayList<String> ();  
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
	
	for (String s: tags) {
	    System.out.println(s);
	}
      }
}
	
	/*
	File FullWiki = new File("Wiki.txt");
	
	try {
	    Scanner sc = new  Scanner(FullWiki).useDelimiter("<");
	    
	    while (sc.hasNextLine()) {
		String s = sc.next();
		if ((s.substring(0,2)).equals("i>")) {
		    while (//basically until theres the close tag, concat to one string
		    }*/
    
