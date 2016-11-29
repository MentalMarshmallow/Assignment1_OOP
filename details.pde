class Details
{
  PVector pos; //Top left corner of the box
  float Width;
  float Height;
  PShape zone;  //Red zone indications object in question
  
  Details(float x,float y,float Width,float Height)
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
    zone.stroke(color(252,0,0));
    zone.strokeWeight(15);
    zone.noFill();
    zone.vertex(0,0);
    zone.vertex(0,Height);
    zone.vertex(Width,Height);
    zone.vertex(Width,0);
    zone.endShape(CLOSE);
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x,pos.y);
    shape(zone);
    popMatrix();
  }
}