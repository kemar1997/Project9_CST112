void drawBg() {
  for (int i = 0; i< width; i++) {
    stroke(i, i, 200);
    line(0,i,width,i);
  }
}