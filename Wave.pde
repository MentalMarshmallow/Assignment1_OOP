class Wave
{
  PVector pos;
  float theta;
  float inc;//wave frequency
  float center;
  float amplitude;
  float count;
  float size;
  float ampMax;
  
  Wave(float center,float amplitude,float size)
  {
    this.center=center;
    this.amplitude=amplitude;
    this.size=size;
    inc =TWO_PI/120;
    pos=new PVector(0,center);
    count=0;
    theta=0;
    ampMax=amplitude;
  }
  
  void render()
  {
    noStroke();
    pos.y=amplitude*sin(theta)+center;
    ellipse(pos.x+count,pos.y,size,size);
    count++;
    theta=theta +inc;
    if(count==width)
    {
      fill(random(0,255),random(0,255),random(0,255));
      theta=0;
      count=0;
    }
  }
}