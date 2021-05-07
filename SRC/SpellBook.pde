class SpellBook {
  //memeber variables
  int x, y;
  color c;
  //boolean error, pls fix
  //boolean recievedSpell(Spell spell) {
  //}
  //constructor
  SpellBook(color c) {
    this.c = c;
  }
  //memeber methods
  void display() {
    //trying to set up parameters, should take up left half of screen
    stroke(#9E40E3);
    strokeWeight(20);
    fill(#DBE87C);
    rect(250, height-750, 500, 500);
  }
  void addSpell() {
  }
  void castSpell() {
  }
}

