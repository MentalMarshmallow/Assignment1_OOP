PImage earth; 
PShape globe;
float thetaY,thetaX;
PFont font;
 
void setup() { 
  font=createFont("Georgia.vlw",25);
  
  textFont(font,25);
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
    thetaY+=0.1f;
  }
  else if(keyPressed && keyCode==RIGHT)
  {
    thetaY-=0.1f;
  }
  
}

void mouseDragged()
{
  if(mouseX>pmouseX)
  {
    thetaY+=0.1f;
  }
  if(mouseX<pmouseX)
  {
    thetaY-=0.1f;
  }
}

void draw() 
{
  pushMatrix();
  translate(width/2,height/2);
  rotateY(thetaY);
  shape(globe,0,0);
  popMatrix();
}