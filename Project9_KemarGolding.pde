// Kemar Golding
// Project 9 
// Due Date: Apr 25, 2017
// Email: kkemargolding@gmail.com
// Description: Created a geometric dog from various shapes and sizes bounces around the output window and changes to random colors.

// Instantiate an array of one Kirby object for now
Kirby[] myKirby = new Kirby[6];

void settings() {
  size(500, 500, P2D);
}

void setup() {
  //noLoop();
  for(int i = 0; i < myKirby.length; i++) {
    myKirby[i] = new Kirby();
  }
}

void draw() {
  drawBg();
  
  for (Kirby k: myKirby) {
    k.display();
    k.moveKirby();
    k.bounceKirby();
    k.randomEyeColor();
  }
}

/*-------------------------------------------------------------------*/

// Using the append and shorten functions to control the appearing and disappearing of the objects

void mousePressed()  {
  Kirby kirby = new Kirby();
  myKirby = ( Kirby[] ) append(myKirby, kirby);
}

void keyPressed() {
  if (myKirby.length > 0) {
    myKirby = ( Kirby[] ) shorten(myKirby);
  }
}