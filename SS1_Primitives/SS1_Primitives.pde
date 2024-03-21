//Primitives by Steven Zhao
//Theme: Seasons 
void setup() 
{
  size(1080,720);
  background(#0481E1);
  rectMode(CENTER);
}

void draw() 
{
  noStroke();
  fill(#FFFF00);
  ellipse(100, 100, 100, 100);
  
  stroke(0);
  strokeWeight(12);
  fill(#1EA802);
  rect(width/2,height,1080,100);
  
  fill(#FF0077);
  strokeWeight(24);
  triangle(250, 600, width/2, height/2 - 200, 800, 600);
}
