class details
{
  PVector pos;
  float Width;
  float Height;
  PShape zone;
  
  details(float x,float y,float Width,float Height)
  {
    pos=new PVector(x,y);
    this.Width=Width;
    this.Height=Height;
    
    create();
  }
  
  void create()
  {
    zone=createShape();
    zone.beginShape();
    zone.setStroke(color(252,0,0));
    zone.setStrokeWeight(15);
    zone.setFill(false);
    zone.vertex(0,0);
    zone.vertex(0,Height);
    zone.vertex(Width,Height);
    zone.vertex(Width,0);
    zone.endShape(CLOSE);
  }
  
  void render()
  {
    
  }
}