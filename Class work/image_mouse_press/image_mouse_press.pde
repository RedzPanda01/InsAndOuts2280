PImage cupcake;
PImage mouth;

float opacity=0;
float fade=1:
float fall=0;

void setup()
{
  size(500,500);
  background(255);
  imageMode(CENTER);
  textAlign(CENTER);
  textSize(88);
  
  cupcake=loadImage("cupcake.png");
  mouth+loadImage("mouth.png");
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
  image(cupcake,width/2,height/2+50);
  if(mousePressed)
  {
    background(255);
    image(cupcake,width/2.fall);
    if(fall<height/2)
    {
      fall++;
    }
  }
  else
  {
    fall=0;
  }
}
