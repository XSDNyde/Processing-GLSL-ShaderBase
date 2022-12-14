#ifdef GL_ES
precision mediump float;
precision mediump int;
#endif

uniform sampler2D meineTex;

// inputs coming from rasterizer stage
varying vec4 vertColor;
varying vec4 vertTexCoord;

//gl_FragCoord — contains the window-relative coordinates of the current fragment
//in highp vec4 gl_FragCoord;

//gl_FragDepth — establishes a depth value for the current fragment
//in highp float gl_FragDepth ;

void main() {
  gl_FragColor = texture2D( meineTex, vertTexCoord.st );
}