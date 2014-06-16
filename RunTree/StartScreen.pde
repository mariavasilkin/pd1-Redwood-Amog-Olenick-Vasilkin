class StartScreen{
  String search;
  StartScreen() {
      fill(130);
  }
  void draw() {
         ellipse(100,900,50,50);
  }
/*  void keyReleased() {
    if (key != CODED) {
      switch(key) {
      case BACKSPACE:
        search = search.substring(0,max(0,search.length()-1));
      case ENTER :
//want to close the text thing here
        Search(search);
      default:
        search += key;
      }
    }*/
} 
