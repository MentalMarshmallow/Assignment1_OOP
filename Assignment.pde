/*
Author: Vimal Jain
Object Oriented Programming Assignment1

Version 0.34
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
boolean aPressed=false;
boolean startPressed=false;
boolean backPressed=false;
float speed;

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
  
  border=10;
  
  font=createFont("Georgia.vlw",25);
  
  textFont(font,25);
  
  //variables for Sphere
  background(0);
  earth = loadImage("http://www.solarsystemscope.com/nexus/content/planet_textures/texture_earth_clouds.jpg");
  globe = createShape(SPHERE, height/4);
  globe.setTexture(earth);
  globe.setStroke(false);
  thetaY=0;
  
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
  speed=8;
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
}