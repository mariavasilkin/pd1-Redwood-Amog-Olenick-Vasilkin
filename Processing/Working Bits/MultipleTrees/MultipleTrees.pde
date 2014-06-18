PFont f;
void setup() {
  size(1000,1000);
  background(25,153,65);
  f = createFont("Arial",30,true);
}
void draw() {
  fill(0);
  textFont(f);
  text("Create Redwood", 300,100);
  text("Active Trees", 0,100);
  fill(255);
  rect(200,200,600,100);
  rect(20,150,150,600);
  
}
  
  
