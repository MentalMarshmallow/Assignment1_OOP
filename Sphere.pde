//Page Number 2
void Sphere()
{
  background(0);
  pushMatrix();
  translate(width/2,height/2);
  rotateY(thetaY);
  shape(globe,0,0);
  popMatrix();
}


void mouseDragged()
{
  if(pageNum==2)//Page number for the sphere
  {
    if(mouseX>pmouseX)
    {
      thetaY+=0.1f;
      println(thetaY);
    }
    if(mouseX<pmouseX)
    {
      thetaY-=0.1f;
    }
  }
}