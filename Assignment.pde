/*
Author: Vimal Jain
Object Oriented Programming Assignment1

Version 0.16
*/
String fname1;
PImage img1;
float X=0;
float Y=0;
Wave wave1;
int clearX;//This is the x coordiate to clear the front of each wave

void setup()
{
  size(600,600);
  fname1="picture1.jpg";
  img1=loadImage(fname1);
  wave1 = new Wave(height/3,120,10);
  background(0);
  clearX=(int)wave1.size+1;
}

void draw()
{
  
  image(img1,0,0,width/2,height/2);
  wave1.render();
  
  /*Clear infont of the wave
  */
  if(clearX==width-1)
  {
    clearX=0;
  }
  fill(0);
  rect(clearX,0,1,height);
  clearX++;
}