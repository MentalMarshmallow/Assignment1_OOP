/*
Author: Vimal Jain
Object Oriented Programming Assignment1

Version 0.15
*/
String fname1;
PImage img1;
float X=0;
float Y=0;
Wave wave1;

void setup()
{
  size(600,600);
  fname1="picture1.jpg";
  img1=loadImage(fname1);
  wave1 = new Wave(height/3,120,10);
  background(0);
}

void draw()
{
  image(img1,0,0,width/2,height/2);
  wave1.render();
}