Timer time;
int index = 0;
Cinderella cindy;
Background pic;
Pumpkin[] pumpkin = new Pumpkin[1000];

void setup() {
  size(800, 800);
  cindy = new Cinderella();
  pic = new Background();
  pumpkin[0] = new Pumpkin();
  time = new Timer(500);
}

void draw() {
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


