import java.util.*;
import java.io.*;

public class StringArrayList extends ArrayList<String>{
    
    public StringArrayList(int initialCapacity){
	super(initialCapacity);
    }
    
    public boolean contains(Object o){
	//modified from http://grepcode.com/file/repository.grepcode.com/java/root/jdk/openjdk/6-b14/java/util/AbstractCollection.java#AbstractCollection.contains%28java.lang.Object%29
	String s = (String)o;
	Iterator<String> e = iterator();
	if (s==null) {
	    while (e.hasNext())
		if (e.next()==null)
		    return true;
	}
	else {
	    while (e.hasNext()){
		if (isSameRootWord(s,e.next()))
		    return true;
	    }
	}
	return false;
    }

    public int indexOf(Object o) {
	String s = (String)o;
	if (s == null) {
	    for (int i = 0; i < size(); i++)
		if (get(i)==null)
		    return i;
	} else {
	    for (int i = 0; i < size(); i++)
		if (isSameRootWord(s,get(i)))
		    return i;
	}
	return -1;
     }
    
    public static boolean isSameRootWord(String a, String b){ //in progress
	String one = a.toLowerCase();
	String two = b.toLowerCase();
	boolean result = false;;
	if (one.length() >= 3){
	    if (((one.indexOf(two) != -1 && one.indexOf("s") == one.length())) 
		|| (two.indexOf(one) != -1 && two.indexOf("s") == two.length()-1 ))
		result = true;
	    
	}	
	if (one.equals(two))
	    result = true;
	return result;
    }
}