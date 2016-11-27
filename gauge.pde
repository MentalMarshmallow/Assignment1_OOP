class gauge
{
  float centerX;
  float centerY;
  float radius;
  float border;
  float nWidth;
  float theta;
  PVector pos;
  PShape needle;
  
  gauge(float X, float Y, float radius,float theta)
  {
    this.centerX=X;
    this.centerY=Y;
    this.radius=radius;
    this.theta=theta;
    
    border=radius/10;
    
    pos=new PVector(X,Y);
    
    create();
    
  }
  
  void create()
  {
    needle=createShape();
    needle.beginShape();
    needle.stroke(186, 16, 16);
    needle.fill(186, 16, 16);
    needle.vertex(0,0);
    needle.vertex(0,0-radius+border);
    needle.endShape(CLOSE);
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(theta);
    shape(needle,0,0);
    popMatrix();
    
    //create small circle at the center of the gauge
    fill(0);
    ellipse(centerX,centerY,border,border);
    noFill();
    stroke(0);
    strokeWeight(10);
    ellipse(centerX,centerY,radius*2,radius*2);
    
    //symbol for hot
    fill(255,0,0);
    text("H",centerX+radius-border*2,centerY);
    
    //symbol for cold
    fill(0,0,255);
    text("C",centerX-radius+border,centerY);
  }
  
  void update()
  {
    if(keyPressed && key=='w')
    {
      if(theta<1.4)
      theta+=0.1f;
    }
    else if(keyPressed && key=='s')
    {
      if(theta>-1.4)
      theta-=0.1f;
    }
  }
  
}