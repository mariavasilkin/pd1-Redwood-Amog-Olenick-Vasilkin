class Layer{
 Node child1;
 Node child2;
 Node child3;
 Node child4;
 Node child5;

  void addChild(Node n){
    if(numChildren == 0)
       child1 = n;
    if(numChildren == 1)
       child2 = n;
    if(numChildren == 2)
       child3 = n;
    if(numChildren == 3)
      child4 = n;
    if(numChildren == 4)
       child5 = n;  
  } 
  
  void drawLayer(){
   if(numChildren >= 1)
     drawChildNode(child1);
     if(numChildren >= 2)
     drawChildNode(child2);
     if(numChildren >= 3)
     drawChildNode(child3);
     if(numChildren >= 4)
     drawChildNode(child4);
     if(numChildren == 5)
     drawChildNode(child5);
     
  }
  void drawChildNode(Node n){
    int xcor = n.getXCor();
   int ycor = n.getYCor(); 
    fill(205,92,92);
     ellipse(xcor, ycor, 200, 200);
     fill(0);
     text(n.getName(),xcor - 80,ycor-10);
  } 
}
