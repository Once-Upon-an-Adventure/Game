class LeftShoot {
  float x;
  float y;
  float d;
  float xspeed;
  float yspeed;
  PImage ball;
  LeftShoot() {
    x=45;
    y=50;
    d=20;
    xspeed = random(1, 5);
    yspeed=random(3, 5);
    ball=loadImage("cannon_alpha.png");
  }
  void display() {
    ellipse(x, y, d, d);
    image(ball,x-10,y-10);
  }
  void shoot() {
    x+=xspeed;
    y+=yspeed;
  }
}

