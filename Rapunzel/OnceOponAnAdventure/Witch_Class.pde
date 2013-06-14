class Witch {
  float x;
  float y;
  PImage witch;
  float xspeed;
  Witch() {
    witch = loadImage("witch.png");
    x = 1;
    y= random(0,550);
    xspeed = random(2,5);
}
void display() {
  image(witch,x,y);
}
void move() {
  x+=xspeed;
}
boolean caught (Prince p) {
  if (dist(x,y,p.x,p.y) < 100/2 + 80/2){
  return true;
  }
  else {
    return false;
  }
}
void touch (Prince p) {
  if (caught (p) == true) {
    x = 1;
    y = random(0,550);
    xspeed = random(2,5);
  }
}

}

