/*
Author: Vimal Jain
Object Oriented Programming Assignment1

Version 0.22
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
  wave1 = new Wave(width/10,height-height/10,30,(int)(width/10)*2);
  clearX=(int)wave1.size+1;
  border=10;
}

void draw()
{
  background(img1);
  
  //image(img1,0,0,width,height);
  
  Heart_Monitor();
  wave1.render();
  wave1.update();
  
}