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
    private String[][] irregularNouns;
    
    
    public StringProcessor(String input){
	this.input=input;
	format f = new format();
	database = f.database;
	irregularNouns = f.irregularNouns;
	int len = input.length();
	words = new ArrayList<String>(len/4); //assumes average word length of 4
	counts = new ArrayList<Integer>(len/4);
	String temp = "";//each word
	char tmpchr = ' ';//each character, one at a time
	for (int i = 0; i < len; i++){
	    tmpchr = Character.toLowerCase(input.charAt(i));
	    if (!((tmpchr > 96 && tmpchr < 123) || tmpchr == 39 || tmpchr == 45)){ //if it's not in the alphabet, a hyphen, or an apostrophe
		if (temp.length() > 1){
		    if (!words.contains(temp.toLowerCase())){
			words.add(temp.toLowerCase());
			counts.add(0);
		    }
		    int x = words.indexOf(temp);
		    counts.set(x,counts.get(x) + 1);
		    wordcount++;
		}
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
    public String[][] getIrregularNouns(){ return irregularNouns; }
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
	String[] out = new String[numWords];
	Double[] freqArray = relFreqs.toArray(new Double[numWords]);
	Double[] topNFreqs = quickSelect(freqArray, numWords);
	for (int i = 0; i < numWords; i++){
	    out[i] = words.get(relFreqs.indexOf(topNFreqs[i]));
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
    
    public boolean isSameRootWord(String a, String b){ //GET BACK TO THIS
	String lastTwo = a.substring(a.length() - 2);
	if (lastTwo.equals("ch") ||
	    lastTwo.substring(1).equals("s")){
	    return true;
	}
	return false;
    }
    
    private int findArray (String[][] arr, String goal, int idx){ //finds the array in 2-d array arr such that the item at index idx is goal
	for (int i = 0; i < arr.length; i++){
	    if (arr[i][idx].equals(goal))
		return i;
	}   
	return -1;
    }
    
    public Double[] quickSelect(Double[] a, int k){//returns top K items
	//works by partially sorting "a" in increasing order
	if (a.length == k)
	    return a;
	Double[] result = new Double[k];
	Double[] alt = new Double[a.length];
	Random r = new Random();
	int ind = r.nextInt(a.length); // index of pivot
	int altind = 0; 
	int altind2 = 0;
	for (int i = 0; i<a.length; i++){
	    if (i == ind){
	    }
	    else if (a[i].compareTo(a[ind]) <= 0){
		alt[altind] = a[i];
		altind++;
	    }
	    else{
		alt[alt.length-1-altind2] = a[i];
		altind2++;
	    }
	}
	alt[altind] = a[ind];
	if ((a.length - (altind+1)) == k){
	    result = Arrays.copyOfRange(alt,k,a.length);
	}
	else if ((a.length - (altind+1)) < k){
	    Double[] newAlt = Arrays.copyOfRange(alt,0,altind);
	    Double[] result1 = Arrays.copyOfRange(alt,altind,a.length);
	    Double[] result2 = quickSelect(newAlt,k-result1.length);
	    for (int i = 0; i < k; i++){
		if (i < result1.length)
		    result[i] = result1[i];
		else
		    result[i] = result2[i - result1.length];
	    }
	}
	else{
	    Double[] newAlt = Arrays.copyOfRange(alt, altind, a.length);
	    return quickSelect(newAlt,k);
	}	
	
	return result;
    }
}