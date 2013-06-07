class Humpty {
  float x;
  float y;
  float speed;
 // float d;
  PImage humpty;

  Humpty() {
    x=mouseX;
    y=210;
    speed=5;
    humpty= loadImage("humpty_small.png");
  }
  void display() {
    image(humpty, x, y);
    noStroke();
    noFill();
    ellipse(x+45, 280, 100, 100);
  }
//   void checkr(RightShoot r) {
//    if (dist(x, y, r.x, r.y) < d/2 + r.d/2) {
////      print("TOUCH!");
//      r.y = height*2;
//    }
//   }
//     void checkl(LeftShoot l) {
//    if (dist(x, y, l.x, l.y) < d/2 + l.d/2) {
////      print("TOUCH!");
//      l.y = height*2;
//    }
//}
}
