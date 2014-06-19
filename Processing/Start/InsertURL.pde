class InsertURL {
  void draw() {
    fill(150);
    if (parent) {
    text("Insert URL: ", 500, 100);
    fill(0);
    text(typing, 400, 140);    
    }
    else {
        text("Insert URL: ", displayWidth - 400, 50);
    fill(0);
    text(typing, displayWidth - 400, 50);      
    }
  } 
}
