/*
Author: Vimal Jain
Object Oriented Programming Assignment1

Version 0.31
*/
//File variables
String fname1;  //Name of the image 
PImage backGr;  //Image to be displayed as background
PFont font;  //Font variable

//Screen Variables
int border;  //border of the boxes
int pageNum=0;  //What page is to be displayed
float gridHeight;  //Splitting the grid horizontally
float gridWidth;  //Splitting the grid vertically

Wave wave1;
Gauge gauge1;

ArrayList<Details> details;  //Arraylist for details
int display=-1;  //Index to display the details box and text

float thetaY,thetaX;//Used to spin the earth

void setup()
{
  fullScreen(P3D);
  gridHeight=height/10;  //dividing the screen into 10 parts
  gridWidth=width/10;  //dividing the screen into 10 parts
  
  fname1="Moon_Surface.jpg";
  backGr=loadImage(fname1);
 
  wave1 = new Wave(gridWidth,gridHeight*9,gridHeight/2,(int)(gridWidth)*2);  //Wave for the oxygen levels
  gauge1 = new Gauge(gridWidth*9,gridHeight*10,gridWidth,0);  //Create a new Gauge 
  details = new ArrayList<Details>();
  details.add(new Details(gridWidth*5.5,0,gridWidth*2.2,gridHeight*2.7));
  //Details(gridWidth*5.5,0,gridWidth*2.2,gridHeight*2.7);  //Create details object for the earth
  
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