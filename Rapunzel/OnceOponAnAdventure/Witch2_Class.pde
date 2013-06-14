class Witch2 {
  float x;
  float y;
  PImage witch2;
  float xspeed;
  Witch2() {
    witch2 = loadImage("Witch2.png");
    x = width-1;
    y= random(0,550);
    xspeed = random(2,5);
}
void display() {
  image(witch2,x,y);
}
void move() {
  x-=xspeed;
}
boolean caught (Prince p) {
  if (dist(x,y,p.x,p.y) <  100/2+80/2){
  return true;
  }
  else {
    return false;
  }
}
void touch (Prince p) {
  if (caught (p) == true) {
    x = width-1;
    y = random(0,550);
    xspeed = random(2,5);
  }
}

}
