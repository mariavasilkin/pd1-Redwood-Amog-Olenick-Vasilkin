PFont font1;
PFont font2;

boolean hasSetup;
boolean nameEntered;
boolean URLEntered;
boolean hasHeading;
boolean mustRedraw;
boolean isSeed;
boolean creatingChild;

String typing;
String name;
String URL;

int numChildren;
int numTrees;

ActiveTrees aT;
InsertSeed iS;
InsertChild iC;
BuildTree bT;

Node seed;
/*Node child1;
Node child2;
Node child3;
Node child4;
Node child5;*/

void setup(){
  size(displayWidth, displayHeight);
  background(150, 220, 150);
  font1 = createFont("Arial", 30, true);
  font2 = createFont("Arial", 20, true);
  hasSetup = false;
  URLEntered = false;
  nameEntered = false;
  hasHeading = false;
  mustRedraw = false;
  isSeed = true;
  creatingChild = false;
  numChildren = 0;
  typing = "";
  name = "";
  URL = "";
  aT = new ActiveTrees();
  iS = new InsertSeed();
  iC = new InsertChild();
  bT = new BuildTree();
  
}

void draw(){
   if (!hasSetup){
    aT.draw();
    hasSetup = true;
   }
   else{
    bT.draw(); 
   }
   
 }

void keyPressed() {
  if (key != CODED){
   switch(key){
    case BACKSPACE:
      fill(0);
      typing = typing.substring(0, max(0, typing.length()-1));
      break;
    case ENTER:
      pressedEnter();
    default:
      typing += key;
   } 
  }
}

void pressedEnter(){
    if(!nameEntered){
      name = typing;
      typing = "";
      hasHeading = false;
      nameEntered = true;
    }
    else{
      URL = typing;
      typing = "";
      hasHeading = false;
      URLEntered = true;
    }
    //println(name);
    //println(URL);
    if (creatingChild)
      mustRedraw = true;
    reset();
}

void reset(){
  background(150, 220, 150);
  typing = "";
  aT.draw();
}
