/*Function to check if the buttons have been pressed 
*/
boolean aPressed=false;
boolean startPressed=false;
boolean backPressed=false;
boolean bPressed=false;
void buttonPressed()
{
  aPressed=gpad.getButton("A").pressed();
  bPressed=gpad.getButton("B").pressed();
  startPressed=gpad.getButton("Start").pressed();
  backPressed=gpad.getButton("Back").pressed();
}