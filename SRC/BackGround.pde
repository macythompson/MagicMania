class BackGround {

  //Member Variables
  int x, y;
  String locationName, dialogue1, dialogue2, dialogue3, dialogue4, dialogue5;
  PImage photo;
  boolean dialogueOne, dialogueTwo, dialogueThree, dialogueFour, dialogueFive;

  //Constructor
  BackGround(int x, int y, String locationName, String dialogue1, String dialogue2, String dialogue3, String dialogue4, String dialogue5, Boolean dialogueOne, Boolean dialogueTwo, Boolean dialogueThree, Boolean dialogueFour, Boolean dialogueFive) {
    this.x = x;
    this.y = y;
    this.locationName = locationName;
    this.dialogue1 = dialogue1;
    this.dialogue2 = dialogue2;
    this.dialogue3 = dialogue3;
    this.dialogue4 = dialogue4;
    this.dialogue5 = dialogue5;
    this.dialogueOne = dialogueOne;
    this.dialogueTwo = dialogueTwo;
    this.dialogueThree = dialogueThree;
    this.dialogueFour = dialogueFour;
    this.dialogueFive = dialogueFive;
  }

  //Member Methods
  void dialogue() {
    if (dialogueOne == true) {
      fill(255,0,0);
      textSize(20);
      text(dialogue1, 100, 800);
    } else if(dialogueOne == false) {
      text("", 800, 800);
    } 
    if (dialogueTwo == true) {
      fill(255,0,0);
      textSize(20);
      text(dialogue2, 100, 800);
    } else if(dialogueTwo == false) {
      text("", 800, 800);
    }
    if (dialogueThree == true) {
      fill(255,0,0);
      textSize(20);
      text(dialogue3, 100, 800);
    } else if(dialogueThree == false) {
      text("", 800, 800);
    }
    if (dialogueFour == true) {
      fill(255,0,0);
      textSize(20);
      text(dialogue4, 100, 800);
    } else if(dialogueFour == false) {
      text("", 800, 800);
    }
    if (dialogueFive == true) {
      fill(255,0,0);
      textSize(20);
      text(dialogue5, 100, 800);
    } else if(dialogueFive == false) {
      text("", 800, 800);
    }
  }
  void display() {
  }
}
