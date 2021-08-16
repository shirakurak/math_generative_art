void colorRect(float xPos, float yPos, float wd, float ht) {
  color col;
  float val = random(1);
  col = color (0, 0, val);
  
  fill(col);
  strokeWeight(1);
  rect(xPos, yPos, wd, ht);
}
