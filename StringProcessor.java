import java.io.*;
import java.util.*;

public class StringProcessor{
    /*Takes input in the form of a huge block of text, determines how often a
      word is used, and other related functions**/

    private String input;
    private int wordcount;
    private ArrayList<String> words; //distinct words
    private ArrayList<Integer> counts; // each word's count
    private ArrayList<Double> relFreqs;
    private String[][] database;
    
    
    public StringProcessor(String input){
	this.input=input;
	format f = new format();
	f.do();
	database = f.database();
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

    public String[] mainWords(int numWords){
	
    }

    private void buildRelFreqs (){
	double freq =;
	double objFreq;
	String word;
	for (int i = 0; i < words.size(); i++){
	    String word = words.get(i);
	    double objFreq = database[findArray(database,word,0)][2]/450000000.0;
	    freq = (0.0 + counts.get(i)) / (0.0 + wordcount);
	    relFreqs.set(i, (freq/objFreq));
	}
    }
    private int findArray (String[][] arr, String goal, int idx){
	for (int i = 0; i < arr.length; i++){
	    if (arr[i][idx].equals(goal))
		return i;
	}   
    }
}	    
	    
    