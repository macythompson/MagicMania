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
  inventory = new Inventory(#EDE311);
  spellbook = new SpellBook(#0FF500);
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
  // Gameplay
  if (!play) {
    startScreen();
    infoPanel();
  } else {
    background(#050505);
    infoPanel();
    //Am I supposed to use display to open the screens, or is there another method? because I'm getting errors here.
    if (openInventory==true) {
      inventory.display();
    }
    if (openSpellBook==true) {
      spellbook.display();
    }
  }
}
void mousePressed() {
  //what is this for again?? clicking characters, places, items and spells?
}
void keyPressed() {
  //Are there any other keys that will be used in game?
  if (key == 'I' || key== 'i') {
    openInventory = true;
  } else {
    openInventory = false;
  }
  if (key == 'S'|| key=='s') {
    openSpellBook = true;
  } else {
    openSpellBook = false;
  }
}
void startScreen() {
  //trying to set up parameters, should take up entire screen
  background(128);
  //rect(width/2, height/2, 100, 100);
  
  if (mousePressed) {
    play = true;
  }
}
void infoPanel() {
  //Probably has bad parameters, will edit later
  fill(#E80C0C);
  noStroke();
  rectMode(CORNER);
  rect(0, height-50, width, 50);
  fill(255);
  textSize(10);
  text("Press I to open Inventory and S to open SpellBook", 50, height-20);
}
