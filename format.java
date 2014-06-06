import java.io.*;
import java.util.*;

public class format{

    private static Scanner sc;
    private static Scanner sc2;
    public static String[][] database;

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
    }
}