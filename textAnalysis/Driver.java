import java.util.*;
import java.io.*;
public class Driver{

    public static void main(String[] args){
TextConverter tc = new TextConverter();
        String text = tc.fromURLtoText("http://en.wikipedia.org/wiki/Pineapple", "Pineapple");
	StringProcessor sp = new StringProcessor(text);
	System.out.println(Arrays.toString(sp.mainWords(10)));    
    }
}