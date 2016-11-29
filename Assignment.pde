/*
Author: Vimal Jain
Object Oriented Programming Assignment1

Version 0.40
*/
//Libraries to use the gamepad
import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;

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

//Variables for the earth
float thetaY;
PImage earth; 
PShape globe;

//Variable names for gamepad
ControlIO control;
Configuration config;
ControlDevice gpad;

float cursorX;
float cursorY;
float conSpeed;

//User info details
float temp;
float oxygen;
String name;
String location;

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
  details.add(new Details(gridWidth*5.5,0,gridWidth*2.2,gridHeight*2.7));//Details for the earth sphere
  details.add(new Details(gridWidth*8,gridHeight*8,gridWidth*2,gridWidth*2) );//Details for the gauge
  details.add(new Details(gridWidth*0.5,gridHeight*7.5,gridWidth*3,gridHeight*2.5) );//Details for the oxygen Monitor
  
  border=10;
  
  font=createFont("Georgia.vlw",25);
  
  textFont(font,25);
  
  //variables for Sphere
  earth = loadImage("Earth.jpg");//loads image
  globe = createShape(SPHERE, height/4);//creates the planet shape
  globe.setTexture(earth);//sets texture to the image
  globe.setStroke(false);//prevents lines from appearing on the sphere
  thetaY=0;
  
  controller();
}

void controller()
{
  //Variables for the gamepad
  control = ControlIO.getInstance(this);
  gpad=control.getMatchedDevice("XboxController");
  if (gpad == null) 
  {
    println("No suitable device configured");
    System.exit(-1); // End the program NOW!
  }
  cursorX=0;
  cursorY=250;
  conSpeed=8;
}

void draw()
{
  if(pageNum==0)
  {
    Menu();
  }
  else if(pageNum==1)
  {
    mainPage();
  }
  else if(pageNum==2)
  {
    Sphere();
  }
  else if(pageNum==3)
  {
    Exit();
  }
}