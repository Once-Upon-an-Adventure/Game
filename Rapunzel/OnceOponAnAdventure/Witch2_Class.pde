class Witch2 {
  float x;
  float y;
  PImage witch2;
  float xspeed;
  Witch2() {
    witch2 = loadImage("Witch2.png");
    x = height;
    y= random(0,580);
    xspeed = random(1,3);
}
void display() {
  image(witch2,x,y);
}
void move() {
  x-=xspeed;
}
boolean caught (Prince p) {
  if (dist(p.x,p.y,x,y) <= 90/2 + 80/2){
  return true;
  }
  else {
    return false;
  }
}
void touch (Prince p) {
  if (caught (p) == true) {
    x = height;
    y = random(0,580);
    xspeed = random(1,3);
  }
}

}
