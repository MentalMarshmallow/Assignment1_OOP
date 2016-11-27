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
    
    pos=new PVector(X,Y-radius+border);
    
    create();
    
  }
  
  void create()
  {
    needle=createShape();
    needle.beginShape();
    needle.stroke(186, 16, 16);
    needle.fill(186, 16, 16);
    needle.vertex(0,0);
    needle.vertex(0,0+radius-border);
    needle.endShape(CLOSE);
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(theta);
    shape(needle,0,0);
    popMatrix();
    noFill();
    ellipse(centerX,centerY,radius*2,radius*2);
  }
  
}