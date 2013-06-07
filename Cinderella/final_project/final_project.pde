//float locationX = 0;
//float locationY = 0;
//float thickness = 50;
//float tallness = 100;
//float limit = 50;
//float yspeed = 3;
//float xspeed = .5;
//float jumpThisHigh = 50;
//float gravity = -.5;
//boolean jumping;
Cinderella cindy;
Background pic;
Pumpkin pumpkin;
void setup() {
  size(800, 800);
  cindy = new Cinderella();
  pic = new Background();
  pumpkin = new Pumpkin();
}

void draw() {
  scale(1, -1);
  translate(0, -height);
  background(0);
    pic.display();
  pic.move();
  cindy.display();
  cindy.move();
  cindy.keyPressed();
  pumpkin.display();

}
//  rect(locationX, locationY, thickness, tallness);
//
//
//  //if the speed is negative then it decreases the speed
//  if (locationY  < limit && yspeed < 0) {
//    yspeed = yspeed * .94;
//  }

//
//  if (jumping == true) {
//    //makes it go up
//    if (locationY < limit) {
//      locationY = locationY + yspeed;
//    }
//
//    // if the location is higher then the limit then it turns speed negative and gives it gravity
//    if (locationY > limit) {
//      yspeed = yspeed * -1;
//      locationY = locationY + yspeed;
//      yspeed = yspeed + gravity;
//    }
//  }
//  // if the location is below zero then puts the speed to 0 and the location to 0
//  if (locationY <0 ) {
//    yspeed = 0;
//    locationY = 0;
//    jumping = false;
//  }
//
//  if (key == CODED) {
//    if (keyCode == RIGHT) {
//      locationX = locationX + xspeed;
//    } 
//    else if (keyCode == LEFT) {
//      locationX = locationX - xspeed;
//    }
//  }
//}
//void keyPressed() {
//  if (key == CODED) {
//    if (keyCode == UP) {
//      if (locationY == 0) {
//        yspeed = 3;
//      }
//      jumping = true;
//    }
//  }
//}

