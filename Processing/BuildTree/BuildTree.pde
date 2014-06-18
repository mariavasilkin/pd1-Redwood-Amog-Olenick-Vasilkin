String parent = "pineapple";
ArrayList<String> children = new ArrayList<String> ();
DisplayTree tree;
void setup() {
    size(1000,1000);
    background(0,155,100);
    children.add("ananas");
    children.add("yellow");
    children.add("sponge");
    children.add("food");
    children.add("Hawaii");
    tree = new DisplayTree(parent, children);
    tree.setup();
}
void draw() {
  tree.draw();
}
