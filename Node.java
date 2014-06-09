 //Node for binary tree
public class Tree {
    private String data; //URL or heading on Node in processing? information or file
    private Node child1, child2, child3, child4, child5;
    
    public Node (int n) {
	data = n;
	left = null;
	right = null;
    }
    /* public boolean hasChildren() {
	return !(child1 == null && right == null);
    }
I'm not sure if this method will still be relevant for our purposes.
    */
    public void setData(int n) {
	data = n;
    }
    public String getData() {
	return data;
    }
    public void setChild(int c, Node n) {
	if (c ==1 ) {
	    child1 = n;
	}
	else if (c == 2) {
	    child2 = n;
	}
	else if (c == 3) {
	    child3 = n;
	}
	else if (c == 4) {
	    child4= n;
	}
	else if (c == 5) {
	    child5 = n;
	}
	else {
	    return;
	}
	/*	String var = whichChild(c);
	if
    }
    public String getName(Node child) {
	
    }
    public String whichChild (int c){
	String whichChild = "child" + c;
	return whichChild;
    }*/
    public Node getLeft() {
	return left;
    }
    public void setRight(Node n) {
	right = n;
    }
    public Node getRight() {
	return right;
    }
    public String toString() {
	return "" + data;
    }
	    
}
