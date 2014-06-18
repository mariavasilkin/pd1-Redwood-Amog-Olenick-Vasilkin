
class DisplayTree {
  int time = millis();
  int radius = 0;
  int numBuiltNodes;
  String rent;
  ArrayList<String> kids;
  PFont f1;
  PFont f2;
  Bloom p;
  Bloom c1;
  Bloom c2;
  Bloom c3;
  Bloom c4;
  Bloom c5;


  DisplayTree(String parent, ArrayList<String> children) {
    rent = parent;
    kids = children;
    numBuiltNodes = 0;
    f1 = createFont("Arial", 30, true);
    f2 = createFont("Arial", 20, true);
  }

  void setup() {
    noLoop();
  }

  void draw() {
    textFont(f1);
    text(parent, width/2, 50);
    textFont(f2);
    /* p = new Bloom(width/2, 250);
     p.draw();
     c1 = new Bloom(100,550);
     c1.draw();
     c2 = new Bloom(300,550);
     c2.draw();
     c3 = new Bloom(500,550);
     c3.draw();
     c4 = new Bloom(700,550);
     c4.draw();
     c5 = new Bloom(900,550);
     c5.draw();*/

    ellipse(width/2, 250, 150, 150);
    ellipse(100, 550, 150, 150);
    ellipse(300, 550, 150, 150);
    ellipse(500, 550, 150, 150);
    ellipse(700, 550, 150, 150);
    ellipse(900, 550, 150, 150);
    fill(0,0,255);
    text(parent, 450, 250);
    text(kids.get(0), 50, 550);
    text(kids.get(1), 250, 550);
    text(kids.get(2), 450, 550);
    text(kids.get(3), 650, 550);
    text(kids.get(4), 850, 550);
    
  }
}

