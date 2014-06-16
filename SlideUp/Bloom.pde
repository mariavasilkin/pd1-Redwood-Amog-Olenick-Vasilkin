//Bloom annimation
//this is to make the circles "bloom"
//but idk how to incorporate it
int time;
int radius = 0;

void setup() {
  size(200,200);
    time = millis();
    background(0);

}
void draw() {
   while ((millis() - time) > 50) {
     if (radius < 100) {
       stroke(255,255,255);//idk how to fill it though????
       ellipse(100,100,radius,radius);
       fill(0);
       ellipse(100,100,radius,radius);
       radius += 5;
       time = millis();
     }
     else return;
   }
}  
