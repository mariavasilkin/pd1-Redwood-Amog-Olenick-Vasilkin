class Node{
  String nodeName;
  String website;
  int xcor, ycor;
  
 Node(String n, String w, int x, int y){
  nodeName = n;
  website = w;
  xcor = x;
  ycor = y;
 } 
 
 String getName(){
  return nodeName; 
 }
 String getURL(){
  return website;   
 }
 int getXCor(){
  return xcor; 
 }
 int getYCor(){
  return ycor; 
 }
  void draw(){
   
  } 
}
