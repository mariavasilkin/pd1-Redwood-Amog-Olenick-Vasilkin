class ActiveTrees {
  String aT0, aT1, aT2, aT3, aT4, aT5, aT6, aT7, aT8, aT9; 
  ActiveTrees(){
  aT0 = "";
  aT1 = "";
  aT2 = "";
  aT3 = "";
  aT4 = "";
  aT5 = "";
  aT6 = "";
  aT7 = "";
  aT8 = "";
  aT9 = "";
  }
  
  String getaT(){
   return aT0; 
  }
  
  void setActiveTree(String display){
    if(numTrees == 0)
      aT0 = display;
    if(numTrees == 1)
      aT1 = display;
    if(numTrees == 2)
      aT2 = display;
    if(numTrees == 3)
      aT3 = display;
    if(numTrees == 4)
      aT4 = display;
    if(numTrees == 5)
      aT5 = display;
    if(numTrees == 6)
      aT6 = display;
    if(numTrees == 7)
      aT7 = display;
    if(numTrees == 8)
      aT8 = display;
    if(numTrees == 9)
      aT9 = display;
  }
  
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
  displayText();
}
  
  void displayText(){
    int x = 20;
    fill(0);
    if(numTrees >= 1)
      text(aT0, x, 75);  
    if(numTrees >= 2)
      text(aT1, x, 115);
    if(numTrees >= 3)
      text(aT2, x, 155);
    if(numTrees >= 4)
      text(aT3, x, 195);
    if(numTrees >= 5)
      text(aT4, x, 235);
    if(numTrees >= 6)
      text(aT5, x, 275);
    if(numTrees >= 7)
      text(aT6, x, 315);
    if(numTrees >= 8)
      text(aT7, x, 355);
    if(numTrees >= 9)
      text(aT8, x, 395);
    if(numTrees >= 10)
      text(aT9, x, 435);
  }
}
