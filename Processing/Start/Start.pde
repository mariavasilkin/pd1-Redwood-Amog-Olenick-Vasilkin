boolean firstTime;
/*first time running program at all. 
 If the file that you're writing to isn't empty, then you use active screen.
 If it is empty, you use FirstTime
 */
boolean setUp;//is it set up w/ a start screen yet?
boolean nameEntered; //if you haed an insert
boolean URLEntered;
PFont font;

FirstTime f;
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
  firstTime = true;
  setUp = false;
  nameEntered = false;
  URLEntered = false;
  f = new FirstTime();
  aS = new ActiveScreen();
  iN = new InsertName();
  iU = new InsertURL();
}
void keyPressed() {
  if (key != CODED) {
    switch(key) {
    case BACKSPACE:
      fill(0);
      typing = typing.substring(0, max(0, typing.length()-1));

      break;
    case ENTER :
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

void pressedEnter() {
  if (!nameEntered) {
    insert = typing;
    typing = "";
    nameEntered = true;
    clear();
    setup();
  } else {
    URL = typing;
    URLEntered = true;
  }
  println(insert);
  println(URL);
  n= new Node(insert, URL);
}
void createNode() {
 fill(46,87,0); 
  ellipse(500, 500, 100, 100);
}
  
void draw() {
  if (!setUp) {
    if (firstTime) {
      f.draw();
      firstTime = false;
    } else 
      aS.draw();
    setUp = true;
  } 
  if (!nameEntered) {
    iN.draw();
  } 
  if (nameEntered && !URLEntered) {
    iU.draw();
  }
  if (nameEntered && URLEntered){
    createNode();
  }
}

