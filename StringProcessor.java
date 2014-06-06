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
	database = f.database;
	int len = input.length();
	words = new ArrayList<String>(len/4); //assumes average word length of 4
	counts = new ArrayList<Integer>(len/4);
	String temp = "";//each word
	char tmpchr = ' ';//each character, one at a time
	for (int i = 0; i < len; i++){
	    tmpchr = Character.toLowerCase(input.charAt(i));
	    if (!((tmpchr > 96 && tmpchr < 123) || tmpchr == 39 || tmpchr == 45)){ //if it's not in the alphabet, a hyphen, or an apostrophe
		if (!words.contains(temp.toLowerCase())){
		    words.add(temp.toLowerCase());
		    counts.add(0);
		}
		int x = words.indexOf(temp);
		counts.set(x,counts.get(x) + 1);
		wordcount++;
		temp = "";
	    }
	    else{
		temp = temp + tmpchr;
	    }
	}
	relFreqs = new ArrayList<Double>(len/4);
	buildRelFreqs();
    }
    
    public String getInput(){ return input; }
    public int getWordcount() { return wordcount; }
    public ArrayList<String> getWords(){ return words; }
    public ArrayList<Integer> getCounts(){ return counts; }
    public ArrayList<Double> getRelFreqs(){ return relFreqs; }
    public String[][] getDatabase(){ return database; }

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

    public ArrayList<String> mainWords(){// returns all words which occur about 1.05 times as frequently in the input than in regular English
	ArrayList<String> out = new ArrayList<String>(wordcount);
	for(int i = 0; i < counts.size(); i++){
	    if (relFreqs.get(i) > 1.05)
		out.add(words.get(i));
	}
	return out;
    }

    private void buildRelFreqs (){
	double freq;
	double objFreq;
	String word;
	for (int i = 0; i < words.size(); i++){
	    relFreqs.add(0.0);
	    word = words.get(i);
	    if (findArray(database,word,0) == -1)
		objFreq = 0.000008889; // this is equivalent to 4,000 per 450,000,000; less than any other word in this particular database
	    else{
		objFreq = Double.parseDouble(database[findArray(database,word,0)][2]) / 450000000.0;
	    }
	    freq = (0.0 + counts.get(i)) / (0.0 + wordcount);
	    relFreqs.set(i, (freq/objFreq));
	}
    }

    public boolean isSameRootWord(String a, String b){
	String lastTwo = a.substring(a.length() - 2);
	if (a.substring(a.length-2).equals("ch")){
    }

    private int findArray (String[][] arr, String goal, int idx){ //finds the array in 2-d array arr such that the item at index idx is goal
	for (int i = 0; i < arr.length; i++){
	    if (arr[i][idx].equals(goal))
		return i;
	}   
	return -1;
    }
}	    
	    
    