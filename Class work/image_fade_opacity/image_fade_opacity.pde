PImage cupcake;

float opacity =0;
float fade =1;

void setup()
{
  size(500,500);
  background(255);
  
  imageMode(CENTER);
  textAlign(CENTER);
  textSize(88);
  
  cupcake = loadImage("cupcake.png");
  
}

void draw()
{
  background(255);
  fill(opacity);
  text("YUM",width/2,height/2-50);
  opacity = opacity+fade;
  if (opacity>255||opacity<0)
  {
    fade=-fade;
  }
}
