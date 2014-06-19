class InsertParent {
  InsertName iN;
  InsertURL iU;

  InsertParent() {
    iN = new InsertName();
    iU = new InsertURL();
  }
  void draw() {
    if (!nameEntered)
      iN.draw();
    if (nameEntered && !URLEntered)
      iU.draw();
  }
}


