import java.io.*;
import java.util.*;

public class Node{
    private Node child1, child2, child3, child4, child5;
    private String[] keywords;
    private String name;
    private int numChildren;
    public Node(String[] kw){
        keywords = kw;
        child1 = null;
        child2 = null;
        child3 = null;
        child4 = null;
        child5 = null;
    }
    
    public void setChild(Node n){
        if (numChildren == 0)
            child1 = n;
        if (numChildren == 1)
            child2 = n;
        if (numChildren == 2)
            child3 = n;
        if (numChildren == 3)
            child4 = n;
        if (numChildren == 4)
            child5 = n;
        if (numChildren < 5)
            numChildren++;
    }
    
    public Node getChild(int childID){
        if (childID == 1)
            return child1;
        if (childID == 2)
            return child2;
        if (childID == 3)
            return child3;
        if (childID == 4)
            return child4;
        if (childID == 5)
            return child5;
    }
    
    public void setData(String data){
        name = data;
    }
    
    public String getData(){
        return name;
    }
    
    public String getKeywords(){
        data = "";
        for (int i = 0; i < 5; i++){
            data += keywords[i];
        }
        return data;
    }
    
    public String toString(){
        data = name + "\nkeywords:";
        for (int i = 0; i < 5; i++){
            data += " " + keywords[i];
        }
        return data;
    }
    
    

}
