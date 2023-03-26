# sketch

本リポジトリには、2021年までのsketchが格納されています。

### sketch_210818a_RGB_A
透明度を確かめるためのコード。
`fill()`は、図形の塗りつぶしの色を設定できる関数。
引数にRGBに対応する3つの値を渡せるが、4つ目の引数として透明度が指定できる。

### sketch_210822a_Array
`cos`と`Array`を用いたグラデーション。

### sketch_210828a_createImage

### sketch_210912a_3D
`lights()`により陰影がつく状態で、`box`により立方体を、`sphere`により球体を描画する。

### sketch_210914a_StoringInput

# メモ
画像保存時
- `save("sketch_210912a_3D.png");`
- ```
  void keyPressed() {
    if(keyCode == ENTER) {
      save("sketch_210914a_StoringInput.png");
    }
  }
  ```