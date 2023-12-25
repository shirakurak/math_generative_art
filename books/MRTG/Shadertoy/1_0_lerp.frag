void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
  vec2 pos = fragCoord.xy / iResolution.xy;
  vec3 RED = vec3(1.0, 0.0, 0.0);
  vec3 BLUE = vec3(0.0, 0.0, 1.0);
  vec3 col = mix(RED, BLUE, pos.x);
  fragColor = vec4(col, 1.0);
}