class Witch {
  float x;
  float y;
  PImage witch;
  float xspeed;
  Witch() {
    witch = loadImage("witch.png");
    x = 1;
    y= random(0,580);
    xspeed = random(3,8);
}
void display() {
  image(witch,x,y);
}
void move() {
  x+=xspeed;
}
boolean caught (Prince p) {
  if (dist(x,y,p.x,p.y) < 90/2 + 80/2){
  return true;
  }
  else {
    return false;
  }
}
void touch (Prince p) {
  if (caught (p) == true) {
    x = 1;
    y = random(0,580);
    xspeed = random(3,8);
  }
}
//boolean lose() {
  //if (dist(x+90) >= width/2) {
  // return true;
 // }
// else {
//  return false;
// }

void lose() {
  if (x+90 >= width/2)
  print("lose");
}
}

