float x;
float y;
float r;
float theta;

void setup() {
  size(800, 600);
  background(0);
  frameRate(60);
}

void draw() {
  stroke(255);
  noFill();
  
  r = random(width / 8, width / 4);
  theta = random(2*PI);
  x = width / 2.0 + r * cos(theta);
  y = height / 2.0 + r * sin(theta);
  
  point(x, y);
}
