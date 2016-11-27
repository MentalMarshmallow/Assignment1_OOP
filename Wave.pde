class Wave
{
  PVector[] pos;//positions of the wave
  float theta;//the angle of which the point changes
  float inc;//wave frequency
  float center;//the center of the wave
  float amplitude;//the height of the wave
  int count;//the position of the wave 
  int size;//the width of the wave
  float maxAmp;//the maximum height the wave can reach
  
  PShape circle;//creating a circle shape
  
  Wave(float start,float center,float amplitude,int size)
  {
    this.center=center;
    this.amplitude=amplitude;
    this.size=size;
    inc =TWO_PI/120;
    
    pos=new PVector[size]; 
    for(int i=0;i<size;i++)
    {
      pos[i]=new PVector(start+i,center);
    }

    count=0;
    theta=0;
    maxAmp=amplitude;
    
    circle=createShape(ELLIPSE,0,0,5,1);
    circle.setStroke(false);
    circle.setFill(color(0,93,255));
  }
  
  void render()
  {
    if(count==size)//checks if the wave reaches the end and resets the values
    {
      theta=0;
      inc=TWO_PI/random(100,130);
      count=0;
    }
    
    pos[count].y=(amplitude*sin(theta))+center;//gets the y coordinate for the point we are on

    count++;//increments the position of the wave
    theta=theta +inc;
    
    for(int i=1;i<size;i++)
    {
      if(i>count && i<count+10)
      ;//do nothing
      else
      shape(circle,pos[i].x,pos[i-1].y);
    }
    
  }
  
  /* Check keypresses to decrease/increase the amplitude of the wave
  */
  void update()
  {
    if(keyPressed && keyCode==UP)
    {
      if(amplitude<maxAmp)
      amplitude+=0.1f;
      println(amplitude);
    }
    else if(keyPressed && keyCode==DOWN)
    {
      if(amplitude>0)
      amplitude-=0.1f;
      println(amplitude);
    }
  }
}