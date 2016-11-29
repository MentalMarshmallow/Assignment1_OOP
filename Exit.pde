//Page Number 3
void Exit()
{
  background(0);
  
  text("Do You Wish To Exit? Press 'y' or the A button to exit. Press 'n' or the B button to re-enter the program",gridWidth,gridHeight*5);
  
  buttonPressed();
  if((keyPressed && key=='y')||aPressed==true)
  {
    exit();
  }
  if((keyPressed && key=='n')||bPressed==true)
  {
    pageNum=1;
  }
}