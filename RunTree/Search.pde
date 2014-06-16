class Search {
  String parent;
  int time;
  int XCor;
  int YCor;
  int radius = 0;
  Search() {
    XCor = 0;
    YCor = 1;
  }
  Search(String search) {
    parent = search;
  }
  void setTime(int t) {
     time = t;
  }
  void bloom(int child) {
        if (child == 1) {
      XCor = 50;
      YCor = 450;
    }
    else if (child == 2) {
      XCor = 200;
      YCor = 450;
    }
    else if (child == 3) {
      XCor = 350;
      YCor = 450;
    }
    else if (child == 4) {
      XCor = 500;
      YCor = 450;
    }
    else if (child == 5) {
      XCor = 650;
      YCor = 450;
    }
    else {};
     while ((millis() - time) > 50) {
       if (radius < 100) {
         stroke(255,255,255);
         ellipse(XCor,YCor,radius,radius);
         fill(255);
         ellipse(XCor,YCor,radius,radius);
         radius += 5;
         time = millis();
       }
       else return;
     }
  void draw() {
      ellipse(800,800,50,50);
      bloom(1);
      bloom(2);
      bloom(3);
      bloom(4);
      bloom(5);
      
  }
}
  
