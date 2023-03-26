size(640, 360, P3D);
background(0);
// 光の設定。デフォルトの設定となる。陰影がつく。
lights();

// 輪郭線なし
noStroke();
// 現在の座標の保存
pushMatrix();
translate(130, height/2, 0);
// Y軸に沿って回転
rotateY(1.25);
// X軸に沿って回転
rotateX(-0.4);
// 立方体
box(100);
// 保存した座標の展開
popMatrix();  

// pushMatrix(), popMatrixを使用しているので、上下の図形はそれぞれ絶対座標で描画できる

noFill();
stroke(255);
// 現在の座標の保存
pushMatrix();
translate(500, height*0.35, -200);
// 球体
sphere(280);
// 保存した座標の展開
popMatrix();
