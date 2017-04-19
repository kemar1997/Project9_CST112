// Kemar Golding
// Project 9 
// Due Date: Apr 25, 2017
// Email: kkemargolding@gmail.com
// Description: Created a geometric dog from various shapes and sizes bounces around the output window and changes to random colors.

// Initialize the Dog Class
Dog d;

// Object Array
//Dog[] d = new Dog[2];

void settings() {
  size(500, 500);
}

void setup() {
  d = new Dog();
  //noLoop();
}

void draw() {
  drawBg();
  //d.drawDog();
  for(int i = 0; i < 3; i++) {
    d.drawDog();
  }
  d.example();
  
  
}