/* 
Conditionals
If statements
If/Else statements

if(boolean test)
{
  statements execute if true
}

else if (boolean test 2)
{
  statements execute if true
}

else if (boolean test 3)
{
  statements execute if true
}

else
{
  statements execute if all tests are false
}
*/

float r = 255, g = 255, b = 255;

void setup()
{
  size (700,700);
}

void draw()
{
  background(r,g,b);
  
  //less than < / greater than >
  
  if(mouseX > width/2)
  {
    fill(255,0,0);
    ellipse(width/2,height/2,100,100);
  }
  else if(mouseY > height/2)
  {
    fill (0);
    rect(width/2,height/2,100,100);
  }
  else
  {
    fill(255);
    rect(width/2,height/2,100,100);
  }
}
  void mousePressed()
  {
    r = random(0,255);
    g = random(0,255);
    b = random(0,255);
    
    println(r);
  }
