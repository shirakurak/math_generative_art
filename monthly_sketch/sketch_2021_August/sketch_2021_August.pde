void setup() {
  size(400, 400);
}

void draw() {
  
  background(255);
  
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
    int md = floor(A) % 2;
    float r = pow(-1, md) * (A - floor(A)) + md;
    float R = r + 2 * calcH(r);
    
    float x = or * R * cos(radians(theta));
    float y = or * R * sin(radians(theta));
    
    vertex(x, y);
    
  }
  
  endShape(CLOSE);
  
  popMatrix();
  
}

float calcH(float x) {
  if (x < 0.8) {
    return 0;
  } else {
    return 0.8 - x;
  }
}
