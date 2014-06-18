class SlideUp {
  float XCor;
  float YCor = 550;
  SlideUp(int whichChild) { //children labeled 1-5
    XCor = (float) ((whichChild * 200) -100);
  }

  void draw() {
    background(0);
    fill(0, 20, 220);
    ellipse(500, 250, 100, 100);
    fill(0, 220, 20);
    ellipse(XCor, YCor, 100, 100);
    XCor += (float) (500 - XCor) / 20; //what youd ivide by affects the speed of the child
    YCor += (float) (250 - YCor) / 20;
  }
}

