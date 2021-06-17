int NUM = 10000;
Particle[] myParticle = new Particle[NUM];

void setup() {
  size(800, 600, P2D);
  frameRate(60);
  blendMode(ADD);
  noStroke();
  
  for (int i = 0; i < NUM; i++) {
    myParticle[i] = new Particle(random(8, 32));
  }
}

void draw() {
}


class Particle {
}
