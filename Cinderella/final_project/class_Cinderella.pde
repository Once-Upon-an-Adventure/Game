class Cinderella {
  float locationX;
  float locationY;
  float d;
  float tallness;
  float limit;
  float xlimit1;
  float xlimit2;
  float yspeed;
  float xspeed;
  float gravity;
  boolean jumping;
  PImage cindy;

  Cinderella() {
   cindy= loadImage("cinderella.png");
    locationX = width/2;
    locationY = 0;
    d = 80;
    limit = 66;
    yspeed = 4;
    xspeed = 2;
    gravity = -.5;
    xlimit2 = width/2+80;
    xlimit1 = width/2 - 80;
  }
  
  void display() {
    image(cindy, locationX, locationY);
    noFill();
    noStroke();
    ellipseMode(CORNER);
    ellipse(locationX, locationY, d, d);
   // rect(locationX, locationY, thickness, tallness);
  }
  void move() {
    //if the speed is negative then it decreases the speed
    if (locationY  < limit && yspeed < 0) {
      yspeed = yspeed * .99;
    }
    locationX = constrain(locationX,xlimit1,xlimit2);
//    if (locationX <= xlimit1 || locationX >= xlimit2){
//      xspeed = 0;
//    }
    if (jumping == true) {
      //makes it go up
      if (locationY <= limit) {
        locationY = locationY + yspeed;
      }

      // if the location is higher then the limit then it turns speed negative and gives it gravity
      else {
        yspeed = -abs(yspeed);
        locationY = locationY + yspeed;
        yspeed = yspeed + gravity;
      }
    }
    // if the location is below zero then puts the speed to 0 and the location to 0
    if (locationY <= 0 ) {
      yspeed = 0;
     
      locationY = 0;
      jumping = false;
    }

    if (key == CODED) {
      if (keyCode == RIGHT) {
        locationX = locationX + xspeed;
      } 
      else if (keyCode == LEFT) {
        locationX = locationX - xspeed;
      }
    }
  }
  void keyPressed() {
    if (key == CODED) {
      if (keyCode == UP) {
        if (locationY == 0) {
          yspeed = 3;
        }
        jumping = true;
        keyCode= DOWN;
      }
    }
  }
  void check(Pumpkin p){
  if (dist(locationX + d, locationY + d, p.locationX + p.d, p.locationY + p.d) < d/2 + p.d/2){
    print ("TOUCH!");
    end=!end;
}
else {
  print("...");
}
  }
}


