class Bloom {
  //Bloom annimation
  //this is to make the circles "bloom"
  //but idk how to incorporate it
  int time;
  int radius = 0;
  int XCor;
  int YCor;

  Bloom(int x, int y){
    XCor = x;
    YCor = y;
  }
  
  void setup() {
    size(200, 200);
    time = millis();
    background(0);
    noLoop();
  }
  void draw() {
    while ( (millis () - time) > 50) {
      if (radius < 150) {
        stroke(0);//idk how to fill it though????
        ellipse(XCor, YCor, radius, radius);
        radius += 5;
        time = millis();
      } else return;
    }
  }  
}

