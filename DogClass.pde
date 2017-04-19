class Dog {
  // Instantiating the initial location varibles for the object
  float x1;
  float y1;
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
  Dog (float tempLocX1, float tempLocY1, float tempLocX2, float tempLocY2, float tempLocX3, float tempLocY3) {
    x1 = tempLocX1;
    y1 = tempLocY1;
    x2 = tempLocX2;
    y2 = tempLocY2;
    x3 = tempLocX3;
    y3 = tempLocY3;
    
  }
  
  void example() {
    println(x1, y1, x2, y2, x3, y3);
  }
  
  void drawDog() {
    fill(0);
    triangle(x1, y1, x2, y2, x3, y3);
  }
}