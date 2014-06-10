float xPosition = 0;
float yPosition;

void setup(){
size(450,350);
smooth();
noStroke();
yPosition = height/2;
}

void draw(){
background(0);
fill(0,20,220);
ellipse(xPosition,yPosition,50,50);
// The below line says that the value of xPosition will grow by 2 every frame
xPosition += 2; 
}
