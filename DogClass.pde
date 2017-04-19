class Dog {
  // Instantiating the initial location varibles for the object
  float x;
  float y;
  float x2;
  float y2;
  float x3;
  float y3;
  
  // Instantiating the x- and y- 'speed' variables and the directional variables for movement
  float xspeed = 2.2;
  float yspeed = 2.8;
  
  float xdirection = 1;
  float ydirection = 1;
  
/*-----------------------------------------------------------------------------------------------*/

  // Constructor
  Dog () {
    x = random(width);
    y = random(height);
    
  }
  
  void example() {
    println(x, y);
  }
  
  void drawDog() {
    fill(0);
    triangle(x+20, y+30, x-40, y+30, x-10, y-40);
  }
}