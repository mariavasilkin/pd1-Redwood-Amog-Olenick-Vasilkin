float xPosition = 50;
float yPosition = 450;
void setup() {
  size (1000,1000);
  noStroke();
  fill(0,20,220);
  
}
void draw() {
 background(0);
 fill(0,20,220);
 ellipse(350,250,100,100);
 fill(0,220,20);
 ellipse(xPosition,yPosition, 100, 100);
 xPosition += (350 - xPosition) / 10;
 yPosition += (250 - yPosition) / 10; 
}
