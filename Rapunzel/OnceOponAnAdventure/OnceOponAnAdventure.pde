Prince p;
Witch w;
Witch2 w2;
int intro     = 0;
int runGame  = 1;
int gameOver = 2;
int gameWin = 3;
int gameState = intro;
PImage Hair;
PImage tower;
PImage grass;
PImage end;
PImage clouds;
PImage begin;
PImage lose;
void setup() {
  Hair = loadImage ("Hair.png");
  tower = loadImage("tower.jpg");
  grass = loadImage("grassfixed.png");
  end = loadImage("PrinceandRapunzel.png");
  clouds = loadImage("Clouds.png");
  size(800,800);
  p = new Prince();
  w = new Witch();
  w2 = new Witch2();
}
void draw() {
  
  if (gameState == intro) {
    intro();
  }
  else if (gameState == runGame) {
    runGame();
  }
}

void intro() {
  begin= loadImage("rapzel_start.png");
  background(255);
  image(begin,0,0);
}

void runGame() {
  background(91,163,232);
  image(grass,0,700);
  image(clouds,0,0);
 image(tower,width/2-544/2, 0);
 image(Hair,width/2-220/2,0);
 w.display();
 w.move();
 if(millis() >= random(3000,5000)){
   w2.display();
   w2.move();
 }
 p.display();
 p.move();
 if ( w.caught(p) == true) {
   w.touch(p);
   print("touch");
 }
 if (w2.caught(p) == true) {
   w2.touch(p);
   print("touch");
 }
 if(w.x >=width/2 || w2.x<=width/2) {
   lose();
   p.y= 0;
   p.x= 0;
 }
 if(millis()>=60000 && w.x<=width/2 && w2.x>=width/2-15){
   win();
 }
}
void lose(){
  lose= loadImage("lose.png");
  background(0);
  image(lose,0,0);
}
void win() {
     background(end);
   fill(0);
   textSize(60);
   text("You Win",width/2-70,height/2-60);
   w.x = 0;
   w2.x = width;
}
void mousePressed() {
  if ((gameState == intro) && (mouseX>0 && mouseX<800) && (mouseY>0 && mouseY<800)) {
    gameState =  runGame;
  }
}



