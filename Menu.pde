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
  line(0,gridHeight,width,gridHeight);
  line(0,gridHeight*9,width,gridHeight*9);
  
  textFont(155);
  text("Welcome to the Spacesuit ui 2.0",gridWidth*4,gridHeight*2);
  
}