class RightShoot {
  PVector location;
  PVector destination;
  PVector velocity;
  float x;
  float y;
  float d;
  float xspeed;
  float yspeed;
  PImage ball;

  RightShoot(Humpty egg) {
    location= new PVector(753, 50);
    destination= new PVector(egg.x+50, egg.y+50);
    PVector diff= PVector.sub(destination, location);
    float angle = diff.heading();
    velocity= PVector.fromAngle(angle);
    velocity.mult(3);
    ball=loadImage("cannon_alpha.png");
  }
  void display() {
    ellipse(location.x, location.y, d, d);
    image(ball, location.x-10, location.y-10);
  }
  void shoot() {
    location.add(velocity);
  }
}

