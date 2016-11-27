/*
Author: Vimal Jain
Object Oriented Programming Assignment1

Version 0.23
*/
String fname1;
PImage img1;
float X=0;
float Y=0;
Wave wave1;
int clearX;//This is the x coordiate to clear the front of each wave
int border;//border of the boxes
int pageNum=0;//What page is to be displayed

void setup()
{
  fullScreen();
  fname1="Moon_Surface.jpg";
  img1=loadImage(fname1);
  wave1 = new Wave(width/10,height-height/10,30,(int)(width/10)*2);
  clearX=(int)wave1.size+1;
  border=10;
  textSize(25);
}

void draw()
{
  if(pageNum==0)
  {
    Menu();
  }
  else
  {
    mainPage();
  }
}