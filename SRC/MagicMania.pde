Item[] items = new Item[10];
Spell[] spells = new Spell[10];
Inventory inventory;
SpellBook spellbook;
boolean play;
boolean openInventory;
boolean openSpellBook;
PImage StartScreen;

void setup() {
  size(1000, 1000);
  inventory = new Inventory(#EDE311);
  spellbook = new SpellBook(#0FF500);
  items[0] = new Item("spellBook", 0, 100, 100, 200, #00FF0A, #FA03EE);
  items[1] = new Item("locket", 200, 100, 100, 200, #00FF0A, #FA03EE);
  items[2] = new Item("bullySpells", 400, 100, 100, 200, #00FF0A, #FA03EE);
  items[3] = new Item("knightKey", 600, 100, 100, 200, #00FF0A, #FA03EE);
  items[4] = new Item("lockPickNote", 800, 100, 100, 200, #00FF0A, #FA03EE);
  items[5] = new Item("chamberKey", 0, 200, 100, 200, #00FF0A, #FA03EE);
  items[6] = new Item("chains", 200, 200, 100, 200, #00FF0A ,#FA03EE);
  items[7] = new Item("lock", 400, 200, 100, 200, #00FF0A, #FA03EE);
  items[8] = new Item("vaultKey", 600, 200, 100, 200, #00FF0A, #FA03EE);
  items[9] = new Item("goblet", 800, 200, 100, 200, #00FF0A, #FA03EE);
  spells[0] = new Spell("jump", 0, 300, 100, 200, #0FEDFF, #0024FF);
  spells[1] = new Spell("fire", 200, 300, 100, 200, #0FEDFF, #0024FF);
  spells[2] = new Spell("pierce", 400, 300, 100, 200, #0FEDFF, #0024FF);
  spells[3] = new Spell("distract", 600, 300, 100, 200, #0FEDFF, #0024FF);
  spells[4] = new Spell("snatch", 800, 300, 100, 200, #0FEDFF, #0024FF);
  spells[5] = new Spell("lockPick", 0, 400, 100, 200, #0FEDFF, #0024FF);
  spells[6] = new Spell("freeze", 200, 400, 100, 200, #0FEDFF, #0024FF);
  spells[7] = new Spell("blind", 400, 400, 100, 200, #0FEDFF, #0024FF);
  spells[8] = new Spell("slow", 600, 400, 100, 200, #0FEDFF, #0024FF);
  spells[9] = new Spell("heal", 800, 400, 100, 200, #0FEDFF, #0024FF);
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
    if (openInventory==true) {
      inventory.display();
    }
    if (openSpellBook==true) {
      spellbook.display();
    }
    for (int i=0; i<items.length; i++) {
      items[i].display();
    }
    for (int i=0; i<items.length; i++) {
      spells[i].display();
    }
  }
}
void mousePressed() {
  //what is this for again?? clicking characters, places, items and spells?
}
void keyPressed() {
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
  background(255);
  StartScreen = loadImage("Start Screen-1.png.png");
  image(StartScreen, 0, 0, 1000, 950);
  
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
  textSize(15);
  text("Press I to open Inventory and S to open SpellBook", 50, height-20);
}

  

  
