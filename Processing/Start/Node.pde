class Node {

  String name;
  String website;
  int trees;
  Bloom b;
  TextInput tI;
  Node(String n, String w, int activeTrees) {
    name = n;
    website = w;
    trees = activeTrees;
    b = new Bloom(600, 450);
    fill(150);
    tI = new TextInput();
  }
  String getSite() {
    return website;
  }
  String getN() {
    return name;
  }
  void draw() {
    ellipse((displayWidth-200)/2 + 200, (displayHeight/4), 200, 200);
    fill(255);
    rect(displayWidth - 400, 50, 200, 40);
    fill(150);
    text("Add Bookmark: ", displayWidth - 400, 50);
    if (trees <= 10) {
      text(name, 20, 50 + (trees * 40));
    } else 
      text("Error-- too many trees", 400, 600);
    tI.draw();  
  }
  //  b.draw();
}

