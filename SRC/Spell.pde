class Spell {
  //member variables
  String name, description;
  int x, y, h, w;
  color c1, c2;
  boolean over, display;
  //constructor
  Spell(String name, int x, int y, int h, int w, color c1, color c2, String description, Boolean display) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    this.c1 = c1;
    this.c2 = c2;
    this.display = display;
    this.description = description;
  }
  //member methods
  void display() {
    if (display == true) {
      stroke(0);
      if (over) {
        fill(c1);
        textSize(25);
        text(description, 400, 650);
      } else {
        fill(c2);
      }

      rect(x, y, w, h);
      fill(255, 0, 0);
      textSize(15);
      text(name, x+30, y+50);
    }
  }

  void hover() {
    over = (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h);
  }
}

