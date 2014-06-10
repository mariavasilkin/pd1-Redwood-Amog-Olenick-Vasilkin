import java.io.*;
import java.util.*;

public class format{

    private static Scanner sc;
    private static Scanner sc2;
    public static String[][] database;
    public static String[][] irregularNouns;

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
	    sc2 = new Scanner(new File("irregularNouns.txt"));
	    //sources:
	    //http://birdgei.com/2011/08/30/list-of-100-irregular-plural-nouns-in-english/
	    //http://grammar.about.com/od/words/a/A-List-Of-Irregular-Plural-Nouns-In-English.htm
	}
	catch (Exception e){
	    sc2 = new Scanner(System.in);
	}
	irregularNouns = new String[200][4];
	int a = 0;
	while(sc2.hasNext()){
	    String s = sc2.nextLine();
	    String[] line = s.split("\\s+");
	    String word = line[0];
	    String plural1 = line[1];
	    String plural2 = null;
	    String plural3 = null;
	    if(line.length >= 4){
		plural2 = line[3]; //note: line[2] is "or"
	    }
	    if(line.length >= 6){
		plural3 = line[5];
	    }
	    if(!arrContains(irregularNouns,word)){
		irregularNouns[a][0] = word;
		irregularNouns[a][1] = plural1;
		irregularNouns[a][2] = plural2;
		irregularNouns[a][3] = plural3;
		a++;
	    }		
	}
    }
    
    public boolean arrContains(String[][] arry, String s){
	for (int i = 0; i < arry.length; i++){
	    try {
		if (arry[i][0].equals(s))
		    return true;
	    }
	    catch(Exception e){} // exception thrown if some items in arr are null
	}
	return false;
    }
}