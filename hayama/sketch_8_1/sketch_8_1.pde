int[][] mtxA = {{2, 1}, {0, 1}};
int[][] mtxB = {{3}, {1}};

void setup() {
  int[][] mtx = multMtx(mtxA, mtxB);
  
  println("mult:");
  for (int i = 0; i < mtx.length; i++) {
    println("row:" + i);
    printArray(mtx[i]);
  }
  
  mtx = trMtx(mtxA);
  
  println("transpose:");
  for (int i = 0; i < mtx.length; i++) {
    println("row:" + i);
    printArray(mtx[i]);
  }
}

int[][] multMtx(int[][] mtx1, int[][] mtx2) {
  int[][] newMtx = new int[mtx1.length][mtx2[0].length];
  for (int i = 0; i < mtx1.length; i++) {
    for (int j = 0; j < mtx2[0].length; j++) {
      int sum = 0;
      for (int k = 0; k < mtx2.length; k++) {
        sum += mtx1[i][k] * mtx2[k][j];
      }
      newMtx[i][j] = sum;
    }
  }
  return newMtx;
}
