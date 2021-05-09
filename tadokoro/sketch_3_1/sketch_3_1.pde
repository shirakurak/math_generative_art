void setup() {
  size(800, 600);
  frameRate(60);
  background(0);
  noStroke();
}

void draw() {
  float x = random(0, width);
  float y = random(0, height);
  float dist = dist(x, y, width/2, height/2);
  
  float diameter = 30 - dist / 10.0;
  
  // 3.2
  if (diameter > 0) {
    fill(63, 127, 255);
    ellipse(x, y, diameter, diameter);
  }
  
  // 3.1
  //if (dist < height/2) {
  //  noStroke();
  //  fill(63, 127, 255);
  //}
  //else {
  //  noFill();
  //  stroke(31, 127, 255);
  //}
  
  //ellipse(x, y, 10, 10);
}
