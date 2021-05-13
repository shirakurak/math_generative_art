int rowA = 20;
int columnA = 4;

int[][] mtxA = new int[rowA][columnA];
int[][] mtxB = new int[columnA][columnA];
int[][] mtxC = new int[rowA][rowA];
int[][] mtxP = new int[rowA][rowA];

float scalar;

void setup() {
  size(500, 500);
  
  initialize(mtxA);
  initialize(mtxB);
  initialize(mtxC);
  
  scalar = (float) height / (rowA + columnA);
}

void draw() {
  mtxP = multMtx(multMtx(mtxA, trMtx(mtxB)), mtxC);
  strokeWeight(1);
  
  drawTable(mtxA, 0, columnA, BLACK, WHITE);
  drawTable(mtxB, 0, 0, BLACK, WHITE);
  drawTable(mtxC, columnA, 0, BLACK, WHITE);
  drawTable(mtxP, columnA, columnA, colorYoko, colorTate);
  
  strokeWeight(3);
  lint(0, scalar * columnA, width, scalar * columnA);
  line(scalar * columnA, 0, scalar * columnA, height);
}
