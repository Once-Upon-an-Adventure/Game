class Cinderella {
  float locationX;
  float locationY;
  float thickness;
  float tallness;
  float limit;
  float xlimit1;
  float xlimit2;
  float yspeed;
  float xspeed;
  float jumpThisHigh;
  float gravity;
  boolean jumping;
  PImage cindy;

  Cinderella() {
   cindy= loadImage("cinderella.png");
    locationX = width/2;
    locationY = 0;
    thickness = 50;
    tallness = 100;
    limit = 50;
    yspeed = 3;
    xspeed = .5;
    jumpThisHigh = 50;
    gravity = -.5;
    xlimit2 = width/2+80;
    xlimit1 = width/2 - 80;
//    jumping = true;
  }
  void display() {
    image(cindy, locationX, locationY);
   // rect(locationX, locationY, thickness, tallness);
  }
  void move() {
    //if the speed is negative then it decreases the speed
    if (locationY  < limit && yspeed < 0) {
      yspeed = yspeed * .94;
    }
    if (locationX <= xlimit1 || locationX >= xlimit2){
      xspeed = 0;
    }
  


    if (jumping == true) {
      //makes it go up
      if (locationY < limit) {
        locationY = locationY + yspeed;
      }

      // if the location is higher then the limit then it turns speed negative and gives it gravity
      if (locationY > limit) {
        yspeed = yspeed * -1;
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
}


