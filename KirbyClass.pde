class Kirby {
  // Instantiating the initial location varibles for the object
  float x;
  float y;
  
  // Diameter of the initial body of the object
  float rad;
  
  // Instantiating the x- and y- 'speed' variables and the directional variables for movement
  float xspeed = 2.2;
  float yspeed = 2.8;
  
  float xdirection = 1;
  float ydirection = 1;
  
  // RGB Values for the eyes
  float r;
  float g;
  float b;
  
/*-----------------------------------------------------------------------------------------------*/

  // Constructor
  Kirby () {
    x = random(50,450);
    y = random(50,450);
    rad = 100;
    
    r = 255;
    g = 255;
    b = 255;
  }
  
  // Simple println() for positioning purposes
  void example() {
    println(x, y);
  }
  
  void display() {
    // Draw the ears
    fill(254, 141, 250);
    ellipse(x+30, y-35, 40, 60);
    fill(254, 141, 250);
    ellipse(x-30, y-35, 40, 60);
    
    // Draw the feet
    fill(214, 1, 60);
    ellipse(x+30, y+35, 43, 60);
    ellipse(x-30, y+35, 43, 60);
    
    // Draw the body
    fill(254, 141, 250);
    ellipse(x, y, rad, rad);
    
    // Draw the base of the eye: Black
    fill(0);
    ellipse(x-15, y-15, 12, 24);
    ellipse(x+15, y-15, 12, 24);
    
    // Draw the pupil: White
    fill(r, g, b);
    ellipse(x-15, y-17.5, 5, 10);
    ellipse(x+15, y-17.5, 5, 10);
    
    // Draw the mouth
    fill(133, 32, 40);
    ellipse(x, y+10, 10, 10);
    
    // Draw the cheek color
    fill(255, 84, 160);
    ellipse(x+24, y+5, 10, 5);
    ellipse(x-24, y+5, 10, 5);
  }
  
  // Function that assigns the xspeed, yspeed, xdirection, ydirection to the x and y coordinate variables
  void moveKirby() {
    x = x + (xspeed * xdirection);
    y = y + (yspeed * ydirection);
  }
  
  // Function that moves the object within the output window and bounces in the opposite direction when the object hits the width or height of the window
  void bounceKirby() {
    if (x > width || x < 0) {
      xdirection *= -1;
    }
    if (y > height || y < 0) {
      ydirection *= -1;
    }
  }
  
  void randomEyeColor() {
    if (mousePressed) {
      r = random(255);
      g = random(255);
      b = random(255);
    }
  }
}