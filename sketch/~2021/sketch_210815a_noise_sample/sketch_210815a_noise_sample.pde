void setup() {
  size(700, 700);
  background(255);
}

void draw() {
  int div = 50;
 
  beginShape();
  
  for (int i = 0; i < div; i++) {
   float x = i * width / div;
   float y = noise(i * 0.05) * height;
   vertex(x, y);
  }
  
  endShape();
}
