class ActiveScreen {
  void draw() {
    fill(150);
    textFont(font2);
    text("Active Trees: ", 30, 30);
    fill(255);
    stroke(0);
    rect(20, 50, 175, 40);   
    rect(20, 90, 175, 40);    
    rect(20, 130, 175, 40);    
    rect(20, 170, 175, 40);    
    rect(20, 210, 175, 40);    
    rect(20, 250, 175, 40);    
    rect(20, 290, 175, 40);    
    rect(20, 330, 175, 40);    
    rect(20, 370, 175, 40);    
    rect(20, 410, 175, 40);     



    if (URLEntered) {
      stroke(150, 220, 150);
      fill(150, 220, 150);
    } else fill(255);
    rect(400, 150, 600, 40);
    fill(150);
    textFont(font1);
  }
}

