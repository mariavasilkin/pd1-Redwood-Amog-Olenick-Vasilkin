String search = "";;
PFont f;
void setup() {
    size(400,400);
    f = createFont("Arial", 20, true);
    fill(0);
    text("Search something: ", 125, 30);
    fill(255);
    rect(125,50,200,50);
}
void draw() {
    textFont(f);
    fill(0);
    text(search, 125, 70);
}
void keyReleased() {
    if (key != CODED) {
      switch(key) {
      case BACKSPACE:
        search = search.substring(0,max(0,search.length()-1));
      case ENTER :
        nodes();
      default:
        search += key;
      }
    }
}
void nodes() {
  clear();
  fill(255);
  ellipse(200,50,80,80);
  textFont(f);
  println(search, 100, 100); 
  ellipse(50,150,80,80);
  ellipse(150,150,80,80);
  ellipse(250,150,80,80);
  ellipse(350,150,80,80);
}
