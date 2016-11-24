/*
Author: Vimal Jain
Object Oriented Programming Assignment1

Version 0.13
*/
String fname1;
PImage img1;
float X=0;
float Y=0;

void setup()
{
  size(800,600);
  fname1="picture1.jpg";
  img1=loadImage(fname1);
}

void draw()
{
  background(0);
  image(img1,0,0);
}