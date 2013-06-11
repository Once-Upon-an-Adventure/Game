class Background {
  float speed;
  float x;
  float y;
  PImage background;
  
  Background(){
    imageMode(CORNER);
    background = loadImage("backgrounded.jpg");
    speed = -.4;
    x = 0;
    y = 0;
  }
  void display() {
    imageMode(CORNER);
    image(background,x,y);
  }
  void move(){
    x = x + speed;
    if(millis()>=77000){
      speed = 0;
    }
  }
}
