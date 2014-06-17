//just here for reference
import java.io.*;
import java.util.Scanner;
public class Scan {

    public static void main(String[] args) {

	File file = new File("file.txt");
	//for ints, with a space as the delimter:
	/*	try {

	    Scanner sc = new Scanner(file);

	    while (sc.hasNextLine()) {
		int i = sc.nextInt();
		System.out.println(i);
	    }
	    sc.close();
	} 
	catch (FileNotFoundException e) {
	    e.printStackTrace();
	}*/
       
	//for Strings, with a space as the delimiter:
	/*try {

	    Scanner sc = new Scanner(file);

	    while (sc.hasNextLine()) {
	        String s = sc.next();
		System.out.println(s);
	    }
	    sc.close();
	} 
	catch (FileNotFoundException e) {
	    e.printStackTrace();
	    }*/

	//using other delimters: 
	/* output:
	   1
	   2
	   red
	   blue
	*/
	/*try {
	    String input = "1 fish 2 fish red fish blue fish";
	    Scanner sc = new Scanner(file).useDelimiter("\\s*fish\\s*");
	    System.out.println(sc.nextInt());
	    System.out.println(sc.nextInt());
	    System.out.println(sc.next());
	    System.out.println(sc.next());
	    sc.close(); 
	}
	catch (FileNotFoundException e) {
	    e.printStackTrace();
	    }*/

	//Saving the putput and using it for something:

	/*You HAVE to slect in order, so if the next thing isnt an int you cant do nextint. This doesnt apply in the delimiter is the string
	try {
	    Scanner sc = new Scanner(file);
	    int a = sc.nextInt();
	    String c = sc.next();
	    int b = sc.nextInt();
	    System.out.println(a+b);
	    System.out.println(c.substring(0,2));
	}
	catch (FileNotFoundException e) {
	    e.printStackTrace();
		    
	    }*/
    }
}
