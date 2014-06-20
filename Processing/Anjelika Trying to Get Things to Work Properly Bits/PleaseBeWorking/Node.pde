class Node{
  String nodeName;
  String website;
  int xcor, ycor;
  TextConverter tC;
  Layer children;
  
 Node(String n, String w, int x, int y){
  nodeName = n;
  website = w;
  xcor = x;
  ycor = y;
  tC = new TextConverter(n, w);
 } 
 
 Layer getLayer(){
   return children;
 }
 
 String getText(){
  return tC.fromURLtoText(); 
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
