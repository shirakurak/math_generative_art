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
  background(0);
  for (int i = 0; i < NUM; i++) {
    myParticle[i].draw();
  }
}

class Particle {
  color col;
  float diameter;
  PVector location;
  PVector velocity;
  
  Particle(float _diameter) {
   diameter = _diameter;
   location = new PVector(random(0, width), random(0, height));
   velocity = new PVector(random(-4, 4), random(-4, 4));
   col = color(random(255), random(255), random(255));
  }

  void draw() {
    fill(col);
    ellipse(location.x, location.y, diameter, diameter);
    location.add(velocity);
    if ((location.x < 0) || (location.x > width)) {
      velocity.x = velocity.x * -1; 
    }
    if ((location.y < 0) || (location.y > height)) {
      velocity.y = velocity.y * -1;
    }
  }
}
