class InsertName {
  //String insert = "";
  //String typing = "";
  void draw() {
    fill(255);
    rect(400, 150, 600, 40);  
    fill(150);
    stroke(255);
    if (parent) {
    text("Insert Bookmark: ", 500, 100);
    fill(0);
    text(typing, 400, 190);
    }
    else {
        text("Insert Bookmark: ",displayWidth - 400, 50);
      fill(0);
      text(typing, displayWidth - 400, 50);
    } 
  }
}

