class BackGround {

  //Member Variables
  int x, y;
  String locationName, dialogue;
  PImage photo;

  //Constructor
  BackGround(int x, int y, String locationName, String dialogue) {
    this.x = x;
    this.y = y;
    this.locationName = locationName;
    this.dialogue = dialogue;
  }
  
  //Member Methods
  
  void display() {
    fill(120);
    text(dialogue, 100,100);
  }
  
  void changeLocation() {
  }
}
