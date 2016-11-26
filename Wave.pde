class Wave
{
  PVector[] pos;
  float theta;
  float inc;//wave frequency
  float center;
  float amplitude;
  int count;
  int size;
  float maxAmp;
  
  PShape circle;
  
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
    
    circle=createShape(ELLIPSE,0,0,10,10);
    circle.setStroke(false);
    circle.setFill(color(random(0,255),random(0,255),random(0,255) ));
  }
  
  void render()
  {
    if(count==size)
    {
      circle.setFill(color(random(0,255),random(0,255),random(0,255) ));
      theta=0;
      inc=TWO_PI/random(100,130);
      count=0;
      clearX=0;
    }
    
    pos[count].y=(amplitude*sin(theta))+center;

    count++;
    theta=theta +inc;
    
    
    for(int i=1;i<size;i++)
    {
      shape(circle,pos[i].x,pos[i-1].y);
    }
    
    if(count==size-2)
    {
      pos[count+1].x=pos[count].x;
    }
  }
  
  /* Check keypresses to decrease/increase the amplitude of the wave
  */
  void update()
  {
     if(keyCode==UP)
    {
      if(amplitude<maxAmp)
      amplitude+=0.1f;
    }
    else if(keyCode==DOWN)
    {
      if(amplitude>0)
      amplitude-=0.1f;
    }
  }
}