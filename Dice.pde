class Dice {

  color dieColor;
  color eyeColor;
  int rollInt = 0;

  //Constructor. Saves the color value to each dice.
  public Dice(color dieColor, color eyeColor) {
    this.dieColor = dieColor;
    this.eyeColor = eyeColor;
  }

  //Roll method. Rolls a specific die to a random number.
  public void roll() {
    rollInt = (int)random(1, 7);
  }

  //Draw method. Draws the dice in a line.
  public void draw(int x, int y, int size) {

    fill(dieColor);
    rect(x, y, size, size);
    
    fill(eyeColor);
    switch(rollInt) {
    case 1:
      circle(x, y, 20);
      break;
    case 2:
      circle(x-(size/4), y-(size/4), 20);
      circle(x+(size/4), y+(size/4), 20);
      break;
    case 3:
      circle(x-(size/4), y-(size/4), 20);
      circle(x+(size/4), y+(size/4), 20);
      circle(x, y, 20);
      break;
    case 4:
      circle(x-(size/4), y-(size/4), size/5);
      circle(x+(size/4), y+(size/4), 20);
      circle(x+(size/4), y-(size/4), 20);
      circle(x-(size/4), y+(size/4), 20);
      break;
    case 5:
      circle(x-(size/4), y-(size/4), 20);
      circle(x+(size/4), y+(size/4), 20);
      circle(x+(size/4), y-(size/4), 20);
      circle(x-(size/4), y+(size/4), 20);
      circle(x, y, 20);
      break;
    case 6:
      circle(x-(size/4), y-(size/4), 20);
      circle(x+(size/4), y+(size/4), 20);
      circle(x+(size/4), y-(size/4), 20);
      circle(x-(size/4), y+(size/4), 20);
      circle(x, y-(size/4), 20);
      circle(x, y+(size/4), 20);
      break;
    }
  }
}
