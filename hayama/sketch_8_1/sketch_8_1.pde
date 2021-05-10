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
