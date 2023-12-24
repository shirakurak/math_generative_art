#version 300 es // GLSL のバージョンを指定（GLSL ES 3.0）
precision highp float; // 浮動小数点の精度を指定
out vec4 fragColor;
void main(void){
  fragColor = vec4(1.0, 0.0, 0.0, 1.0);
}
