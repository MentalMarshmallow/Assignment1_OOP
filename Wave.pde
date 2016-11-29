class Wave
{
  //General Wave variables
  PVector[] pos;//positions of the wave
  float theta;//the angle of which the point changes
  float inc;//wave frequency
  float center;//the center of the wave
  float amplitude;//the height of the wave
  int count;//the position of the wave 
  int size;//the width of the wave
  float maxAmp;//the maximum height the wave can reach
  
  //For the heartbeat
  float gap;//gap between heartbeats
  float beatSize;//size of the heartbeat
  
  //Shapes used
  PShape circle;//creating a circle shape
  PShape beat;//creating a heartbeat shape
  
  Wave(float start,float center,float amplitude,int size)
  {
    this.center=center;
    this.amplitude=amplitude;
    this.size=size;
    inc =TWO_PI/120;
    gap=size/2;
    beatSize=size/10;
    
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
    
    create();
  }
  
  void create()
  {
    beat=createShape();
    beat.beginShape();
    beat.noFill();
    beat.vertex(0,0);//left corner of first spike
    beat.vertex(beatSize/4,-amplitude);//top spike
    beat.vertex(3 * (beatSize/4),amplitude);//bottom spike
    beat.vertex(7 * (beatSize/8),-10);
    beat.vertex(15 * (beatSize/16),+10);
    beat.vertex(beatSize,0);
    beat.endShape();
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
  
  void render(int num)
  {
    //num is 12
    if(count>size-num)
    {
      theta=0;
      inc=TWO_PI/random(100,130);
      count=0;
    }
    
    pushMatrix();
    translate(pos[count].x,pos[count].y);
    shape(beat,0,0);
    popMatrix();
  
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