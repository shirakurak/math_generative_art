import processing.pdf.*;

float strength = 1400.0;
int step = 6;
float noiseScale = 0.002;

void setup() {
  size(1920, 1200);
  noLoop();
}

void draw() {
  beginRecord(PDF, "output.pdf");
  background(255);
  stroke(191);
  noFill();
  
  for (int j = -height*2; j < height*2; j += step) {
    beginShape();
    
    for (int i = -width/2; i < width * 1.5; i += step) {
      float noise = noise(i * noiseScale, j * noiseScale) * strength;
      curveVertex(i, j + noise + (i * 0.5));
    }
    
    endShape();
  }
  
  endRecord();
}
