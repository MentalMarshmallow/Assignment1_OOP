/*
Author: Vimal Jain
Object Oriented Programming Assignment1

Version 0.1
*/
String fname1;
PImage img1;

void setup()
{
  size(500,500);
  fname1="picture1.jpg";
  open(fname1);
}

void draw()
{
  image(img1,0,0,width,height);
}