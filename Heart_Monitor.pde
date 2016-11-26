void Heart_Monitor()
{
  float xPos=wave1.pos[0].x-border;//x position of the box
  float yPos=wave1.center-wave1.maxAmp-border;//y position of the box
  
  rect(wave1.pos[0].x-border,wave1.center-wave1.maxAmp-border,wave1.size+border*2,wave1.maxAmp*2+border*2);//box for the wave
}