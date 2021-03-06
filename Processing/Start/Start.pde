
boolean setUp;//is it set up w/ a start screen yet?
boolean nameEntered; //if you haed an insert
boolean URLEntered;
boolean parent;
int activeTrees = 1;
PFont font1;
PFont font2;
ActiveScreen aS;
InsertName iN;
InsertURL iU;
Node n;
Bloom b;
TextInput tI;
String URL = "";
String insert = "";
String typing = "";
String backspaceTemp; 
void setup() {
  size(displayWidth, displayHeight);
  background(150, 220, 150);
  font1 = createFont("Arial", 30, true);
  font2 = createFont("Arial", 20, true);
  setUp = false;
  nameEntered = false;
  URLEntered = false;
  parent = true;
  aS = new ActiveScreen();
  iN = new InsertName();
  iU = new InsertURL();
  tI = new TextInput();
}
void reset() {  
  background(150, 220, 150);
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
    }
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
  reset();
  println(insert);
  println(URL);
}

/*void createNode() {
 fill(46, 87, 100); 
 b = new Bloom(600, 450);
 n= new Node(insert, URL);
 }*/

void draw() {
  if (!setUp) {
    aS.draw();    
    setUp = true;
  } 
  tI.draw();
}

