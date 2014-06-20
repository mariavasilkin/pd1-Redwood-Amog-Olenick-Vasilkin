class AddNewURL{
  void draw(){
    fill(255);
    rect(displayWidth - 600, 50, 450, 40);
    stroke(255);
    fill(150);  
   if (!hasHeading){
      text("Add URL: ", displayWidth - 600, 50);
      hasHeading = true;
    }
    fill(0);
    text(typing, displayWidth - 600, 50);
  }
}
