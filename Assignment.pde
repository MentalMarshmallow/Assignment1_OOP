/*
Author: Vimal Jain
Object Oriented Programming Assignment1

Version 0.19
*/
String fname1;
PImage img1;
float X=0;
float Y=0;
Wave wave1;
int clearX;//This is the x coordiate to clear the front of each wave
int border;//border of the boxes

void setup()
{
  fullScreen();
  fname1="Moon_Surface.jpg";
  img1=loadImage(fname1);
  wave1 = new Wave(width/10,height-height/10,30,(width/10)*8);
  clearX=(int)wave1.size+1;
  border=10;
}

void draw()
{
  //background(img1);
  
  //image(img1,0,0,width,height);
  noFill();
  stroke(70,0,67);
  rect(wave1.pos.x-border,wave1.center-wave1.maxAmp-border,wave1.size+border*2,wave1.maxAmp*2+border*2);//box for the wave
  wave1.render();
  wave1.update();
  println(wave1.pos.x);
  
  /*
  //Clear infont of the waves
  if(clearX==width-1)
  {
    clearX=0;
  }
  fill(0);
  rect(clearX,0,1,height);
  clearX++;
  */
}