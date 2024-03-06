int currentTime=0;
int timer1=4000;
int timer=8000; //8 sec timer = 8000 milliseconds

void setup()
{
  size(600,600);
  background(0);
}

void draw()
{
  currentTime=millis(); //updates current time variable
  if(currentTime>=timer2);
  {
    background(255,0,0);
    println("TIMER 2 TRIG'ed");
  }
  else if(currentTime>=timer1)
  {
    background(255);
    println("TIMER 1 TRIG'ed");
  }
}
