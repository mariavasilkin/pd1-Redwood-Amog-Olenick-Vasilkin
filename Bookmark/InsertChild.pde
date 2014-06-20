class InsertChild{
  AddNewName aN = new AddNewName();
  AddNewURL aU = new AddNewURL();
  Layer primaryLayer = new Layer();

  Node child;
  
  int xcor, ycor;
  void draw(){
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
     mustRedraw = true;
     numChildren++;
     creatingChild = false;
    }

  }

void redraw(){
 drawSeed();
 primaryLayer.drawLayer();
}

Layer getLayer(){
 return primaryLayer; 
}

 void drawSeed(){
    fill(205,92,92);
    ellipse(seed.getXCor(), seed.getYCor(), 200, 200);
     fill(0);
    text(seed.getName(), seed.getXCor()-80, seed.getYCor()); 
 } 
 

}
