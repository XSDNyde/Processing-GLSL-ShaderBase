#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

uniform sampler2D texture;

// inputs coming from rasterizer stage
varying vec4 vertColor;
varying vec4 vertTexCoord;

void main() {
  // Outputting pixel color (interpolated across triangle)
  gl_FragColor = vec4( vertTexCoord.st, 0, 1 );
}