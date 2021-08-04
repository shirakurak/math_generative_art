void setup() {
  size(400, 400);
}

void draw() {
  
  noFill();
  strokeWeight(2);
  stroke(200, 0, 0);
  drawSakura(width/2, height/2, 200);

}

void drawSakura(int ox, int oy, int or) {

  int petalNum = 5;
  
  pushMatrix();
  
  translate(ox, oy);
  rotate(radians(90));
  
  beginShape();
  
  
  for (int theta = 0; theta < 360; theta++) {
    
    float A = petalNum / PI * radians(theta);
  
    
  
  
  }
  
  
  
  
  
  endShape(CLOSE);
  
  popMatrix();
  
}
