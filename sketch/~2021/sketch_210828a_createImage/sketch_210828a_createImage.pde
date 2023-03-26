// 画像を格納するためのデータ型
PImage img;

void setup() {
  size(640, 360);
  
  // ARGB：RGBに加えて、透明度(A)を定められる
  img = createImage(230, 230, ARGB);
  
  // pixels[]：画像内の全ピクセルの値を含む配列
  // pixels[0]が左上で、pixels[1]が隣。右下に向かっていく。
  // img.pixels.length = 230*230
  for (int i = 0; i < img.pixels.length; i++) {
    
    // pixels[]の初めから終わりに対応させた透明度
    float a = map(i, 0, img.pixels.length, 255, 0);
    
    // pixes[]の値は、color型を値として持つ
    img.pixels[i] = color(0, 153, 204, a);
  }
}

void draw() {
  // 黒
  background(0);
  
  // image(img, x, y)：(x, y)にPImage型の画像を表示する
  // 座標(90, 80)に、画像を表示する
  image(img, 90, 80);
  
  // マウスカーソルの座標を中心とするよう画像を表示
  image(img, mouseX - img.width/2, mouseY - img.height/2);
}
