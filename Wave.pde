class Wave
{
  PVector pos;
  float theta;
  float inc;//wave frequency
  float center;
  float amplitude;
  float count;
  float size;
  float maxAmp;
  
  PShape circle;
  
  Wave(float center,float amplitude,float size)
  {
    this.center=center;
    this.amplitude=amplitude;
    this.size=size;
    inc =TWO_PI/120;
    pos=new PVector(0,center);
    pos.normalize();//Normalize the vector to the length of 1

    count=0;
    theta=0;
    maxAmp=amplitude;
    
    circle=createShape(ELLIPSE,pos.x+count,pos.y,10,10);
    circle.setStroke(false);
    circle.setFill(color(random(0,255),random(0,255),random(0,255) ));
  }
  
  void render()
  {
    if(count==size)
    {
      circle.setFill(color(random(0,255),random(0,255),random(0,255) ));
      theta=0;
      count=0;
      clearX=0;
    }
    
    noStroke();
    pos.y=(amplitude*sin(theta))+center;

    count++;
    theta=theta +inc;
      
    pushMatrix();
    translate(pos.x+count,pos.y);
    shape(circle);
    popMatrix();
  }
  
  /* Check keypresses to decrease/increase the amplitude of the wave
  */
  void update()
  {
     if(keyCode==UP)
    {
      if(amplitude<maxAmp)
      amplitude++;
    }
    else if(keyCode==DOWN)
    {
      if(amplitude>0)
      amplitude--;
    }
  }
}