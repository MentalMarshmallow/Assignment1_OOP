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
  
  PShape circle;
  
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
    
    circle=createShape(ELLIPSE,pos.x+count,pos.y,size,size);
    circle.setStroke(false);
  }
  
  void render()
  {
    int clearX=0;
    
    noStroke();
    pos.y=amplitude*sin(theta)+center;

    count++;
    theta=theta +inc;
    if(count==width)
    {
      circle.setFill(color(random(0,255),random(0,255),random(0,255) ));
      theta=0;
      count=0;
      clearX=0;
    }
      
    pushMatrix();
    translate(pos.x+count,pos.y);
    shape(circle);
    popMatrix();
  }
}