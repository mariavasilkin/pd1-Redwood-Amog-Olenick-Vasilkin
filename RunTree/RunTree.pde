//Bloom b = new Bloom(3);
StartScreen s = new StartScreen();
void setup() {
  size(1000,1000);
  background(0);
  s.setTime(millis());
}
void draw() {
  s.draw();
  //b.draw();
}
