class LeftShoot {
  float x;
  float y;
  float d;
  
  float xspeed;
  float yspeed;
  PImage ball;
  PVector location;
  PVector destination;
  PVector velocity;

  LeftShoot(Humpty egg) {
    location=new PVector(45, 50);
    destination= new PVector(egg.x+100, egg.y+100);
    PVector diff= PVector.sub(destination, location);
    float angle = diff.heading();
    velocity= PVector.fromAngle(angle);
    velocity.mult(3);
    x=45;
    y=50;
    d=20;
    xspeed = random(1, 5);
    yspeed=random(3, 5);
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

