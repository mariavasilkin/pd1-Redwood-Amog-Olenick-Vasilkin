StartScreen start;
void setup() {
  size(1000,1000);
  start = new StartScreen();
  noLoop();
}
void draw() {
  start.keyReleased();
}

