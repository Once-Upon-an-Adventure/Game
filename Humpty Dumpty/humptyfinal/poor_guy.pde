class Humpty {
  float x;
  float y;
  float yt;
  float speed;
  float d;
  PImage humpty;

  Humpty() {
    x=400;
    y=210;
    d=100;
    yt=280;
    speed=10;
    humpty= loadImage("humpty_small.png");
  }
  void display() {
    image(humpty, x, y);
    noStroke();
    noFill();
    ellipse(x+45, yt, d, d);
  }
  void checkr(RightShoot r) {
    if (dist(x+45, yt, r.location.x, r.location.y) < d/2 + r.d/2) {
      //print("RIGHT");
      r.location.y = height*2;
      end=!end;
    }
  }
  void checkl(LeftShoot l) {
    if (dist(x+45, yt, l.location.x, l.location.y) < d/2 + l.d/2) {
      //print("left");
      l.location.y = height*2;
      end=!end;
    }
  }
}

