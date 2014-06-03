int circleX, circleY;
int circleSize = 90;

CircleButton circle1, circle2, circle3;

void setup() {
    println("Click on any Node to show its children");
    size(200, 200);
    smooth();
    
     color buttoncolor = color 204;
     ellipseMode(CENTER);
       circle1 = new CircleButton(30, 100, 100, buttoncolor, highlight);

void draw() {
    update(mouseX, mouseY);
    circle1.display();
}

void update(int x, int y) {
    circle1.update();
    if(mousePressed) {
        if(circle1.pressed()) {
           buttoncolor++;
           circle2 = new CircleButton(30, 100, 100, buttoncolor, highlight);
        }
    }
}

  
  
         

