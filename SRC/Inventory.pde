class Inventory {
  //memeber variables
  int x, y;
  color c;
  //boolean takenItem(Item item) {
  //}
  //constructor
  Inventory(color c) {
    this.c = c;
  }
  //memeber methods
  void display() {
    stroke(#9E40E3);
    strokeWeight(20);
    fill(c);
    rect(250, height-750, 500, 500);
  }
  void addItem() {
  }
  void useItem() {
  }
  void discardItem() {
  }
}
