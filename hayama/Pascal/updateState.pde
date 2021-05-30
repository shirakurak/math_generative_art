void updateState() {
  int[] BOUNDARY = {0};
  int[] nextState = new int[state.length + 1];
  
  state = splice(state, BOUNDARY, 0);
  state = splice(state, BOUNDARY, state.length);
  
  for (int i = 0; i < state.length - 1; i++) {
    nextState[i] = transition(i);
  }
  state = nextState;
  gen++;
}

int transition(int i) {
  int nextC = state[i + 1] + state[i];
  //return nextC;
  return nextC % mod;
}
