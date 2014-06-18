class SlideUp {
  int XCor;
  int YCor = 550;
  SlideUp(int whichChild) { //children labeled 1-5
    XCor = (whichChild * 200) -100;
  }

  void draw() {
    background(0);
    fill(0, 20, 220);
    ellipse(500, 250, 100, 100);
    fill(0, 220, 20);
    ellipse(XCor, YCor, 100, 100);
    XCor += (500 - XCor) / 10;
    YCor += (250 - YCor) / 10;
  }
}

