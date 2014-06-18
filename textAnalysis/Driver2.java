//same as Driver, but with command line input and not working yet
import java.util.*;
import java.io.*;
public class Driver2{
    public static void main(String[] args) {
	TextConverter tc = new TextConverter();
	String text = tc.fromURLtoText("http://en.wikipedia.org/wiki/Pineapple", "Pineapple");

	StringProcessor sp = new StringProcessor(text);
	System.out.println(Arrays.toString(sp.mainWords(10)));
    }

	/*try {

	    Scanner sc = new Scanner(System.in);

	    while (sc.hasNextLine()) {
		search = sc.next();
		url = ("http://enwikipedia.org/wiki/" + search);
	    }
	    sc.close();
	} 
	catch (Exception e) {
	    e.printStackTrace();
	}
	String text = tc.fromURLtoText (url,search );*/


}
