/*Page Number 2
This function creates a sphere that will display the earths texture 
and allow the user to rotate it
*/
void Sphere()
{
  buttonPressed();
  if((keyPressed && key=='b')||backPressed==true)
  {
    pageNum=1;
    delay(500);
  }
  
  background(0);
  pushMatrix();
  translate(width/2,height/2);
  rotateY(thetaY);
  shape(globe,0,0);
  popMatrix();
  thetaY+=gpad.getSlider("LeftX").getValue();
  
  text("*Press the back button to exit the screen*",gridWidth*3.5,gridHeight*9);
  
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