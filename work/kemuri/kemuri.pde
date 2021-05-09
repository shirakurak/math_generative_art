void setup() {
  size(800, 600);
  frameRate(60);
  
  noStroke();
  color c1 = color(255, 255, 255);
  color c2 = color(200, 200, 200);
  for(float h = 0; h < height; h += 5){
      color c = lerpColor(c1, c2, h / height);
      fill(c);
      rect(0, h, width, 5);
  }
  
  fill(50);
  rect(100, 150, 100, 100, 10);
  
  stroke(50);
  strokeWeight(2);
  line(120, 0, 120, 150);
  line(140, 0, 140, height);
  line(160, 0, 160, 150);
  
  stroke(200);
  strokeWeight(2);
  line(120, 250, 90, height);
  line(160, 250, 300, height);
}

void draw() {
  float x = random(0, width);
  float y = random(0, height);
  float dist = dist(x, y, width/2, height/2);
  
  float diameter = 30 - dist / 10.0;
  
  if (diameter > 0) {
    noStroke();
    fill(200, 200, 200);
    ellipse(x, y, diameter, diameter);
  }
}
