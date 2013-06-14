Timer time;
int index = 0;
Cinderella cindy;
Background pic;
Pumpkin[] pumpkin = new Pumpkin[1000];
boolean start=true;
boolean end=false;
PImage begin;
PImage lose;
PImage winner;
void setup() {
  size(800, 800);
  cindy = new Cinderella();
  pic = new Background();
  pumpkin[0] = new Pumpkin();
  time = new Timer(8000);
}

void draw() {
  if (start) {
    start();
  }
  else if (end) {
    end();
  }
  else if (millis()>= 77000) {
    win();
  }
  else {
    scale(1, -1);
    translate(0, -height);
    background(0);
    time.update();
    if (time.checkTime() == true) {
      print ("time");
      pumpkin[index + 1] = new Pumpkin();
      index++;
    }
    pic.display();
    pic.move();
    cindy.display();
    cindy.move();
    cindy.keyPressed();
    for (int i = 0; i <= index; i++) {
      pumpkin[i].display();
      pumpkin[i].move();
      cindy.check(pumpkin[i]);
    }
  }
}
void start() {
  begin=loadImage("cindy_start.png");
  background(255, 0, 0);
  image(begin,0,0);
}
void end() {
  lose=loadImage("lose.png");
  background(0);
  image(lose,400,400);
}
void win() {
  winner=loadImage("gj.png");
  background(0, 255, 0);
  image(winner,400,400);
}
void mousePressed() {
  start=!start;
}

