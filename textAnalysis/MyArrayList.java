import java.util.*;
import java.io.*;

public class MyArrayList extends ArrayList<String>{
    
    public MyArrayList(int initialCapacity){
	super(initialCapacity);
    }
    
    public boolean contains(Object o){
	//modified from http://grepcode.com/file/repository.grepcode.com/java/root/jdk/openjdk/6-b14/java/util/AbstractCollection.java#AbstractCollection.contains%28java.lang.Object%29
	try {
	    String s = (String)o;
	    Iterator<String> e = iterator();
	    if (s==null) {
		while (e.hasNext())
		    if (e.next()==null)
			return true;
	    }
	    else {
		while (e.hasNext())
		    if (isSameRootWord(s,e.next()))
			return true;
	    }
	    return false;
	}
	catch (ClassCastException exc){
	    Iterator<String> e = iterator();
	    if (o==null) {
		while (e.hasNext())
		    if (e.next()==null)
			return true;
	    }
	    else {
		while (e.hasNext())
		    if (o.equals(e.next()))
			return true;
	    }
	    return false;
	}
    }
    
    public boolean isSameRootWord(String a, String b){ //in progress
	String one = a.toUpperCase();
	String two = b.toUpperCase();
	boolean result = false;
	if (one.length() >= 3){
	    if (one.equals(two + "s") || two.equals(one + "s"))
		result = true;
	}	
	return result;
    }
}