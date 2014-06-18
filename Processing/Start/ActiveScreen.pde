class ActiveScreen {

  void draw() {
    fill(0);
    textFont(font);
    text("Active Trees: ", 0, 100);
    fill(255);
    rect(400, 150, 600, 100);
    rect(20, 150, 150, 600);
    ellipse(600, 450, 200, 200);
  }
}

