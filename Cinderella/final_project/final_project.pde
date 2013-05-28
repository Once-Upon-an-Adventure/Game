float locationX = 0;
float locationY = 0;
float thickness = 50;
float tallness = 100;
float limit = 50;
float yspeed = 3;
float xspeed = 2;
float jumpThisHigh = 50;
float gravity = -.5;

void setup() {
  size(500, 500);
}

void draw() {
  scale(1, -1);
  translate(0, -height);
  background(0);
  rect(locationX, locationY, thickness, tallness);

  // if the location is higher then the limit then it turns speed negative and gives it gravity
    if (locationY > limit) {
      yspeed = yspeed * -1;
      locationY = locationY + yspeed;
      yspeed = yspeed + gravity;
    }
    
  if (key == CODED) {
    if (keyCode == UP) {
      //makes it go up
      if (locationY < limit) {
        locationY = locationY + yspeed;
        //if the speed is negative then it decreases the speed
        if (locationY  < limit && yspeed < 0) {
          yspeed = yspeed * .94;
        }
// if the location is below zero then puts the speed to 0 and the location to 0
        if (locationY <0 ) {
          yspeed = 0;
          locationY = 0;
        }
      }
    } 
  

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
    }
  }
}

