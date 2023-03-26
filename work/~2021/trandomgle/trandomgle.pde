void setup() {
  size(400, 400);
  color c = color(200, 200, 200);
  fill(c);
}

void draw() {
}

void mouseClicked() {
  float x1 = random(0, height);
  float y1 = random(0, height);
  float x2 = random(0, height);
  float y2 = random(0, height);
  float x3 = random(0, height);
  float y3 = random(0, height);

  triangle(x1, y1, x2, y2, x3, y3);
  save("trandomgle.png");
}
