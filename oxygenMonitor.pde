void oxygenMonitor()
{
  float xPos=wave1.pos[0].x-border;//x position of the box
  float yPos=wave1.center-wave1.maxAmp-border;//y position of the box
  float boxWidth=wave1.size+border*2;
  float boxHeight=wave1.maxAmp*2+border*2;

  noFill();
  rect(xPos, yPos, boxWidth, boxHeight);//box for the wave

  stroke(24, 127, 34);
  for (int i=0; i<boxWidth; i+=(boxWidth)/10)//vertical lines for the box
  {
    line(xPos+i, yPos, xPos+i, yPos+boxHeight);
  }

  for (int i=0; i<boxHeight-border*2; i+=(boxHeight)/4)//horizontal lines for the box
  {
    line(xPos, yPos+i, xPos+boxWidth, yPos+i);
  }

  rect(xPos+boxWidth/4, yPos-boxHeight/2, boxWidth/2, boxHeight/2);//zone for name of the box

  fill(0, 33, 165);
  text("Oxygen Level", xPos+boxWidth/4, yPos-boxHeight/8);
}