Item[] items = new Item[8];
Spell[] spells = new Spell[10];
Inventory inventory;
SpellBook spellbook;
//The following booleans are for showing the different screens: getting out of start screen and opening inventory/spellbook
boolean play;
boolean openInventory;
boolean openSpellBook;

void setup() {
  size(1000, 1000);
  inventory = new Inventory(#FF00FF);
  spellbook = new SpellBook(#000AFA);
  //Struggling to set up arrays, can you help?
  items[0] = new Item("locket");
  items[1] = new Item("knightKey");
  items[2] = new Item("lockPickNote");
  items[3] = new Item("chamberKey");
  items[4] = new Item("chains");
  items[5] = new Item("lock");
  items[6] = new Item("vaultKey");
  items[7] = new Item("goblet");
  spells[0] = new Spell("jump");
  spells[1] = new Spell("fire");
  spells[2] = new Spell("pierce");
  spells[3] = new Spell("distract");
  spells[4] = new Spell("snatch");
  spells[5] = new Spell("lockPick");
  spells[6] = new Spell("freeze");
  spells[7] = new Spell("blind");
  spells[8] = new Spell("slow");
  spells[9] = new Spell("heal");
  play = false;
  openInventory = false;
  openSpellBook = false;
}
void draw() {
  noCursor();
  // Gameplay
  if (!play) {
    startScreen();
  } else {
    background(0);
    infoPanel();
    //Am I supposed to use display to open the screens, or is there another method? because I'm getting errors here.
    if (!openInventory) {
      inventory.display();
    }
    if (!openSpellBook) {
      spellbook.display();
    }
  }
}
void mousePressed() {
  //what is this for again?? clicking characters, places, items and spells?
}
void keyPressed() {
  //Are there any other keys that will be used in game?
  if (key == 'I') {
    openInventory = true;
  }
  if (key == 'S') {
    openSpellBook = true;
  }
}
void startScreen() {
  //trying to set up parameters, should take up entire screen
  background(128);
  rect(width/2, height/2, width, height);
  
  if (mousePressed) {
    play = true;
  }
}
void infoPanel() {
  //Probably has bad parameters, will edit later
  fill(128, 128);
  noStroke();
  rectMode(CORNER);
  rect(0, height-50, width, 50);
  fill(0, 255, 255);
  textSize(10);
  text("Press I to open Inventory and S to open SpellBook", 50, height-20);
}




//Are these two nessesary? can't we just open them using keypressed?
void openInventory() {
}
void openSpellbook() {
}
