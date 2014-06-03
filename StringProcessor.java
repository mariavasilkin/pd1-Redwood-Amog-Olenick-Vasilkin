import java.io.*;
import java.util.*;

public class StringProcessor{
    /*Takes input in the form of a huge block of text, determines how often a
      word is used, and other related functions**/

    private String input;
    private int wordcount;
    private ArrayList<String> words; //distinct words
    private ArrayList<Integer> counts; // each word's count
    private ArrayList<Double> relFreqs; // (count/#of words) / (normal frequency of that word)
    
    public StringProcessor(String input){
	this.input=input;
	int len = input.length();
	words = new ArrayList<String>(len/4);
	counts = new ArrayList<Integer>(len/4);
	String temp = "";
	char tmpchr = ' ';
	for (int i = 0; i < len; i++){
	    tmpchr = input.charAt(i);
	    if (tmpchr == ' ' || tmpchr == '.'){
		if (!words.contains(temp.toLowerCase()))
		    words.add(temp.toLowerCase());
		counts.get(words.indexOf(temp))++;
		wordcount++;
	    }
	    else{
		temp = temp + tmpchr;
	    }
	}
    }

    public ArrayList<String> getWords(int occurs){
	ArrayList<String> out = new ArrayList<String>();
	for (int i = 0; i < words.size(); i++){
	    if (counts.get(i) == occurs)
		out.add(words.get(i));
	}
	return out;
    }

    public int getOccurs (String word){
	return counts.get(words.indexOf(word));
    }

    private void buildRelFreqs (){
	double freq = 0.0;
	for (int i = 0; i < words.size(); i++){
	    //find the word's frequency in given database, set to objFreq
	    freq = (0.0 + counts.get(i)) / (0.0 + wordcount);
	    relFreqs.set(i, (freq/objFreq));
	}
    }
}	    
	    
    