/*Page Number 0
Loads the menu onto the screen
*/

void Menu()
{
  //Exit Menu when spacebar is pressed
  if(keyPressed && key==' ')
  {
    pageNum=1;//increment pagenumber to exit Page
  }
  background(0);
  stroke(0,209,62);
  line(0,gridHeight,width,gridHeight);
  line(0,gridHeight*9,width,gridHeight*9);
  
  text("* Press the spacebar to enter *",gridWidth*4,gridHeight*1.5);
  text("Welcome to the Spacesuit ui 2.0",gridWidth*4,gridHeight*2);
  
  text("This user interface allows you the visibility and easy access of your vitals and other important data. It will give you",gridWidth,gridHeight*3);
  text("a great deal of information at your fingertips. The user manual details a great deal of the functionality of the suit, ",gridWidth,gridHeight*3.5);
  text("however we have laid out the controls of necessecary functionality below.",gridWidth,gridHeight*4);
  
  text("Controls:",gridWidth,gridHeight*5);
  noFill();
  rect(gridWidth,gridHeight*5.5,gridWidth*8,gridHeight*3);
  line(gridWidth*2,gridHeight*5.5,gridWidth*2,gridHeight*8.5);
  
}