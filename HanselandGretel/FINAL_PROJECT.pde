PImage forest;
PImage house;

void setup(){
  size(800,800);
  forest = loadImage("pathforest.png");
  house = loadImage("house.png");
    
}

void draw(){

  background (forest);
  image(house,width/2+200,height/2-10);
  fill(255);
  ellipse(43,475,15,15);
  ellipse(75,490,15,15);
  ellipse(112, 488, 15,15);
  ellipse(105, 513, 15,15);
  ellipse(74, 521, 15,15);
  ellipse(50, 543, 15,15);
  ellipse(66, 561, 15,15);
  ellipse(92, 562, 15,15);
  ellipse(117, 560, 15,15);
  ellipse(160, 549, 15,15);
  ellipse(197, 531, 15,15);
  ellipse(240, 513, 15,15);
  
  
  
  pushMatrix();
 int[ ] coords = {
    40, 40, 80, 60, 100, 100, 60, 120, 50, 150
  };
  int i;

  noFill();
  stroke(0);
  beginShape();
  curveVertex(-50, -50); // the first control point
  curveVertex(43, 475); // is also the start point of curve
  curveVertex(109,488);
  curveVertex(100, 100);
  curveVertex(60, 120);
  curveVertex(658, 678); // the last point of curve
  curveVertex(50, 150); // is also the last control point
  endShape();

  fill(255, 0, 0);
  noStroke();
  for (i = 0; i < coords.length; i += 2)
  {
    ellipse(coords[i], coords[i + 1], 3, 3);
  }
popMatrix();

  
     
     
  text(mouseX, 100, 100);
  text(mouseY, 400, 100);
  
  
}

