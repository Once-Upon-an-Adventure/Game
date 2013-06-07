
class Pumpkin {
  float locationX;
  float locationY;
  float speed;
  PImage pumpkin;

  Pumpkin() {
    pumpkin = loadImage("pumpkin.png");
    speed = 2;
    locationX = width-40;
    locationY = 1;
 
  }
  void display() {
    image(pumpkin, locationX, locationY);
  }
}
