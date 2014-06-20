class BuildLayer{
  AddNewName aN = new AddNewName();
  AddNewURL aU = new AddNewURL();
  
  Layer l = new Layer();
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
        child1 = new Node(name,URL, xcor, ycor);
        child = child1;
      }
      if(numChildren == 1){
       xcor = xcor + 300;
       child2 = new Node(name, URL, xcor, ycor);
      child = child2; 
      }
     if(numChildren == 2){
       xcor = xcor + 600;
       child3 = new Node(name, URL, xcor, ycor);
      child = child3; 
      }
      if(numChildren == 3){
       xcor = xcor + 900;
       child4 = new Node(name, URL, xcor, ycor);
      child = child4; 
      }
      if(numChildren == 4){
       xcor = xcor + 1200;
       child5 = new Node(name, URL, xcor, ycor);
      child = child5; 
      }
     l.addChild(child);
     mustRedraw = true;
     numChildren++;
     creatingChild = false;
    }

  }

void redraw(){
 drawParent();
 l.drawLayer();
} 
 void drawParent(){
    fill(205,92,92);
    ellipse(parent.getXCor(), parent.getYCor(), 200, 200);
     fill(0);
    text(parent.getName(), parent.getXCor()-80, parent.getYCor()); 
 } 
 

}
