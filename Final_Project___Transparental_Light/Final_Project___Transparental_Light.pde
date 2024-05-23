//All pictures come from https://www.cleanpng.com
PImage summer;
PImage winter;
PImage fall;
PImage spring;
PImage season;

import processing.serial.*;
Serial myPort;

static String val;
static String val1;
static String val2;
static String val3;
int sensorVal = 0;
int sensorVal1 = 0;
int sensorVal2 = 0;
int sensorVal3 = 0;



void setup(){
 size(1080, 720);
 imageMode(CENTER);
 rectMode(CENTER);
 frameRate(60);
 
 printArray(Serial.list());
 String portName = Serial.list()[1];
 myPort = new Serial(this, portName, 9600);
 
   summer = loadImage("summer.png");
   winter = loadImage("winter.png");
   fall = loadImage("fall.png");
   spring = loadImage("spring.png");
}

void draw(){

  line(width/2, height, width/2, 0);
  line(width, height/2, 0, height/2);
  
  image(summer, width/4, 175, 540, 370);
  image(winter, 810, 175, 540, 370);
  image(fall, width/4, 540, 540, 360);
  image(spring, 810, 540, 540, 360);
  
  if ( myPort.available() > 0) 
  { 
    sensorVal = myPort.read();
  }
  if ( myPort.available() > 0)
  { 
    sensorVal1 = myPort.read();
  }
  if ( myPort.available() > 0)
  { 
    sensorVal2 = myPort.read();
  }
  if ( myPort.available() > 0) 
  { 
    sensorVal3 = myPort.read();
  }
  
  transRect();
}


void transRect(){
  fill(255, 100, 100, sensorVal); //Set alpha to Photocell value from arduino
  rect(width/4, 175, 540, 370);
  
  fill(255, 100, 100, sensorVal1);
  rect(810, 175, 540, 370);
  
  fill(255, 100, 100, sensorVal2);
  rect(width/4, 540, 540, 360);
  
  fill(255, 100, 100, sensorVal3);
  rect(810, 540, 540, 360);
  
}
