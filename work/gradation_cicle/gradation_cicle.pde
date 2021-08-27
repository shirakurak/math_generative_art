int r = 400;

void setup() {
  size(1000, 1000);
  noLoop();
}

void draw() {
  translate(width/2, height/2);
  
  for (int i = 0; i < 255; i++) {
    stroke(i);
    lineToCircumference(i, 0);
  }
  
  for (int i = 0; i < 255; i++) {
    stroke(i/5);
    lineToCircumference(i, 2*PI/3);
  }
    
  for (int i = 0; i < 255; i++) {
    if (i % 10 == 0){
      stroke(255);
    } else {
      stroke(i);
    }
    lineToCircumference(i, 4*PI/3);
  }
}

void lineToCircumference(int i, float start) {
  float theta = map(i, 0, 255, start, start+2*PI/3);
  line(0, 0, r*cos(theta), r*sin(theta));
}
