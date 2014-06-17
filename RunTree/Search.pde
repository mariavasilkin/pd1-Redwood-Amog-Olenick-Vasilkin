class Search {
  String parent;
  int time;
  int XCor;
  int YCor;
  int radius = 0;
  Search() {
    XCor = 0;
    YCor = 0;
  }
  Search(String search) {
    parent = search;
  }
  void updateTime() {
     time = millis();
  }
  void bloom() {
      XCor = 50;
      YCor = 450;
      for (int i = 0; i < 5; i ++) {
        // updateTime();
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
        XCor += 150;

      }
  }
  void draw() {
    bloom();
      
  }
}
  
