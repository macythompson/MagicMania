Item[] items = new Item[10];
Spell[] spells = new Spell[10];
BackGround[] backgrounds = new BackGround[2];
Inventory inventory;
SpellBook spellbook;
String LocationName;
boolean play, openInventory, openSpellBook;
boolean clickedJump, displayJump;
boolean displayLocket;
PImage StartScreen;

void setup() {
  size(1000, 1000);
  inventory = new Inventory(#EDE311);
  spellbook = new SpellBook(#0FF500);
  backgrounds[0] = new BackGround(300, 300, "Home", "Welcome to the game! Your mother is sick and you need to save her! \n Press enter to continue", "Talk to your mother? A - Yes B - No", true, false);
  backgrounds[1] = new BackGround(300, 300, "SpellRoom", "find the things you need.\n Press Jump in the SpellBook to continue", "You FOOL!! \n press enter to go back and rethink your decision", false, false);
  items[0] = new Item("Spell\nBook", 50, 150, 100, 100, #00FF0A, #FA03EE, "You need a book to cast spells? I just memorize them");
  items[1] = new Item("Locket", 150, 150, 100, 100, #00FF0A, #FA03EE, "Useless starter item");
  items[2] = new Item("Bully\nSpells", 50, 250, 100, 100, #00FF0A, #FA03EE, "Why you accept item from a bully??");
  items[3] = new Item("Knight\nKey", 150, 250, 100, 100, #00FF0A, #FA03EE, "Use this as a weapon to open people's minds...");
  items[4] = new Item("Lockpick\nNote", 50, 350, 100, 100, #00FF0A, #FA03EE, "Guess you don't need keys anymore");
  items[5] = new Item("Chamber\nKey", 150, 350, 100, 100, #00FF0A, #FA03EE, "Key to a door that you can't lockpick for some reason");
  items[6] = new Item("Chains", 50, 450, 100, 100, #00FF0A, #FA03EE, "No idea why you would need these");
  items[7] = new Item("Lock", 150, 450, 100, 100, #00FF0A, #FA03EE, "I thought your goal is to unlock doors, not lock em up again");
  items[8] = new Item("Vault\nKey", 50, 550, 100, 100, #00FF0A, #FA03EE, "Another fine addition to your key collection");
  items[9] = new Item("Goblet", 150, 550, 100, 100, #00FF0A, #FA03EE, "Congrats! You beat the game!!!");
  spells[0] = new Spell("Jump", 50, 150, 100, 100, #0FEDFF, #0024FF, "The most basic move, and yet you need a spell for it");
  spells[1] = new Spell("Fire", 150, 150, 100, 100, #0FEDFF, #0024FF, "That starter spell that everyone spams throughout the game");
  spells[2] = new Spell("Pierce", 50, 250, 100, 100, #0FEDFF, #0024FF, "Ha Ha sword goes stab stab");
  spells[3] = new Spell("Distract", 150, 250, 100, 100, #0FEDFF, #0024FF, "Insert Henry Stickman reference");
  spells[4] = new Spell("Snatch", 50, 350, 100, 100, #0FEDFF, #0024FF, "How to be a theif 101");
  spells[5] = new Spell("Lockpick", 150, 350, 100, 100, #0FEDFF, #0024FF, "How to be a criminal 101");
  spells[6] = new Spell("Freeze", 50, 450, 100, 100, #0FEDFF, #0024FF, "Another spell for you to spam");
  spells[7] = new Spell("Blind", 150, 450, 100, 100, #0FEDFF, #0024FF, "Eye penetration");
  spells[8] = new Spell("Slow", 50, 550, 100, 100, #0FEDFF, #0024FF, "Why use slow when you have freeze?");
  spells[9] = new Spell("Heal", 150, 550, 100, 100, #0FEDFF, #0024FF, "The only useful spell");
  play = false;
  openInventory = false;
  openSpellBook = false;
  displayJump = false;
  clickedJump = false;
  displayLocket = false;
  String LocationName = backgrounds[0].locationName;
  this.LocationName = LocationName;
}
void draw() {
  // Gameplay
  if (!play) {
    startScreen();
  } else {
    background(255);
    infoPanel();
    //Item, Spell, Inventory, and SpellBook displays
    if (openInventory==true) {
      inventory.display();
    }
    if (openSpellBook==true) {
      spellbook.display();
    }
    if (displayJump == true && openSpellBook == true) {
      spells[0].display();
      spells[0].hover();
    }
    if (displayLocket == true && openInventory == true) {
      items[0].display();
      items[0].hover();
    }
    //if (openInventory == true) {
    //  for (int i=0; i<items.length; i++) {
    //    items[i].display();
    //  }
    //}
    //if (openSpellBook == true) {
    //  for (int i=0; i<spells.length; i++) {
    //    spells[i].display();
    //  }
    //}
    //STORY SEQUENCE
    for (int i=0; i<backgrounds.length; i++) {
      backgrounds[i].dialogue();
    }
    if (key == ENTER || key == RETURN) {
      displayJump = true;
      backgrounds[0].dialogueOne = false;
      backgrounds[0].dialogueTwo = true;
      backgrounds[1].dialogueTwo = false;
    }
    if (key == 'a') {
      backgrounds[0].dialogueTwo = false;
      backgrounds[1].dialogueOne = true;
      LocationName = backgrounds[1].locationName;
    }
    if (key == 'b') {
      backgrounds[0].dialogueTwo = false;
      backgrounds[1].dialogueTwo = true;
    }
    if (clickedJump == true) {
      displayLocket = true;
      backgrounds[1].dialogueOne = false;
      backgrounds[0].dialogueOne = true;
    }
  }
}
void mousePressed() {
  if (spells[0].over) {
    clickedJump = true;
  }
}
void keyPressed() {
  if (key == 'I' || key == 'i') {
    openInventory = true;
    openSpellBook = false;
  } 
  if (key == 'e' || key == 'E') {
    openInventory = false;
    openSpellBook = false;
  }
  if (key == 'S'|| key == 's') {
    openSpellBook = true;
    openInventory = false;
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
  fill(#C2CB5C);
  noStroke();
  rectMode(CORNER);
  rect(20, 20, 350, height-300);
  fill(255);
  textSize(20);
  text("Press I to open Inventory \n Press S to open SpellBook \n Press E to go back to \n play screen\n You are at " + LocationName, 100, 100);
}



