PVector location;
float phase, velocity, radius;
int size = 40;

// 球の塗りつぶし？
// 円上から少し炎みたいに出るなど
// 色もグラデーションする

void setup() {
  size(610, 610);
  frameRate(10);
  background(0);
  noStroke();
  phase = 0.0;
  velocity = 8.0; // 速力度
  radius = height / 4.0;
  location = new PVector(0, 0);
}
void draw() {
  stroke(240, 240, 240);
  fill(0, 15);
  rect(-1, -1, width+1, height+1);
  translate(width / 2.0, height / 2.0);
  location.x = cos(radians(phase)) * radius;
  location.y = sin(radians(phase)) * radius;
  noFill();
  ellipse(location.x, location.y, 40, 40);
  phase += velocity;
}
