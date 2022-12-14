#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

// inputs coming from rasterizer stage
varying vec4 vertColor;
varying vec4 vertTexCoord;

//gl_FragCoord — contains the window-relative coordinates of the current fragment
//in highp vec4 gl_FragCoord;

//gl_FragDepth — establishes a depth value for the current fragment
//out highp float gl_FragDepth ;

void main() {
  // Outputting pixel color (interpolated across triangle)
  // gl_FragColor = vec4( 0.5, 0.5, 0.5, 1.0 ) + vertTexCoord;
  gl_FragColor = vertColor;

  // bool, true for front facing
  //gl_FrontFacing
  if( ! gl_FrontFacing )
    gl_FragColor = vec4( 1, 0, 0, 1 );
}