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

  void display() {
    if (dialogueOne == true) {
      fill(120);
      text(dialogue1, 600, 600);
    } else if (dialogueOne == false) {
      text("Not dialogue", 600, 600);
    } else if (dialogueTwo == true) {
      text(dialogue2, 600, 600);
    } else if (dialogueTwo == false) {
      text("Not dialogue", 600, 600);
    }
  }
  //  void changeLocation() {
  //  }
}
