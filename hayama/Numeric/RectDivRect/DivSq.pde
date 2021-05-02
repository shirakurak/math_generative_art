void divSquare(float xPos, float yPos, float wd) {
  int itr = 0;
  float xEndPos = wd + xPos;
  float yEndPos = wd + yPos;
  
  while (wd > 0.1) {
    itr++;
    if (itr % 2 == 1) {
      while (xPos + wd * ratio < xEndPos + 0.1) {
        fill(color(random(1), 1, 1));
        rect(xPos, yPos, wd * ratio, wd);
        xPos += wd * ratio;
      }
      wd = xEndPos - xPos;
    } else {
      while (yPos + wd / ratio < yEndPos + 0.1) {
        fill(color(random(1), 1, 1));
        rect(xPos, yPos, wd, wd / ratio);
        yPos += wd / ratio;
      }
      wd = yEndPos - yPos;
    }
  }
}
