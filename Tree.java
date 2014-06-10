public class Tree {
    //Children are child1, child2.......
    private Node root;
    private int current = 0; //should be 1-5
    public Tree() {
	root = null;
    }

    public void insert (int x) {
	Node p = search(x);
	Node n = getParent(p);
    }

    public void insert2 (Node p, int index) {
	if (root == null) {
	    root = p;
	    return;
	}
	Node prev = root;
	while (current < 5) {
	    prev.setChild(current, p);
	while (prev.hasChildren()){
	    if (p.getData() < prev.getData()) {
		prev = prev.getRight();
	    }
	    else prev = prev.getLeft();
	}
	if (p.getData() < prev.getData())
	    prev.setLeft(p);
	else prev.setRight(p);
	
    }	
    public Node search (int x) {
	Node p = root;
	while(p!= null && p.getData()!= x) {
	    if (p.getData() > x) 
		p = p.getRight();
	    else p = p.getLeft();
	}
	return p;
    }


    public Node search2 (Node p, int x) {
	if (p != null && root.getData() == x) {	
	    return root;
	}
	else if (root.hasChildren()) {
	    if (x < root.getData()) {
		return search2(root.getLeft(), x);
	    }
	    else return search2(root.getLeft(), x);
	}
	else return null;
    }

    public Node getParent (Node p) {
	Node n = root;
        while (n.getRight()!=p && n.getLeft()!=p) {
	    if (p.getData() < n.getData()) 
		n = n.getLeft();
	    else n = n.getRight();
	}
	return n;
    }
	    

    public void delete(int x) {
	Node p = search(x);
	Node parent = getParent(p);
	Node n = p;
	if (p == root) {
	    
	}
	else if (p.getLeft() == null) {
	    n = p.getRight();
	}
	else if (p.getRight() == null) {
	    n = p.getLeft();
	}
	else {
	    Node temp = p.getLeft();
	    while (temp.getRight() != null) {
		temp = temp.getRight();
	    }
	    n = temp;
	}
	if (n.getData() < parent.getData())
	    parent.setLeft(n);
	else parent.setRight(n);
		
    }

    public String print() {
	return printHelper(root);
    }

    public String printHelper(Node n) {
	String leftSide = "";
	if (n.getLeft() != null) {
	    leftSide += n;
	    printHelper(n.getLeft());
	    printHelper(n.getRight());
	}
	String rightSide = "";
	
    }
}