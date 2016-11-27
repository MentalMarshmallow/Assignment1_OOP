/*
Author: Vimal Jain
Object Oriented Programming Assignment1

Version 0.27
*/
String fname1;
PImage img1;
PFont font;
float X=0;
float Y=0;
Wave wave1;
int border;//border of the boxes
int pageNum=0;//What page is to be displayed
float gridHeight;
float gridWidth;
gauge gauge1;

void setup()
{
  fullScreen();
  gridHeight=height/10;//dividing the screen into 10 parts
  gridWidth=width/10;//dividing the screen into 10 parts
  
  fname1="Moon_Surface.jpg";
  img1=loadImage(fname1);
  
  //Wave for the oxygen levels
  wave1 = new Wave(gridWidth,gridHeight*9,gridHeight/2,(int)(gridWidth)*2);
  gauge1 = new gauge(gridWidth*9,gridHeight*10,gridWidth,0);
  
  border=10;
  
  font=createFont("Georgia.vlw",25);
  
  textFont(font,25);
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