PImage cupcake; //creates a PImage object called cupcake

int scale = 4;
void setup()
{
  size(500,500);
  background(255);
  imageMode(CENTER); //Draws image from center point
  
  cupcake = loadImage("cupcake.png");
}

void draw()
{
  background(255);
  
  //display image with image() method
  image(cupcake, width/2, height/2);
  //image(imageobject,x,y,.width,.height);
  image(cupcake,width/3,height/2,cupcake.width/scale,cupcake.height/scale);
}
