/*Page Number 0
Loads the menu onto the screen with controls and a beginning interface
*/

void Menu()
{
  buttonPressed();
  //Exit Menu when spacebar is pressed
  if(keyPressed && key==' '||startPressed==true)
  {
    pageNum=1;//increment pagenumber to exit Page
    delay(500);
  }
  
  /*Text and boxes for the user to see
  */
  
  background(0);
  stroke(0,209,62);
  line(0,gridHeight,width,gridHeight);
  line(0,gridHeight*9,width,gridHeight*9);
  
  text("* Press the spacebar or the start button to enter *",gridWidth*3.5,gridHeight*1.5);
  text("Welcome to the Spacesuit ui 2.0",gridWidth*4,gridHeight*2);
  
  text("This user interface allows you the visibility and easy access of your vitals and other important data. It will give you",gridWidth,gridHeight*3);
  text("a great deal of information at your fingertips. The user manual details a great deal of the functionality of the suit, ",gridWidth,gridHeight*3.5);
  text("however we have laid out the controls of necessecary functionality below.",gridWidth,gridHeight*4);
  
  text("Controls:",gridWidth,gridHeight*5);
  noFill();
  rect(gridWidth,gridHeight*5.5,gridWidth*8,gridHeight*3);
  line(gridWidth*2,gridHeight*5.5,gridWidth*2,gridHeight*8.5);
  line(gridWidth,gridHeight*6.5,gridWidth*9,gridHeight*6.5);
  line(gridWidth,gridHeight*7.5,gridWidth*9,gridHeight*7.5);
  
  //The navigation control
  fill(255);
  noStroke();
  ellipse(gridWidth*1.5,gridHeight*6,10,10);
  text("Use the left stick on the controller or the mouse to navigate the screen.",gridWidth*2.5,gridHeight*6);
  
  //The accept button
  fill(0,209,62);
  noStroke();
  text("A",gridWidth*1.45,gridHeight*7);
  fill(255);
  text("Use the A button on the controller or the 'e' character on the keyboard.",gridWidth*2.5,gridHeight*7);
  
  //The triggers
  text("LT or RT",gridWidth*1.2,gridHeight*8);
  text("Use the triggers or the 'w' and 's' characters to control the gauge or the heart monitor.",gridWidth*2.5,gridHeight*8);
  
}