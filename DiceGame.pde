
DiceCup dc = new DiceCup();

void setup() {
  size(1400, 800);
  background(255);

  rectMode(CENTER);
  
  //dc.addDie();
  //dc.shake();
  //dc.draw(75, 75, 100);
}

void draw() {
}

void keyPressed() {
  if (keyCode == ENTER) {
    dc.shake();
    dc.sortArrayTest();
    dc.draw(75, 75, 100);
  }
  if (key == 'a') {
    dc.addDie();
    dc.shake();
    dc.sortArrayTest();
    dc.draw(75, 75, 100);
  }
}
