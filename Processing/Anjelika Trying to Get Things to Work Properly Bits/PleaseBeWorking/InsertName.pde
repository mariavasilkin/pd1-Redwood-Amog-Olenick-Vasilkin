class InsertName {
  void draw() {
    fill(255);
    rect(400, 150, 600, 40);  
    fill(150);
    stroke(255);
    if (!hasHeading){
      text("Insert Bookmark: ", 500, 100);
      hasHeading = true;
    }
    fill(0);
    text(typing, 400, 180);

  }
}

