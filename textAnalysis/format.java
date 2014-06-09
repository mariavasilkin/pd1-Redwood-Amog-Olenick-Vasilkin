import java.io.*;
import java.util.*;

public class format{

    private static Scanner sc;
    private static Scanner sc2;
    public static String[][] database;
    public static String[][] irregulars;

    public format(){
	try{
	    sc = new Scanner(new File("database.txt")); 
	    //source: http://www.wordfrequency.info/free.asp?s=y
	}
	catch(Exception e){
	    sc = new Scanner(System.in);
	}
	sc.nextLine();
	sc.nextLine();
	sc.next();
	int i = 0;
	database = new String[5005][3];
	while (sc.hasNext() && i < 5005){
	    database[i][0] = sc.next();
	    database[i][1] = sc.next();
	    database[i][2] = sc.next();
	    sc.next();
	    if (i != 5004)
		sc.next();
	    i++;
	}

	try {
	    sc2 = new Scanner(new File("irregulars.txt"));
	    //sources:
	    //http://birdgei.com/2011/08/30/list-of-100-irregular-plural-nouns-in-english/
	    //http://grammar.about.com/od/words/a/A-List-Of-Irregular-Plural-Nouns-In-English.htm
	}
	catch (Exception e){
	    sc2 = new Scanner(System.in);
	}
	int a = 0;
	while(sc2.hasNext()){
	    String s = sc2.nextLine();
	    String word = s.substring(0, s.indexOf(' '));
	    String plural1 = s.substring(s.indexOf(' '));
	    plural1 = plural1.trim();
	    if(plural1.indexOf("or") != 1){
		String plural2 = plural1.substring(0,plural1.indexOf("or"));
		plural1 = plural1.substring(plural1.indexOf("or"));
	    }
	    else{
		String plural2 = "";
	    }
	    if(!arrContains(irregulars,word)){
		irregulars[a][0] = word;
		a++;
	    }		
	}
	System.out.println(Arrays.toString(irregulars));
    }
    
    public boolean arrContains(String[][] arr, String s){
	String[] result = new String[arr.length];
	for(int i = 0; i < arr.length; i++){
	    result[i] = arr[i][0];
	}
	Arrays.sort(result);
	return (Arrays.binarySearch(result,s) >= 0);
    }
}