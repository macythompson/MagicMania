Item[] items = new Item[10];
Spell[] spells = new Spell[10];
Inventory inventory;
SpellBook spellbook;
boolean play, openInventory, openSpellBook, displaySpells, displayItems;
PImage StartScreen;

void setup() {
  size(1000, 1000);
  inventory = new Inventory(#EDE311);
  spellbook = new SpellBook(#0FF500);
  items[0] = new Item("Spell Book", 0, 100, 100, 200, #00FF0A, #FA03EE, "You need a book to cast spells? I just memorize them");
  items[1] = new Item("Locket", 200, 100, 100, 200, #00FF0A, #FA03EE, "Useless starter item");
  items[2] = new Item("BullySpells", 400, 100, 100, 200, #00FF0A, #FA03EE, "Why you accept item from a bully??");
  items[3] = new Item("Knight Key", 600, 100, 100, 200, #00FF0A, #FA03EE, "Opens a door or something");
  items[4] = new Item("Lock Pick Note", 800, 100, 100, 200, #00FF0A, #FA03EE, "Guess you don't need keys anymore");
  items[5] = new Item("Chamber Key", 0, 200, 100, 200, #00FF0A, #FA03EE, "Key to a door that you can't lockpick for some reason");
  items[6] = new Item("Chains", 200, 200, 100, 200, #00FF0A, #FA03EE, "No idea why you would need these");
  items[7] = new Item("Lock", 400, 200, 100, 200, #00FF0A, #FA03EE, "I thought your goal is to unlock doors, not lock em up again");
  items[8] = new Item("Vault Key", 600, 200, 100, 200, #00FF0A, #FA03EE, "Another fine addition to your key collection");
  items[9] = new Item("Goblet", 800, 200, 100, 200, #00FF0A, #FA03EE, "Congrats! You beat the game!!!");
  spells[0] = new Spell("Jump", 0, 300, 100, 200, #0FEDFF, #0024FF, "The most basic move, and yet you need a spell for it");
  spells[1] = new Spell("Fire", 200, 300, 100, 200, #0FEDFF, #0024FF, "That starter spell that everyone spams throughout the game");
  spells[2] = new Spell("Pierce", 400, 300, 100, 200, #0FEDFF, #0024FF, "Ha Ha sword goes stab stab");
  spells[3] = new Spell("Distract", 600, 300, 100, 200, #0FEDFF, #0024FF, "Insert Henry Stickman reference");
  spells[4] = new Spell("Snatch", 800, 300, 100, 200, #0FEDFF, #0024FF, "How to be a theif 101");
  spells[5] = new Spell("Lock Pick", 0, 400, 100, 200, #0FEDFF, #0024FF, "How to be a criminal 101");
  spells[6] = new Spell("Freeze", 200, 400, 100, 200, #0FEDFF, #0024FF, "Another spell that you can spam");
  spells[7] = new Spell("Blind", 400, 400, 100, 200, #0FEDFF, #0024FF, "Eye penetration");
  spells[8] = new Spell("Slow", 600, 400, 100, 200, #0FEDFF, #0024FF, "Why use slow when you have freeze?");
  spells[9] = new Spell("Heal", 800, 400, 100, 200, #0FEDFF, #0024FF, "The only useful spell");
  play = false;
  openInventory = false;
  openSpellBook = false;
  displaySpells = false;
  displayItems = false;
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
    if (displayItems == true) {
      for (int i=0; i<items.length; i++) {
        items[i].display();
      }
    }
    if (displaySpells == true) {
      for (int i=0; i<items.length; i++) {
        spells[i].display();
      }
    }
  }
}
void mousePressed() {
  //what is this for again?? clicking characters, places, items and spells?
}
void keyPressed() {
  if (key == 'I' || key== 'i') {
    openInventory = true;
    displayItems = true;
  } else {
    openInventory = false;
    displayItems = false;
  }
  if (key == 'S'|| key=='s') {
    openSpellBook = true;
    displaySpells = true;
  } else {
    openSpellBook = false;
    displaySpells = false;
  }
}
void startScreen() {
  background(255);
  StartScreen = loadImage("Start Screen-1.png.png");
  image(StartScreen, 0, 0, 1000, 998);

  if (mousePressed) {
    play = true;
  }
}
void infoPanel() {
  //Probably has bad parameters, will edit later
  fill(#C2CB5C);
  noStroke();
  rectMode(CORNER);
  rect(20, 20, 350, height-300);
  fill(255);
}

