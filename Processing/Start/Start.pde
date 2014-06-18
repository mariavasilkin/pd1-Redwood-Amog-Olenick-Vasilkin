
boolean setUp;//is it set up w/ a start screen yet?
boolean nameEntered; //if you haed an insert
boolean URLEntered;
PFont font;

ActiveScreen aS;
InsertName iN;
InsertURL iU;
Node n;
String URL = "";
String insert = "";
String typing = "";
String backspaceTemp; 
void setup() {
  size(displayWidth, displayHeight);
  background(25, 153, 65);
  font = createFont("Arial", 30, true);
  setUp = false;
  nameEntered = false;
  URLEntered = false;

  aS = new ActiveScreen();
  iN = new InsertName();
  iU = new InsertURL();
}
void reSet() {  
    background(25,153,65);
    typing = "";
    aS.draw();
}
void keyPressed() {
  if (!nameEntered || !URLEntered) {
    if (key != CODED) {
      switch(key) {
      case BACKSPACE:
        fill(0);
        typing = typing.substring(0, max(0, typing.length()-1));

        break;
      case ENTER :
        if (!nameEntered || !URLEntered)
          pressedEnter();
        /*if (!nameEntered) {
         insert = typing;
         typing = "";
         clear();
         setup();
         } else {
         URL = typing;
         }
         println(insert);
         println(URL);*/
      default:
        typing += key;
      }
    }Blo
  }
}

void pressedEnter() {
  if (!nameEntered) {
    insert = typing;
    typing = "";
    clear();
    nameEntered = true;
  } else {
    URL = typing;
    URLEntered = true;
  }
  reSet();
  println(insert);
  println(URL);
  n= new Node(insert, URL);
}
void createNode() {
  fill(46, 87, 100); 
  ellipse(600, 450, 200, 200);
}

void draw() {
  if (!setUp) {
      aS.draw();    
    setUp = true;
  } 
  if (!nameEntered) {
    iN.draw();
  } 
  if (nameEntered && !URLEntered) {
    iU.draw();
  }
  if (nameEntered && URLEntered) {
    createNode();
  }
}

