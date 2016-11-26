/* Check keypresses to decrease/increase the amplitude of the wave
*/
void keyPressed()
{
  if(keyCode==UP)
  {
    if(wave1.amplitude<wave1.ampMax)
    wave1.amplitude++;
  }
  else if(keyCode==DOWN)
  {
    if(wave1.amplitude>0)
    wave1.amplitude--;
  }
}