/*Page Number 1
Loads all the elements on the mainPage
*/
void mainPage()
{
  background(backGr);
  drawCursor();
  oxygenMonitor();
  
  wave1.render();
  if(display==2)//Can only be updated if the monitor is clicked
  {
    wave1.update();
  }
  
  gauge1.render();
  if(display==1)//Can only be updated if the gauge is clicked
  {
    gauge1.update();
  }
  
  if(display==-1)
  {
    //do nothing
  }
  else
  {
    Details detail = details.get(display);//displays the details from index display
    detail.render();
    textView(display);
  }
  
  if((keyPressed && key=='e')||startPressed==true)
  {
    pageNum=2;
    delay(100);
  }
  
  if(backPressed==true||(keyPressed && key=='v') )
  {
    pageNum=3;
  }
  
}