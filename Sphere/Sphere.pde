PImage earth; 
PShape globe;
float thetaY,thetaX;
 
void setup() { 
  size(600, 600, P3D); 
  background(0);
  earth = loadImage( "http://www.solarsystemscope.com/nexus/content/planet_textures/texture_earth_clouds.jpg");
  globe = createShape(SPHERE, 200); 
  globe.setTexture(earth);
  globe.setStroke(false);
  thetaY=0;
  thetaX=0;
}

void keyPressed()
{
  if(keyPressed && keyCode==LEFT)
  {
    thetaY++;
  }
  else if(keyPressed && keyCode==RIGHT)
  {
    thetaY--;
  }
  if(keyPressed && keyCode==UP)
  {
    thetaX++;
  }
  if(keyPressed && keyCode==DOWN)
  {
    thetaX--;
  }
  
}

void mouseDragged()
{
  pushMatrix();
  translate(width/2,height/2);
  rotateY(radians(mouseX));
  rotateZ(radians(mouseY));
  shape(globe,0,0);
  popMatrix();
}

void draw() 
{ 
}