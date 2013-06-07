//RAPUNZEL
Prince p;
Witch w;
PImage Hair;
PImage tower;
PImage grass;
//PImage hair;
void setup() {
  Hair = loadImage ("Hair.png");
  tower = loadImage("tower.jpg");
  grass = loadImage("grassfixed.png");
  size(800,800);
  p = new Prince();
  w = new Witch();
}
void draw() {
  background(91,163,232);
  image(grass,0,700);
 image(tower,width/2-544/2, 0);
 image(Hair,width/2-220/2,0);
 w.display();
 w.move();
 p.display();
 p.move();
 if ( w.caught(p) == true) {
   w.touch(p);
   print("touch");
 }
// if (w.lose() == true) {
  // image(Hair
 //}
}
