PImage summer;
PImage winter;
PImage fall;
PImage spring;
PImage season;
int myColor = color(random(255), random(255), random(255));;
int counter = 0;

void setup()
{
  size(500,500);
  background(255);
  imageMode(CENTER);
  frameRate(60);
  
   summer =loadImage("summer.png");
   winter =loadImage("winter.png");
   fall =loadImage("fall.png");
   spring =loadImage("spring.png");
   season = summer;
}

void draw()
{
  background(myColor);
  image(season ,width/2 ,height/2, width, height);
  
  if (counter > 100) 
  {
    //Switch the colour to a new random colour:
    myColor = color(random(255), random(255), random(255));

    //Reset the counter to zero:
    counter = 0;
  }
  
  //At the end of each frame increase the counter
  counter = counter + 1;
}

void keyPressed()
{
  if(key == '1')
  {
    season = winter;
  }
  else if(key == '2')
  {
    season = fall;
  }
  else if(key =='3')
  {
    season = spring;
  }
  else
  {
    season = summer;
  }
}
  
