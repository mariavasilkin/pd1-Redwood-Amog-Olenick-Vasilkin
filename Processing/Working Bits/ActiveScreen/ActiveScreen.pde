PFont f;
void setup() {
  size(displayWidth,displayHeight);
  background(25,153,65);
  f = createFont("Arial",30,true);
}
void draw() {
  fill(0);
  textFont(f);
  text("Active Trees: ", 0,100);
  text("Insert Bookmark: ", 500,100);
  fill(255);
  rect(20,125,200,400);
  rect(400,125,400,75);
  ellipse(600,450,200,200);
}
  
  
