/* Function to get the left analog sticks input values 
to display and change the cursor for the controller.
*/

void drawCursor()
{
  float xAdd=gpad.getSlider("LeftX").getValue()*conSpeed;
  float yAdd=gpad.getSlider("LeftY").getValue()*conSpeed;
  
  if(cursorX+xAdd<width && cursorX>0-xAdd)
  {
    cursorX += xAdd;
  }
  if(cursorY+yAdd<height && cursorY>0-yAdd)
  {
    cursorY += yAdd;
  }
  
  fill(255);
  ellipse(cursorX,cursorY,10,10);
  
  //Check if the a button was pressed display a red circle if so
  buttonPressed();
  if(aPressed==true)
  {
    fill(255,0,0);
    ellipse(cursorX,cursorY,10,10);
    checkZone();
    delay(100);
  }
}