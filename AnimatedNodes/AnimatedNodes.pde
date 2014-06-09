String search = "";
PFont f;
int chosenChild = -1; 
void setup() {
    size(1000,1000);
    f = createFont("Arial", 20, true);
    fill(0);
    text("Search something: ", 125, 30);
    fill(255);
    rect(125,50,200,50);
}
void draw() {
    textFont(f);
    fill(0);
    text(search, 125, 70);
}
void keyReleased() {
    if (key != CODED) {
      switch(key) {
      case BACKSPACE:
        search = search.substring(0,max(0,search.length()-1));
      case ENTER :
        nodes();
      default:
        search += key;
      }
    }
}   
void nodes() {
  clear();
  fill(255);
  textFont(f);
  text(search, 100, 100); 
  ellipse(350,250,100,100); 
  ellipse(50,450,100,100);
  ellipse(200,450,100,100);
  ellipse(350,450,100,100);
  ellipse(500,450,100,100);
  ellipse(650,450,100,100);
  
} 
void mousePressed() {
  textFont(f);
  if (clicked() == 1) {
    chosenChild = 1; 
    text("1", 350,250);
  }
  else if (clicked() == 2) {
    chosenChild = 2;
    text("2",350,250);
  }
  else if(clicked() == 3) {
    chosenChild = 3;
      text("3",350,250);
  }
  else if(clicked() == 4) {
    chosenChild = 4;
      text("4",350,250);
  }
    else if(clicked() == 5) {
      chosenChild = 5;
      text("5",350,250);
  }
    else if(clicked() == -1) {
      text("-1",350,250);
  }
  
}
int clicked() {

    if(mouseX >= 0 
    && mouseX <= 100 
    && mouseY >= 400 
    && mouseY <= 500) {
        return 1;
    }
    else if (mouseX >= 150 
    && mouseX <= 250 
    && mouseY >= 400 
    && mouseY <= 500) {
        return 2;
    }
    else if (mouseX >= 300 
    && mouseX <= 400 
    && mouseY >= 400 
    && mouseY <= 500) {
        return 3;
    }
    else if (mouseX >= 450 
    && mouseX <= 550 
    && mouseY >= 400 
    && mouseY <= 500) {
        return 4;
    }
    else if (mouseX >= 600 
    && mouseX <= 700 
    && mouseY >= 400 
    && mouseY <= 500) {
        return 5;
    }
    else return -1;
}
    
