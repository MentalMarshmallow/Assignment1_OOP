/*
Author: Vimal Jain
Object Oriented Programming Assignment1

Version 0.18
*/
String fname1;
PImage img1;
float X=0;
float Y=0;
Wave wave1;
int clearX;//This is the x coordiate to clear the front of each wave

void setup()
{
  fullScreen();
  fname1="Moon_Surface.jpg";
  img1=loadImage(fname1);
  wave1 = new Wave(300,120,100);
  clearX=(int)wave1.size+1;
}

void draw()
{
  //background(img1);
  
  //image(img1,0,0,width,height);
  noFill();
  stroke(70,0,67);
  rect(0,wave1.center-wave1.maxAmp-10,wave1.size+10,wave1.maxAmp*2+20);//box for the wave
  wave1.render();
  wave1.update();
  
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