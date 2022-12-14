PShape createQuadsAndTri()
{
  float[] w = { 0, 1*width/3, 2*width/3, width };
  float[] h = { 0, 1*height/3, 2*height/3, height };
  
  PShape g = createShape( GROUP );
  
  PShape s;
  s = createShape();
  s.beginShape( QUADS );
  s.noStroke();
  s.fill( color( 255, 127, 127 ) );
  s.vertex( w[0]+10, h[0]+10, 0, 0 );
  s.fill( color( 255, 127, 255 ) );
  s.vertex( w[1]-10, h[0]+10, 1, 0 );
  s.fill( color( 127, 127, 255 ) );
  s.vertex( w[1]-10, h[1]-10, 1, 1 );
  s.fill( color( 127, 255, 127 ) );
  s.vertex( w[0]+10, h[1]-10, 0, 1 );
  
  s.fill( color( 255, 127, 255 ) );
  s.vertex( w[2]-10, h[0]+10, 1.5, -0.5  );
  s.fill( color( 127, 127, 255 ) );
  s.vertex( w[2]-10, h[1]-10, 1.5, 1.5 );
  s.fill( color( 127, 255, 127 ) );
  s.vertex( w[1]+10, h[1]-10, -0.5, 1.5 );
  s.fill( color( 255, 127, 127 ) );
  s.vertex( w[1]+10, h[0]+10, -0.5, -0.5 );
  s.endShape();
  
  g.addName( "quads", s );
  
  
  s = createShape();
  s.beginShape( TRIANGLE );
  s.noStroke();
  s.fill( color( 255, 63, 127 ) );
  s.vertex( w[2]+10, h[0]+10, 0, 0 );
  s.fill( color( 127, 255, 63 ) );
  s.vertex( w[3]-10, h[0]+10, 1, 0 );
  s.fill( color( 63, 127, 255 ) );
  s.vertex( (w[2]+w[3])/2, h[1]-10, 0.5, 1 );
  s.endShape();
  
  g.addName( "triangle", s );
  
  return g;
}
