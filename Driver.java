import java.io.*;
import java.util.*;

public class Driver{
	public static void main(String[] args){
		TextConverter tc = new TextConverter("Wicked", "http://en.wikipedia.org/wiki/Wicked_(musical)");
		String text = tc.fromURLtoText();
		System.out.println(text);
	}
}