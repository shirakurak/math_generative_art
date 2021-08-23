float[] coswave;

void setup() {
  
  size(640, 360);
  
  // 長さwidth=640のarray
  coswave = new float[width];
  
  for (int i = 0; i < width; i++) {
    
    // map(x, f1, t1, f2, t2)：xをf1～t1の値から、f2～t2の値に変換する
    // 横に移動する各点に対して、0～PIに変換した値を考える
    float amount = map(i, 0, width, 0, PI);
    
    //1 → 0 → 1
    coswave[i] = abs(cos(amount));
  }
  
  // 白
  background(255);
  // draw()の処理を止める
  noLoop();
}

// 縦線をx軸方向に、色を変えながら動かすことでグラデーションを作る
void draw() {
  
  // 上3分の1
  int y1 = 0;
  int y2 = height/3;
  
  for (int i = 0; i < width; i++) {
    // 線の色を指定
    stroke(coswave[i]*255);
    line(i, y1, i, y2);
  }
  
  // 中央3分の1
  y1 = y2;
  y2 = y1 + y1;
  
  for (int i = 0; i <width; i++) {
    // 4で割っているため、一番明るくてstroke(63.75)
    stroke(coswave[i]*255 / 4);
    line(i, y1, i, y2);
  }
  
  // 下3分の1
  y1 = y2;
  y2 = height;
  
  for (int i = 0; i < width; i++) {
    // 上3分の1の反転
    stroke(255 - coswave[i]*255);
    line(i, y1, i, y2);
  }
  
}
