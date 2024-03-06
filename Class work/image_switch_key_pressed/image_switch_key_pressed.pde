PImage cupcake;
PImage donut;
PImage dessert;

void setup()
{
  size(500,500);
  background(255);
  imageMode(CENTER);
  
   cupcake=loadImage("cupcake.png");
   donut=loadImage("donut.png");
   dessert=cupcake;
}

void draw()
{
  background(255);
  image(dessert,width/2,height/2);
}

void keyPressed()
{
  if(key=='1')
  {
    dessert=cupcake;
  }
  else if(key=='2')
  {
    dessert=donut;
  }
}
