class InsertSeed{
  
  InsertName iN = new InsertName();
  InsertURL iU = new InsertURL();
  int xcor = (displayWidth-200)/2 + 200;
  int ycor = displayHeight/4;
  Node n;
  void draw(){
   if (!nameEntered) {
      iN.draw();
    } 
    if (nameEntered && !URLEntered) {
      iU.draw();
    }
    if(nameEntered && URLEntered){
      createSeed();   
      drawSeed();      
      
      aT.setActiveTree(seed.getName());
      numTrees++;
      aT.draw();
      
      isSeed = false; 
    }
  
  }
  void createSeed(){
    seed = new Node(name, URL, xcor, ycor);
      String text = seed.getText();
      println(text);
  }
  void drawSeed(){
     fill(205,92,92);
      ellipse(xcor, ycor, 200, 200);
      fill(0);
      text(seed.getName(), xcor-80, ycor-10);
  }
}

