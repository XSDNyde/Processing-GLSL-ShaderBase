final String folderShaders = "shaders/";
final String folderImages = "images/";

PShader flatShader, texCoordShader, texShader;
PShape p;
PImage tex;

void setup() {
  size(1600, 900, P3D);
  
  // load and compile custom shaders
  flatShader     = loadShader( folderShaders+"frag.glsl", folderShaders+"vert.glsl" );
  texCoordShader = loadShader( folderShaders+"fragShowUV.glsl", folderShaders+"vert.glsl" );
  texShader      = loadShader( folderShaders+"fragTexture.glsl", folderShaders+"vert.glsl" );
  
  // CLAMP constrains uv coords to [0:1]
  // REPEAT calculates a modulo, making uv coords periodic in [0:1]
  textureWrap(CLAMP);
  
  // create the vertices, tessellation and uv coords
  p = createQuadsAndTri();
  
  // load a texture and bind it to the uniform variable in the shader
  tex = loadImage( folderImages + "brick900x900.jpg" );
  texShader.set( "meineTex", tex );
}


void draw()
{
  background( color( 0 ) );
  
  shader( flatShader );
  shape( p.getChild("quads") );
  shape( p.getChild("triangle") );
  
  translate( 0, height/3 );
  
  shader( texShader );
  shape( p.getChild("quads") );
  shape( p.getChild("triangle") );
  
  translate( 0, height/3 );
  
  shader( texCoordShader );
  shape( p.getChild("quads") );
  shape( p.getChild("triangle") );
}
