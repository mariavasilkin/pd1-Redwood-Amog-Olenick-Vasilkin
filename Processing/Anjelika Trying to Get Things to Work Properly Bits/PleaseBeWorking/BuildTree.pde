class BuildTree{
 Node seed;
 
 void draw(){
   if(isSeed){
     iS.draw(); 
   }
   if(!isSeed && !creatingChild){
     nameEntered = false;
     URLEntered = false;
     creatingChild = true;
   }
   if(creatingChild)
     iC.draw();
 } 
}
