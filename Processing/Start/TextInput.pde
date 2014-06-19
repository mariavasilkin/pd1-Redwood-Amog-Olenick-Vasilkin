class TextInput {
  void draw() {

    if (!nameEntered) {
      iN.draw();
    } 
    if (nameEntered && !URLEntered) {
      iU.draw();
    }
    if (nameEntered && URLEntered) {
      n = new Node(insert, URL, activeTrees);
      n.draw();
      activeTrees ++;
      noLoop();
      parent = false;
    }
  }
}

