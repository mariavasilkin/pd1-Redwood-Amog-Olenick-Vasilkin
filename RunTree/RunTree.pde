//Bloom b = new Bloom(3);
//Search s = new Search();
String input = "";
PFont font = createFont("Arial", 30,true);
StartScreen s = new StartScreen();
void setup() {
  size(1000, displayHeight);
  background(0);
  textFont(font);
  text("Search something: ", 125, 30);
  fill(255);
  rect(0,100,1000,200);
  fill(0);
}
  void keyReleased() {
    if (key != CODED) {
      switch(key) {
      case BACKSPACE:
        input = input.substring(0,max(0,input.length()-1));
       case ENTER :
         text(input,125,70);
        //search = new Search(input);
      default:
        input += key;
      }
     }
  }
void draw() {
  s.draw();
//  s.draw();
  //b.draw();
}
