void setup() {
  size(1000, 1000);
  noLoop();
}

void draw() {
  int r = 400;
  translate(width/2, height/2);
  
  for (int i = 0; i < 255; i++) {
    stroke(i);
    float theta = map(i, 0, 255, 0, 2*PI/3);
    line(0, 0, r*cos(theta), r*sin(theta));
  }
  
  for (int i = 0; i < 255; i++) {
    stroke(i/5);
    float theta = map(i, 0, 255, 2*PI/3, 4*PI/3);
    line(0, 0, r*cos(theta), r*sin(theta));
  }
    
  for (int i = 0; i < 255; i++) {
    if (i % 10 == 0){
      stroke(255);
    } else {
      stroke(i);
    }
    float theta = map(i, 0, 255, 4*PI/3, 2*PI);
    line(0, 0, r*cos(theta), r*sin(theta));
  }
}
