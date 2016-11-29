void Sphere()
{
  PImage earth; 
  PShape globe;
  
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