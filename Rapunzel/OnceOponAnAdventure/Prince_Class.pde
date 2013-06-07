class Prince {
  float x;
  float y;
  PImage prince;
Prince () {
  prince = loadImage("flynn.png");
  x = width/2-20;
}
void display() {
  image(prince,x,y);
}
void move() {
  y = map(mouseY,0,height,0,580);
}
}
