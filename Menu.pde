/*Page Number 0
Loads the menu onto the screen
*/

void Menu()
{
  //Exit Menu when spacebar is pressed
  if(keyPressed && key==' ')
  {
    pageNum++;//increment pagenumber to exit Page
  }
  background(0);
  stroke(0,209,62);
  line(0,height/10,width,height/10);
}