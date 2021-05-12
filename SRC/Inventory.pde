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
    rect(20, 20, 350, height-300);
    fill(0,0,255);
    text("Inventory",100,100);
  }
}
