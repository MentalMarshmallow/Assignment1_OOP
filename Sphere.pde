//Page Number 2
void Sphere()
{
  buttonPressed();
  if((keyPressed && key=='b')||backPressed==true)
  {
    pageNum=1;
  }
  
  background(0);
  pushMatrix();
  translate(width/2,height/2);
  rotateY(thetaY);
  shape(globe,0,0);
  popMatrix();
  thetaY+=gpad.getSlider("LeftX").getValue();
}


void mouseDragged()
{
  if(pageNum==2)//Page number for the sphere
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
}