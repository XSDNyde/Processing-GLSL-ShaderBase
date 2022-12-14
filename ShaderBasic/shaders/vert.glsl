#define PROCESSING_COLOR_SHADER 

// transform = projection * modelview
uniform mat4 transformMatrix;
uniform mat4 modelviewMatrix;
uniform mat4 projectionMatrix;
// uniform resolution
// pixels from the previous frame
uniform sampler2D ppixels;
// matrix for tranforming normals
uniform mat3 normalMatrix;
// PER LIGHTSOURCE DATA
uniform int lightCount;
uniform vec4 lightPosition[8];
uniform vec3 lightNormal[8];
uniform vec3 lightAmbient[8];
uniform vec3 lightDiffuse[8];
uniform vec3 lightSpecular[8];      
uniform vec3 lightFalloff[8];
uniform vec2 lightSpot[8];
// TEXTURE DATA
uniform sampler2D texture;
//uniform sampler2DRect texMap;
uniform mat4 texMatrix;
//uniform texOffset;

// LINE RENDERERING ?
uniform vec4 viewport;
uniform int perspective;
uniform vec3 scale;

// PER VERTEX DATA
// position (3D + w=1) of the vertex
attribute vec4 position;
// ARGB color of the vertex
attribute vec4 color;
// normal (3D) of the vertex;
attribute vec3 normal;
// texture coordinate of the vertex
attribute vec2 texCoord;

// material lighting info
// ambient color
attribute vec4 ambient;
// specular color
attribute vec4 specular;
// emissive color
attribute vec4 emissive;
// shininess intensity
attribute float shininess;
// direction of lightsource
attribute vec4 direction;
// OFFSET?
attribute vec4 offset;

// OUTPUTS of vertex shader
varying vec4 vertColor;
varying vec4 vertTexCoord;

void main() {
  // Applying modelview then projection transformation to incoming vertex:
  gl_Position = transformMatrix * position;

  // Passing unmodified vertex color to the fragment shader.
  vertColor = color;
  vertTexCoord = texMatrix * vec4( texCoord, 1.0, 1.0 );
}