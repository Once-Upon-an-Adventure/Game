/*
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
 image(begin, 0, 0);
 }
 void end() {
 lose=loadImage("lose.png");
 background(0);
 image(lose, 400, 400);
 }
 void win() {
 winner=loadImage("gj.png");
 background(0, 255, 0);
 image(winner, 400, 400);
 }
 
 */
CinderellaMiniGame cinderellagame;
void setup() {
  size(800, 800);
  cinderellagame = new CinderellaMiniGame();
}

void draw() {
  cinderellagame.run();
}

void mousePressed() {
  if (cinderellagame.start) {
    cinderellagame.start=false;
    cinderellagame.end=false;
  }
  if (cinderellagame.end) {
    cinderellagame.end=false;
    cinderellagame.start=true;
    cinderellagame.reset();
  }
}

class CinderellaMiniGame {
  Timer time;
  int index;
  Cinderella cindy;
  Background pic;
  Pumpkin[] pumpkin;
  boolean start;
  boolean end;
  PImage begin;
  PImage lose;
  PImage winner;

  CinderellaMiniGame() {
    index=0;
    pumpkin = new Pumpkin[1000];
    start=true;
    end=false;
    cindy = new Cinderella();
    pic = new Background();
    pumpkin[0] = new Pumpkin();
    time = new Timer(8000);
    begin=loadImage("cindy_start.png"); 
    lose=loadImage("lose.png");
    winner=loadImage("gj.png");
  }
  void run() {
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
      pushMatrix();
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
      popMatrix();
    }
  }
  void start() {

    background(255, 0, 0);
    imageMode(CORNER);
    image(begin, 0, 0);
  }
  void end() {

    background(0);
    imageMode(CORNER);
    image(lose, 0, 0);
    //    if (mousePressed) {
    //      start=false;
    //      end=false;
    //    }
  }
  void win() {
    background(0, 255, 0);
    imageMode(CORNER);
    image(winner, 0, 0);
  }

  void reset() {
    index=0;
    pumpkin = new Pumpkin[1000];
    start=true;
    end=false;
    cindy = new Cinderella();
    pic = new Background();
    pumpkin[0] = new Pumpkin();
    time = new Timer(8000);
  }
}

