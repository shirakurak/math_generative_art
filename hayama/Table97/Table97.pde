int mod = 97;

size(500, 500);
colorMode(HSB, 1);
background(0, 0, 1);

float scalar = (float) width / mod;

for (int i = 0; i < mod; i++) {
  for (int j = 0; j < mod; j++) {
    int num = (i + j) % mod;
    PVector v = new PVector(j + 0.5, i + 0.5);
    v.mult(scalar);
    
    fill(num * 1.0 / mod);
    noStroke();
    ellipse(v.x, v.y, scalar / 2, scalar / 2);
    ellipse(v.x, v.y, scalar * num / mod, scalar * num / mod);
  }
}

save("table97.png");
