Prince p;
Witch w;
Witch2 w2;
//Timer time;
PImage Hair;
PImage tower;
PImage grass;
void setup() {
  Hair = loadImage ("Hair.png");
  tower = loadImage("tower.jpg");
  grass = loadImage("grassfixed.png");
  size(800,800);
  p = new Prince();
  w = new Witch();
  w2 = new Witch2();
 // time = new Timer(1000);
}
void draw() {
  background(91,163,232);
  image(grass,0,700);
 image(tower,width/2-544/2, 0);
 image(Hair,width/2-220/2,0);
 w.display();
 w.move();
 if(millis() >= random(3000,5000)){
   w2.display();
   w2.move();
 }
// w2.display();
// w2.move();
 p.display();
 p.move();
// time.update();
// if(time.checkTime()) {
//   w.display();
//   w.move();
//   w2.display();
//   w2.move();
// }
 if ( w.caught(p) == true) {
   w.touch(p);
   print("touch");
 }
 if (w.caught(p) == true) {
   w2.touch(p);
   print("touch");
 }
 if(w.x >=width/2 || w2.x<=width/2-15) {
   background(0);
   textSize(50);
   fill(random(255),random(255),random(255));
   text("You Lose",width/2-70,height/2-30);
 }
 if(millis()>=90000 && w.x<=width/2 && w2.x>=width/2-15){
   background(255);
   text("You WIn",width/2,height/2);
 }
}
