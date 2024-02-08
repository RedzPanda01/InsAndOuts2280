//Variables!

int number = 5; //the word number will be equal to 5
//5 is not the same as 5.0

float move = 0.1;
float increment = 0.5;
float grow = 0.1;
//Use a float to do decimals



int scale = 100;

boolean stateFlag = true;

void setup()
{
  size(800,800);
}

void draw()
{
  background (0);
  
  ellipse(mouseX,mouseY,scale*number,scale/number);
  
  rect(mouseX-20,mouseY-20,grow,grow);
  
  rect (move,400,100,100);
  
  grow = grow + increment; //adds increment to grow continuously
 
  move = move + increment; //adds increment to move continuously
  
  println("MOVE=" +move+ " GROW=" + grow + " X POS=" + mouseX);
}
