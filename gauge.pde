/*Creates a temperature gauge class that 
displays a gauge with a needle
*/

class Gauge
{
  float centerX;
  float centerY;
  float radius;
  float border;
  float nWidth;
  float theta;
  PVector pos;
  PShape needle;

  Gauge(float X, float Y, float radius, float theta)
  {
    this.centerX=X;
    this.centerY=Y;
    this.radius=radius;
    this.theta=theta;

    border=radius/10;

    pos=new PVector(X, Y);

    create();
  }

  void create()
  {
    needle=createShape();
    needle.beginShape();
    needle.stroke(186, 16, 16);
    needle.fill(186, 16, 16);
    needle.vertex(border/2,0);
    needle.vertex(-border/2,0);
    needle.vertex(0, 0-radius+border);
    needle.endShape(CLOSE);
  }

  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    shape(needle, 0, 0);
    popMatrix();

    //create small circle at the center of the gauge
    fill(0);
    ellipse(centerX, centerY, border, border);
    noFill();
    stroke(0);
    strokeWeight(10);
    ellipse(centerX, centerY, radius*2, radius*2);

    //symbol for hot
    fill(255, 0, 0);
    text("H", centerX+radius-border*2, centerY);

    //symbol for cold
    fill(0, 0, 255);
    text("C", centerX-radius+border, centerY);

    //Lines on the gauge
    strokeWeight(1);
    stroke(255);
    for (float i=0; i<TWO_PI; i+=TWO_PI/20)
    {
      //Make lines all around the center
      line(centerX, centerY, centerX+(radius-border)*cos(i), centerY+(radius-border)*sin(i));
    }
    
    fluctuate();
    println(theta);
    temperature=map(theta,-1,1,20,54);
  }

  void update()
  {
    if (keyPressed && key=='w')
    {
      if (theta<1)
      {
        theta+=0.1f;
      }
        
    } else if (keyPressed && key=='s')
    {
      if (theta>-1)
      {
        theta-=0.1f;
      }
    }
    
    theta+=map(gpad.getSlider("Trigger").getValue(),-1,1,-0.1,0.1);//checks if triggers have been pressed and maps it to the increment
    if(theta>1)
    {
      theta=1;
    }
    if(theta<-1)
    {
      theta=-1;
    }
  }
  
  //causes needle to fluctuate
  void fluctuate()
  {
    float change=random(-0.1f,0.1f);
    
    if(change>0 && theta<0.1f)
    {
      theta+=change;
    }
    else if (change<0 && theta >-0.1f)
    {
      theta+=change;
    }
  }
}