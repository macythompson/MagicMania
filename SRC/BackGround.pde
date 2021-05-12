class BackGround {

  //Member Variables
  int x, y;
  String locationName, dialogue1, dialogue2;
  PImage photo;
  boolean dialogueOne, dialogueTwo;

  //Constructor
  BackGround(int x, int y, String locationName, String dialogue1, String dialogue2, Boolean dialogueOne, Boolean dialogueTwo) {
    this.x = x;
    this.y = y;
    this.locationName = locationName;
    this.dialogue1 = dialogue1;
    this.dialogue2 = dialogue2;
    this.dialogueOne = dialogueOne;
    this.dialogueTwo = dialogueTwo;
  }

  //Member Methods
  void dialogue() {
    if (dialogueOne == true) {
      fill(255,0,0);
      textSize(20);
      text(dialogue1, 100, 900);
    } else if(dialogueOne == false) {
      text("", 800, 800);
    } 
    if (dialogueTwo == true) {
      fill(255,0,0);
      textSize(20);
      text(dialogue2, 100, 900);
    } else if(dialogueTwo == false) {
      text("", 800, 800);
    }
  }
  void display() {
  }
}
