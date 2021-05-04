 class Inventory {
  //memeber variables
  int x, y;
  color c;
  //boolean error, pls fix
  boolean takenItem(Item item) {
  }
  //constructor
  Inventory(color c){
    this.c = c;
  }
  //memeber methods
  void display() {
    //trying to set up parameters, should take up right half of screen
   background(c);
   rect(750,height/2,width/2,height);
   
  }
  void addItem() {
  }
  void useItem() {
  }
  void discardItem() {
  }
}
