DiceCup dc = new DiceCup(); // Creates a DiceCup object.

void setup() { //Setup
  size(1400, 800);
  background(255);

  rectMode(CENTER);
}

void draw() { //Needed to keep listning for keyPressed actions(?). 
}

// Key press actions.
void keyPressed() { 
  if (keyCode == ENTER) { //On ENTER the dice will reroll their vaule and reorder.
    dc.shake();
    dc.sortArray();
    dc.draw(75, 75, 100);
  }
  if (key == 'a') { //On an "A" a new dice will be added, rolled and reordered.
    dc.addDie();
    dc.shake();
    dc.sortArray();
    dc.draw(75, 75, 100);
  }
}

/* Shortcommings/TODO.
1. The drawn dice are the samme color every roll. lowest roll always the same, second lowest etc.
2. Void sortArray is a bit slow/bloated 6 forLoops that run the entire array can slow with a lot of dice.
3. Could do with a cleanup/rewrite, variable names, remove dice method, clean some for loops.
*/
