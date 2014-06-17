class StartScreen{
  //Search search;
  String input = "";
  String typing= "";
  PFont f = createFont("Arial", 20, true);
  StartScreen() {
    f = createFont("Arial", 20, true);
  }

  void keyReleased() {
    if (key != CODED) {
      switch(key) {
      case BACKSPACE:
        typing = typing.substring(0,max(0,typing.length()-1));
       case ENTER :
         input = typing;
        //search = new Search(input);
      default:
        typing += key;
      }
     }
  }
  void draw() {
     textFont(f);
     fill(0);
     text(typing, 125, 70);

  }
}   
