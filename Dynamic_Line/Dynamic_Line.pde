/*
Pmouse = previous mouse position
pmouseX()
pmouseY()
*/

void setup()
{
  size(800,800);
  background(255,120,40);
}

void draw()
{
  stroke(100,100,255);
  strokeWeight(8);
  //line(x1,y1,x2,y2);
  line(mouseX,mouseY,pmouseX,pmouseY); //basically a paintbrush
  
}
