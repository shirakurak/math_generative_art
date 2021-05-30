void drawNumber(float y) {
  float scalar = (float) width / num;
  float x = (width - state.length * scalar) * 0.5;
  y *= scalar;
  fill(0);
  
  for (int i = 0; i < state.length; i++) {
    textSize(scalar * 0.5);
    text(state[i], x + scalar * 0.5, y + scalar * 0.5);
    x += scalar;
  }
}
