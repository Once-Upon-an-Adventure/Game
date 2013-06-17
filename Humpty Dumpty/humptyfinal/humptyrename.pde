Timer time1;
LeftShoot[] left= new LeftShoot[100000];
RightShoot[] right=new RightShoot[1000000];
PImage scene;
Humpty egg;
float loc;
int indexl=0;
int indexr=0;
boolean start=true;
boolean end=false;
PImage begin; 
PImage winner;
PImage lose;
void setup() {
  scene= loadImage("humpty_background.png");
  egg=new Humpty();
  size(800,800);
  left[0]=new LeftShoot(egg);
  right[0]=new RightShoot(egg);
  time1=new Timer(1500);
 
}
void draw() {
  
  if (start){
   start();
  }
  else if(end){
  end();
  }
  else if(millis()>= 60000){
    win();
  }
  else{
  background(scene);
  egg.display();
  loc=random(0, 3);
  time1.update();
  if (time1.checkTime()==true) {
    if (loc<= .9) {
      left[indexl+1]= new LeftShoot(egg);
      indexl++;
    }
    if (loc>= .9) {
      right[indexr+1]= new RightShoot(egg);
      indexr++;
    }
  }
  for ( int i=0; i<=indexl; i++) {
    left[i].display();
    left[i].shoot();
    egg.checkl(left[i]);
  }
  for (int i=0; i<=indexr; i++) {
    right[i].display();
    right[i].shoot();
    egg.checkr(right[i]);
  }
  }
}
void start(){
   begin= loadImage("humpty_start_nigga.png");
   background(0);
   image(begin,0,0);
}
void end(){
  lose= loadImage("lose.png");
  background(0);
  image(lose,0,0);
}
void win(){
  winner= loadImage("da_end.png");
  background(0);
  image(winner,0,0);
}
void mousePressed(){
  start=!start;
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

