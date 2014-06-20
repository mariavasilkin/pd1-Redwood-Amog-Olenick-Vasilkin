class InsertParent{
  
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
      parent = new Node(name, URL, xcor, ycor);
      fill(205,92,92);
      ellipse(xcor, ycor, 200, 200);
      fill(0);
      text(parent.getName(), xcor-80, ycor-10);
      isParent = false; 
    }
  
  }
}

