class Item {
  //member variables
  int object, x, y, h, w;
  String name, description;
  color c1, c2;
  boolean over;
  //constructer
  Item(String name, int x, int y, int h, int w, color c1, color c2, String description) {
    this.name = name;
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    this.c1 = c1;
    this.c2 = c2;
    this.description = description;
    object = int(random(9));
  }
  //member methods
  void display() {
    stroke(0);
    if (over) {
      fill(c1);
      textSize(30);
      text(description, 100, 800);
    } else {
      fill(c2);
    }

    rect(x, y, w, h);
    fill(255, 0, 0);
    textSize(15);
    text(name, x+30, y+50);
  }
  
  void hover() {
    over = (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h);
  }

  void take() {
  }

  void itemFunction() {
    switch(object) {
    case 0: // SpellBook

      break;
    case 1: // locket
      break;
    case 2: // bully spells
      break;
    case 3: // knight key
      break;
    case 4: // lockpick note
      break;
    case 5: // chamber key
      break;
    case 6: // chains
      break;
    case 7: // lock
      break;
    case 8: // vault key
      break;
    case 9: // goblet
      break;
    }
  }
}

