PFont font1;
PFont font2;

boolean hasSetup;
boolean nameEntered;
boolean URLEntered;

String typing;
String insert;
String URL;
Start s;

void setup(){
  size(displayWidth, displayHeight);
  background(150, 220, 150);
  font1 = createFont("Arial", 30, true);
  font2 = createFont("Arial", 20, true);
  s = new Start();
  hasSetup = false;
  URLEntered = false;
  nameEntered = false;
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

void reset() {  
  background(150, 220, 150);
  typing = "";
  s.draw();
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

void draw(){
  if(!hasSetup){
   s.draw();
  hasSetup = true;
  }
 else{
  
 } 
}
