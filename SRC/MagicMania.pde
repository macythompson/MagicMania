Item[] items = new Item[10];
Spell[] spells = new Spell[10];
BackGround[] backgrounds = new BackGround[17];
Inventory inventory;
SpellBook spellbook;
String LocationName;
boolean play, openInventory, openSpellBook;
boolean clickedJump, clickedFire, clickedPierce, clickedDistract, clickedSnatch, clickedLockpick, clickedFreeze, clickedBlind, clickedSlow, clickedHeal;
boolean displayJump, displayFire, displayPierce, displayDistract, displaySnatch, displayLockpick, displayFreeze, displayBlind, displaySlow, displayHeal;
boolean displaySpellBook, displayLocket, displayBullySpells, displayKnightKey, displayLockPickNote, displayChamberKey, displayChains, displayLock, displayVaultKey, displayGoblet;
PImage StartScreen;

void setup() {
  size(1000, 1000);
  inventory = new Inventory(#EDE311);
  spellbook = new SpellBook(#0FF500);
  backgrounds[0] = new BackGround(300, 300, "Bedroom", "Welcome to the game! Your mother is sick and you need to save her! \n Press enter to continue", "Talk to your mother? A - Yes B - No", "You FOOL!! Your Mother soon dies because you refuse to talk to her \n press enter to go back and rethink your decision", "You talk with your mother \n She says the only way for you to save her is to learn magic\n She gives you a mysterious Locket, you set off to save her. \n Press C to continue", "Blank", true, false, false, false, false);
  backgrounds[1] = new BackGround(300, 300, "StorageRoom", "Find the things you need.\n D - Desk F - Flower Pot G - Garbage bin", "You find a SpellBook in the Desk \n You look inside it and see only one spell called Jump \n Press H to continue", "Did you really think you could find anything useful in a flower pot \n Press C to go back and look harder", "Theres nothing useful in a garbage bin because everything is trash... like you \n Press C to go back and look harder", "Blank", false, false, false, false, false);
  backgrounds[2] = new BackGround(300, 300, "Outside", "Now that you have a spell book to learn magic, you go outside to start your quest \n J - Woods, K - City", "Soon after you enter the woods, you get attacked by wolves, you ran back barely survivng the bite wounds\n Press H to go back and find another place to go", "You think that the city is a great place to start your quest\n you take a path to get there\n Press L to continue", "Blank", "Blank", false, false, false, false, false);
  backgrounds[3] = new BackGround(300, 300, "Path", "As you travel to the city, you see a boulder blocking the path\n You decide to try out your jump spell\n Hint: click Jump in your spell book", "You jumped over the boulder\n You see the city as you congratulate yourself for using your first spell\n Press N to continue", "Blank", "Blank", "Blank", false, false, false, false, false);
  backgrounds[4] = new BackGround(300, 300, "City", "Blank", "Blank", "Blank", "Blank", "Blank", false, false, false, false, false);
  backgrounds[5] = new BackGround(300, 300, "Confronting Bully", "Blank", "Blank", "Blank", "Blank", "Blank", false, false, false, false, false);
  backgrounds[6] = new BackGround(300, 300, "Battle With Bully P1", "Blank", "Blank", "Blank", "Blank", "Blank", false, false, false, false, false);
  backgrounds[7] = new BackGround(300, 300, "Battle with Buly P2", "Blank", "Blank", "Blank", "Blank", "Blank", false, false, false, false, false);
  backgrounds[8] = new BackGround(300, 300, "Castle", "Blank", "Blank", "Blank", "Blank", "Blank", false, false, false, false, false);
  backgrounds[9] = new BackGround(300, 300, "Knight Battle P1", "Blank", "Blank", "Blank", "Blank", "Blank", false, false, false, false, false);
  backgrounds[10] = new BackGround(300, 300, "Knight Battle P2", "Blank", "Blank", "Blank", "Blank", "Blank", false, false, false, false, false);
  backgrounds[11] = new BackGround(300, 300, "Chained Up", "Blank", "Blank", "Blank", "Blank", "Blank", false, false, false, false, false);
  backgrounds[12] = new BackGround(300, 300, "Cell", "Blank", "Blank", "Blank", "Blank", "Blank", false, false, false, false, false);
  backgrounds[13] = new BackGround(300, 300, "Hallway", "Blank", "Blank", "Blank", "Blank", "Blank", false, false, false, false, false);
  backgrounds[14] = new BackGround(300, 300, "Throne Room", "Blank", "Blank", "Blank", "Blank", "Blank", false, false, false, false, false);
  backgrounds[15] = new BackGround(300, 300, "Queen Battle P1", "Blank", "Blank", "Blank", "Blank", "Blank", false, false, false, false, false);
  backgrounds[16] = new BackGround(300, 300, "QueenBattle P2", "Blank", "Blank", "Blank", "Blank", "Blank", false, false, false, false, false);
  items[0] = new Item("Spell\nBook", 50, 150, 100, 100, #00FF0A, #FA03EE, "You need a book to cast spells? \nI just memorize them");
  items[1] = new Item("Locket", 150, 150, 100, 100, #00FF0A, #FA03EE, "Useless starter item");
  items[2] = new Item("Bully\nSpells", 50, 250, 100, 100, #00FF0A, #FA03EE, "Why you accept item \nfrom a bully??");
  items[3] = new Item("Knight\nKey", 150, 250, 100, 100, #00FF0A, #FA03EE, "Use this as a weapon \nto open people's minds...");
  items[4] = new Item("Lockpick\nNote", 50, 350, 100, 100, #00FF0A, #FA03EE, "Guess you don't need \nkeys anymore");
  items[5] = new Item("Chamber\nKey", 150, 350, 100, 100, #00FF0A, #FA03EE, "Key to a door that you can't \nlockpick for some reason");
  items[6] = new Item("Chains", 50, 450, 100, 100, #00FF0A, #FA03EE, "No idea why you \nwould need these");
  items[7] = new Item("Lock", 150, 450, 100, 100, #00FF0A, #FA03EE, "I thought your goal is to unlock doors, \nnot lock em up again");
  items[8] = new Item("Vault\nKey", 50, 550, 100, 100, #00FF0A, #FA03EE, "Another fine addition \nto your key collection");
  items[9] = new Item("Goblet", 150, 550, 100, 100, #00FF0A, #FA03EE, "Congrats!! \nYou beat the game!!!");
  spells[0] = new Spell("Jump", 50, 150, 100, 100, #0FEDFF, #0024FF, "The most basic move \nYet you need a spell for it");
  spells[1] = new Spell("Fire", 150, 150, 100, 100, #0FEDFF, #0024FF, "That starter spell \neveryone spams throughout the game");
  spells[2] = new Spell("Pierce", 50, 250, 100, 100, #0FEDFF, #0024FF, "Ha Ha sword \ngoes stab stab");
  spells[3] = new Spell("Distract", 150, 250, 100, 100, #0FEDFF, #0024FF, "Be careful with this one \nYou could also get distracted by it");
  spells[4] = new Spell("Snatch", 50, 350, 100, 100, #0FEDFF, #0024FF, "How to be a theif 101");
  spells[5] = new Spell("Lockpick", 150, 350, 100, 100, #0FEDFF, #0024FF, "How to be a criminal 101");
  spells[6] = new Spell("Freeze", 50, 450, 100, 100, #0FEDFF, #0024FF, "Another spell for you to spam");
  spells[7] = new Spell("Blind", 150, 450, 100, 100, #0FEDFF, #0024FF, "Eye penetration");
  spells[8] = new Spell("Slow", 50, 550, 100, 100, #0FEDFF, #0024FF, "Why use slow \nwhen you have freeze?");
  spells[9] = new Spell("Heal", 150, 550, 100, 100, #0FEDFF, #0024FF, "The only useful spell");
  play = false;
  openInventory = false;
  openSpellBook = false;

  //Frick Ton of display Booleans -_-
  displayJump = false;
  displayFire = false;
  displayPierce = false;
  displayDistract = false;
  displaySnatch = false;
  displayLockpick = false;
  displayFreeze = false;
  displayBlind = false;
  displaySlow = false;
  displayHeal = false;

  clickedJump = false;
  clickedFire = false;
  clickedPierce = false;
  clickedDistract = false;
  clickedSnatch = false;
  clickedLockpick = false;
  clickedFreeze = false;
  clickedBlind = false;
  clickedSlow = false;
  clickedHeal = false;

  displaySpellBook = false;
  displayLocket = false;
  displayBullySpells = false;
  displayKnightKey = false;
  displayLockPickNote = false;
  displayChamberKey = false;
  displayChains = false;
  displayLock = false;
  displayVaultKey = false;
  displayGoblet = false;
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
    //Inventory and SpellBook displays
    if (openInventory==true) {
      inventory.display();
    }
    if (openSpellBook==true) {
      spellbook.display();
    }

    //Display Spells
    if (displayJump == true && openSpellBook == true) {
      spells[0].display();
      spells[0].hover();
    }
    if (displayFire == true && openSpellBook == true) {
      spells[1].display();
      spells[1].hover();
    }
    if (displayPierce == true && openSpellBook == true) {
      spells[2].display();
      spells[2].hover();
    }
    if (displayDistract == true && openSpellBook == true) {
      spells[3].display();
      spells[3].hover();
    }
    if (displaySnatch == true && openSpellBook == true) {
      spells[4].display();
      spells[4].hover();
    }
    if (displayLockpick == true && openSpellBook == true) {
      spells[5].display();
      spells[5].hover();
    }
    if (displayFreeze == true && openSpellBook == true) {
      spells[6].display();
      spells[6].hover();
    }
    if (displayBlind == true && openSpellBook == true) {
      spells[7].display();
      spells[7].hover();
    }
    if (displaySlow == true && openSpellBook == true) {
      spells[8].display();
      spells[8].hover();
    }
    if (displayHeal == true && openSpellBook == true) {
      spells[9].display();
      spells[9].hover();
    }

    //Display Items
    if (displaySpellBook == true && openInventory == true) {
      items[0].display();
      items[0].hover();
    }
    if (displayLocket == true && openInventory == true) {
      items[1].display();
      items[1].hover();
    }
    if (displayBullySpells == true && openInventory == true) {
      items[2].display();
      items[2].hover();
    }
    if (displayKnightKey == true && openInventory == true) {
      items[3].display();
      items[3].hover();
    }
    if (displayLockPickNote == true && openInventory == true) {
      items[4].display();
      items[4].hover();
    }
    if (displayChamberKey == true && openInventory == true) {
      items[5].display();
      items[5].hover();
    }
    if (displayChains == true && openInventory == true) {
      items[6].display();
      items[6].hover();
    }
    if (displayLock == true && openInventory == true) {
      items[7].display();
      items[7].hover();
    }
    if (displayVaultKey == true && openInventory == true) {
      items[8].display();
      items[8].hover();
    }
    if (displayGoblet == true && openInventory == true) {
      items[9].display();
      items[9].hover();
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
      backgrounds[0].dialogueOne = false;
      backgrounds[0].dialogueTwo = true;
      backgrounds[0].dialogueThree = false;
    }
    if (key == 'a') {
      backgrounds[0].dialogueTwo = false;
      backgrounds[0].dialogueFour = true;
      displayLocket = true;
    }
    if (key == 'b') {
      backgrounds[0].dialogueTwo = false;
      backgrounds[0].dialogueThree = true;
    }
    if (key == 'c') {
      backgrounds[1].dialogueOne = true;
      backgrounds[0].dialogueFour = false;
      backgrounds[1].dialogueThree = false;
      backgrounds[1].dialogueFour = false;
      LocationName = backgrounds[1].locationName;
    }
    if (key == 'd') {
      backgrounds[1].dialogueTwo = true;
      backgrounds[1].dialogueOne = false;
      displaySpellBook = true;
      displayJump = true;
    }
    if (key == 'f') {
      backgrounds[1].dialogueThree = true;
      backgrounds[1].dialogueOne = false;
    }
    if (key == 'g') {
      backgrounds[1].dialogueFour = true;
      backgrounds[1].dialogueOne = false;
    }
    if (key == 'h') {
      backgrounds[1].dialogueTwo = false;
      backgrounds[2].dialogueOne = true;
      backgrounds[2].dialogueTwo = false;
      LocationName = backgrounds[2].locationName;
    }
    if (key == 'j') {
      backgrounds[2].dialogueOne = false;
      backgrounds[2].dialogueTwo = true;
    }
    if (key == 'k') {
      backgrounds[2].dialogueOne = false;
      backgrounds[2].dialogueThree = true;
    }
    if (key == 'l') {
      backgrounds[2].dialogueThree = false;
      backgrounds[3].dialogueOne = true;
      LocationName = backgrounds[3].locationName;
    }
    if (clickedJump == true) {
      backgrounds[3].dialogueOne = false;
      backgrounds[3].dialogueTwo = true;
    }
  }
}
void mousePressed() {
  if (spells[0].over) {
    clickedJump = true;
  }
  if (spells[1].over) {
    clickedFire = true;
  }
  if (spells[2].over) {
    clickedPierce = true;
  }
  if (spells[3].over) {
    clickedDistract = true;
  }
  if (spells[4].over) {
    clickedSnatch = true;
  }
  if (spells[5].over) {
    clickedLockpick = true;
  }
  if (spells[6].over) {
    clickedFreeze = true;
  }
  if (spells[7].over) {
    clickedBlind = true;
  }
  if (spells[8].over) {
    clickedSlow = true;
  }
  if (spells[9].over) {
    clickedHeal = true;
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
  rect(20, 750, 950, 225);
  fill(255);
  textSize(20);
  text("WARNING: DO NOT RANDOMLY\n PRESS KEYS\n IT WILL MESS UP GAME \nFOLLOW DIALOGUE CAREFULLY \n\nPress I to open Inventory \nPress S to open SpellBook \n\n\nYou are at " + LocationName, 50, 100);
}




