class Background {
  float speed;
  float x;
  float y;
  PImage background;
  
  Background(){
    background = loadImage("backgrounded.jpg");
    speed = -.2;
    x = 0;
    y = 0;
  }
  void display() {
    image(background,x,y);
  }
  void move(){
    x = x + speed;
  }
}
