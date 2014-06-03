import java.io.*;
import java.util.*;

public class format{

    private static Scanner sc;
    private static Scanner sc2;

    public static void main(String[] args){
	try{
	    sc = new Scanner(new File("database.txt"));
	}
	catch(Exception e){
	    sc = new Scanner(System.in);
	}
	sc.nextLine();
	sc.nextLine();
	sc.next();
	int i = 0;
	while (sc.hasNext() && i < 4500){
	    System.out.println(sc.next());
	    System.out.println(sc.next());
	    System.out.println(sc.next());
	    sc.next();
	    sc.next();
	    i++;
	}
    }
}