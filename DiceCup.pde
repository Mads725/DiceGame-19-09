class DiceCup {

  final int arraySize = 50; // Max number of dice that can be created.
  int pos = 0;
  Dice[] dice = new Dice[arraySize]; //The array with the values that have been rolled.
  Dice[] diceSort = new Dice[arraySize]; //The sorted array. eksample: [1,1,1,2,2,2,3,3,3,4,4,4,4,4,5,5,5,6,6,6,6,6,].

  //Construcktor
  public DiceCup() {
    //Dice[] dice = new Dice[10]; 
  }

  //add dice method. Adds a new random die to the cup.
  void addDie() {
    color c1 = color((int)random(0, 255), (int)random(0, 255), (int)random(0, 255));
    color c2 = color((int)random(0, 255), (int)random(0, 255), (int)random(0, 255));
    dice[pos] = new Dice(c1, c2);
    diceSort[pos] = new Dice(c1, c2);
    pos++;
  }

  //shake method. Rolls all the dice in the cup
  void shake() {
    for (int i=0; i<dice.length; i++) {
      if (dice[i]!=null) {
        dice[i].roll();
      }
    }
  }

  void sortArray() { // Sorts the dice in order of their value.
    int arrayPos = 0; //This is the position in the sorted array where new dice gets added to.
    for (int i = 0; i<dc.dice.length; i++) { //First forLoop looks for all ones in the first array,
                                             //and adds them to the sorted array.
      if (dice[i]!=null) {
        if (dc.dice[i].rollInt==1) {
          dc.diceSort[arrayPos].rollInt=1;
          arrayPos++;
        }
      }
    }
    for (int i = 0; i<dc.dice.length; i++) {//Second forLoop looks for all twos in the first array,
                                            //and adds them to the sorted array.
      if (dice[i]!=null) {
        if (dc.dice[i].rollInt==2) {
          dc.diceSort[arrayPos].rollInt=2;
          arrayPos++;
        }
      }
    }
    for (int i = 0; i<dc.dice.length; i++) {
      if (dice[i]!=null) {
        if (dc.dice[i].rollInt==3) {
          dc.diceSort[arrayPos].rollInt=3;
          arrayPos++;
        }
      }
    }
    for (int i = 0; i<dc.dice.length; i++) {
      if (dice[i]!=null) {
        if (dc.dice[i].rollInt==4) {
          dc.diceSort[arrayPos].rollInt=4;
          arrayPos++;
        }
      }
    }
    for (int i = 0; i<dc.dice.length; i++) {
      if (dice[i]!=null) {
        if (dc.dice[i].rollInt==5) {
          dc.diceSort[arrayPos].rollInt=5;
          arrayPos++;
        }
      }
    }
    for (int i = 0; i<dc.dice.length; i++) {//The sixed array looks for all sixes and adds them to the sorted array.
      if (dice[i]!=null) {
        if (dc.dice[i].rollInt==6) {
          dc.diceSort[arrayPos].rollInt=6;
          arrayPos++;
        }
      }
    }
  }

  //draw method. Draws all the dice in the cup on a line.
  void draw(int x, int y, int size) {
    background(255);
    
    int prevNum = dc.diceSort[0].rollInt; //Sets the prevNum to be the value of first dice in the sorted array.
    
    int yPos = y;  
    int xPos1 = x;
    int xPos2 = x; 
    int xPos3 = x; 
    int xPos4 = x; 
    int xPos5 = x; 
    int xPos6 = x; 

    for (int i=0; i<dc.dice.length; i++) { //Draws the dice
      if (dc.dice[i]!=null) {
        if(dc.diceSort[i].rollInt!=prevNum){ //When the number changces in the sorted array, 
        // the new dice will be draw on a new line. [1,1,1,1,1,(2),2,2,2,...] new line.
         yPos=yPos+size+(size/5);
         prevNum=dc.diceSort[i].rollInt;
        }
        switch(dc.diceSort[i].rollInt) { //Draws the dice on each line and incements by 1,5 dice every new dice.
        case 1:
          dc.diceSort[i].draw(xPos1, yPos, size);
          xPos1=xPos1+size+(size/2);
          break;
        case 2:
          dc.diceSort[i].draw(xPos2, yPos, size);
          xPos2=xPos2+size+(size/2);
          break;
        case 3:
          dc.diceSort[i].draw(xPos3, yPos, size);
          xPos3=xPos3+size+(size/2);
          break;
        case 4:
          dc.diceSort[i].draw(xPos4, yPos, size);
          xPos4=xPos4+size+(size/2);
          break;
        case 5:
          dc.diceSort[i].draw(xPos5, yPos, size);
          xPos5=xPos5+size+(size/2);
          break;
        case 6:
          dc.diceSort[i].draw(xPos6, yPos, size);
          xPos6=xPos6+size+(size/2);
          break;
        }
      }
    }
  }
}
