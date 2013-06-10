
class Pumpkin {
  float locationX;
  float locationY;
  float speed;
  float r;
  float d;
  PImage pumpkin;

  Pumpkin() {
    pumpkin = loadImage("pumpkin.png");
    speed = 2;
    locationX = width-40;
    locationY = 20;
    r = 1;
    d = 38;
  }
  void display() {
    ellipseMode(CENTER);
    ellipse(locationX, locationY, d, d);
    imageMode(CENTER);
    pushMatrix();
    translate(locationX, locationY);
    rotate(radians(r));
    image(pumpkin, 0, 0);
    popMatrix();
    r++;
  }
  void move() {
    locationX = locationX - speed;
  }
}

