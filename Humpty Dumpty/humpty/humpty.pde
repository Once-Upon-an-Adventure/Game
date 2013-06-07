Timer time1;
LeftShoot[] left= new LeftShoot[100000];
RightShoot[] right=new RightShoot[1000000];
PImage scene;
Humpty egg;
float loc;
int indexl=0;
int indexr=0;
void setup() {
  scene= loadImage("humpty_background.png");
  egg=new Humpty();
  size(scene.width, scene.height);
  left[0]=new LeftShoot();
  right[0]=new RightShoot();
  time1=new Timer(500);
}
void draw() {
  background(scene);
  egg.display();
  loc=random(0, 3);
  time1.update();
  if (time1.checkTime()==true) {
    if (loc<= 1) {
      left[indexl+1]= new LeftShoot();
      indexl++;
    }
    if (loc>= 1) {
      right[indexr+1]= new RightShoot();
      indexr++;
    }
  }
  for ( int i=0; i<=indexl; i++) {
    left[i].display();
    left[i].shoot();
   // egg.checkl(left[i]);
  }
  for (int i=0; i<=indexr; i++) {
    right[i].display();
    right[i].shoot();
  }
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      egg.x = egg.x + egg.speed;
    }
    else if (keyCode == LEFT) {
      egg.x = egg.x - egg.speed;
    }
  }
}

