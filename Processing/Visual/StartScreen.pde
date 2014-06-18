
class StartScreen {
  // String parentNode = "";
  // String childNode = "";
  String search ;
  String typing ;
  boolean isTyping = true;
  PFont f;
  //  int chosenChild = -1; 
  // int time;
  //int radius = 0;

  StartScreen() {
    search = "";
    typing = "";
    f = createFont("Arial", 20, true);
    fill(0);
    text("Search something: ", 125, 30);
    fill(255);
    rect(125, 50, 200, 50);
  }
  boolean isTyping() {
      return isTyping;
  }
  void draw() {
    textFont(f);
    fill(0);
    text(typing, 125, 70);//this should dissapear when i clear but doesn't
  }
  void keyReleased() {
    if (key != CODED) {
      switch(key) {
      case BACKSPACE:
        typing = typing.substring(0, max(0, typing.length()-1));
      case ENTER :
        search = typing;
        isTyping = false;
        return;
      default:
        typing += key;
      }
    }
  }
  String getSearchString() {
    return search;
  }
}

