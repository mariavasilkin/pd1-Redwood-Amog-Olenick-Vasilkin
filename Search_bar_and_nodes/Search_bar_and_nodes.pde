String search = "";
String parentNode = "";
String childNode = "";
PFont f;
void setup() {
    size(500,500);
    f = createFont("Arial", 20, true);
    fill(0);
    text("Search something: ", 125, 30);
    fill(255);
    rect(125,50,200,50);
}
void draw() {
    textFont(f);
    fill(0);
    text(search, 125, 70);//this should dissapear when i clear but doesn't
}
void keyReleased() {
    if (key != CODED) {
      switch(key) {
      case BACKSPACE:
        search = search.substring(0,max(0,search.length()-1));
      case ENTER :
//want to close the text thing here
        nodes();
      default:
        search += key;
      }
    }
}
void nodes() {
  background(0);
  fill(255);
  rect(0,0,500,100);
  fill(0);
  text(search,20,20); 
  fill(255);
  ellipse(250,150,80,80);
  fill(255);
  ellipse(50,250,80,80);
  ellipse(150,250,80,80);
  ellipse(250,250,80,80);
  ellipse(350,250,80,80);
  ellipse(450,250,80,80);
  text("Double-click a node to search",150,350);//doesn't actually work at all yet
}
