//Bloom b = new Bloom(3);
Search s = new Search();
void setup() {
  size(1000,1000);
  background(0);
  s.updateTime();
}
void draw() {
  s.draw();
  //b.draw();
}
