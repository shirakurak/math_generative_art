void drawCell(float y) {
  float scalar = (float) width / num;
  float x = (width - state.length * scalar) * 0.5;
  y *= scalar;
  noStroke();
  
  for (int i = 0; i < state.length; i++) {
    fill(state[i] * 1.0 / mod, state[i] * 1.0 / mod, 1);
    rect(x, y, scalar, scalar);
    x += scalar;
  }
}
