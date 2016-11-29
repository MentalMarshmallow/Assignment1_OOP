/*Page Number 1
Loads all the elements on the mainPage
*/
void mainPage()
{
  background(backGr);
  oxygenMonitor();
  
  wave1.render();
  wave1.update();
  
  gauge1.render();
  gauge1.update();
  
  if(display==-1)
  {
    //do nothing
  }
  else
  {
    Details detail = details.get(display);//displays the details from index display
    detail.render();
    textView();
  }
  
  if(keyPressed && key=='a')
  {
    pageNum=2;
  }
  
}