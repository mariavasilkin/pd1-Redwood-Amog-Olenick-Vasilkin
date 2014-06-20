class BuildTree{
 Node seed;
 Node child;
 Layer primaryLayer;
 
 //for insertSeed()
 InsertName iN = new InsertName();
 InsertURL iU = new InsertURL();
 //for insertChild()
 AddNewName aN = new AddNewName();
 AddNewURL aU = new AddNewURL();
  
 int xcor, ycor;

 void draw(){
   if(isSeed){
     insertSeed(); 
   }
   if(!isSeed && !creatingChild){
     nameEntered = false;
     URLEntered = false;
     creatingChild = true;
   }
   if(creatingChild)
     insertChild();
 }

  void insertSeed(){
    if (!nameEntered) {
        iN.draw();
    } 
    if (nameEntered && !URLEntered) {
      iU.draw();
    }
    if(nameEntered && URLEntered){
      xcor = (displayWidth-200)/2 + 200;
      ycor = displayHeight/4;
      seed = new Node(name, URL, xcor, ycor);
      String text = seed.getText();
      //println(text);
      primaryLayer = seed.getLayer();
      drawSeed();      
      
      aT.setActiveTree(seed.getName());
      numTrees++;
      aT.draw();
      
      isSeed = false;  
    }
  }
  
  void insertChild(){
    if (mustRedraw){
       redraw();
       mustRedraw = false;
     }
    if (!nameEntered) {
      aN.draw();
    } 
    if (nameEntered && !URLEntered) {
      aU.draw();
    }
    if (nameEntered && URLEntered){
      xcor = displayWidth/4; 
      ycor = 3*(displayHeight/5);
      if(numChildren == 0){
        child = new Node(name,URL, xcor, ycor);

      }
      if(numChildren == 1){
       xcor = xcor + 300;
       child = new Node(name, URL, xcor, ycor); 
      }
     if(numChildren == 2){
       xcor = xcor + 600;
       child = new Node(name, URL, xcor, ycor); 
      }
      if(numChildren == 3){
       xcor = xcor + 900;
       child = new Node(name, URL, xcor, ycor); 
      }
      if(numChildren == 4){
       xcor = xcor + 1200;
       child = new Node(name, URL, xcor, ycor); 
      }
     primaryLayer.addChild(child);
     child.getText();
     mustRedraw = true;
     numChildren++;
     creatingChild = false;
    }  
  }

void drawSeed(){
   fill(205,92,92);
   ellipse(seed.getXCor(), seed.getYCor(), 200, 200);
   fill(0);
   text(seed.getName(), seed.getXCor()-80, seed.getYCor()); 
  }

void redraw(){
  drawSeed();
  primaryLayer.drawLayer();
}  
}
