int timer=2000;
int currentTime=0;
int savedTime=0;

int ellipseX=0;
int xMove=10;

void setup()
{
  size(500,500);
}

void draw()
{
  currentTime=millis();
  background(255);
  ellipse(ellipseX,height/2,100,100);
  
 //If 2 seconds pass since last saved time, execute code
  if(currentTime-savedTime>timer)
  {
    if(ellipseX>width)
    {
      ellipseX=0;
    }
    else
    {
      ellipseX+=xMove;
    }
    fill(random(255),random(255),random(255));
    savedTime=currentTime; //currentTime now equals savedTime
  }
  //////////////////////////////////////////////////////////
}
