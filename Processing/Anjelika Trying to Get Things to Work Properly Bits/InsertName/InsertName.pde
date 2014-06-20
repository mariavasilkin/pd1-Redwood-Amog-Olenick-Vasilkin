String typing = "";
PFont font1;
PFont font2;
void setup(){
  size(displayWidth, displayHeight);
  background(150, 220, 150);
  font1 = createFont("Arial", 30, true);
  font2 = createFont("Arial", 20, true);
}

void draw() {
    fill(255);
    rect(400, 150, 600, 40);  
    fill(150);
    stroke(255);

    text("Insert Bookmark: ", 500, 100);
    fill(0);
    text(typing, 400, 190);
    }

void keyPressed() {
  if (key != CODED){
   switch(key){
    case BACKSPACE:
      fill(0);
      typing = typing.substring(0, max(0, typing.length()-1));
      break;
    default:
      typing += key;
   } 
  }
}
