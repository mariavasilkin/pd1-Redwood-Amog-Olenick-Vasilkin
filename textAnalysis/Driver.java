import java.io.*;
import java.util.*;

public class Driver{
	public static void main(String[] args){
		TextConverter tc = new TextConverter("Frozen", "http://en.wikipedia.org/wiki/Frozen_(2013_film)");
		String text = tc.fromURLtoText();
		StringProcessor sp = new StringProcessor(text);
		System.out.println(Arrays.toString(sp.mainWords(10)));
	}
}