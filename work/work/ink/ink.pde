int NUM = 10000;
float[] x = new float[NUM];
float[] y = new float[NUM];

void setup() {
  size(800, 800, P2D);
  frameRate(60);
  background(0);
  
  for (int i = 0; i < NUM; i++) { 
    float theta = random(0, 2*PI);
    x[i] = width / 2.0 + (width / 4) * cos(theta);
    y[i] = height / 2.0 + (width / 4) * sin(theta);
  }
}

void draw() {
  stroke(255);
  noFill();
  blendMode(ADD);
  
  for (int i = 0; i < NUM; i++) {
    point(x[i], y[i]);
    x[i] = x[i] + random(-1.0, 1.0);
    y[i] = y[i] + random(-1.0, 1.0);
  }
  
  blendMode(BLEND);
  fill(0, 5);
  noStroke();
  rect(0, 0, width, height);
}
