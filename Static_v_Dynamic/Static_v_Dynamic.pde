/* Static = Does not move
Dynamic = Movement
this code will explore:
setup()
draw()
basic input: mouseX, mouseY
*/

void setup() //only runs once at start
{
  size(800,800);
  background(255); //white background
}

void draw() //runs continuously
{
  background(255); //clears canvas
  line(0,0,mouseX,mouseY); //draws a line from origin to position of mouse
  ellipse(mouseX,mouseY,50,50); //draws a circle at position of mouse
}
