color summer = #F7FF00;
color winter = #00FFEF;
color fall = #FFAB00;
color spring = #00FF2B;

void setup() {
  size(500, 500);
}

void draw() {
  stroke(255);
  
  background (0);
  
  print(mouseX, mouseY);
  for (int lineX = 50; lineX <= 450; lineX += 50) 
  {
    line(lineX, 0, lineX, height);
  }
  
  for (int lineY = 50; lineY <= 450; lineY += 50) 
  {
    line(0, lineY, width, lineY);
  }
 
  if (mouseX <= 150 && mouseX >= 100 && mouseY <= 150 && mouseY >= 100) 
  {
  fill (summer);
  rect (100, 100, 50, 50);
  }
  else if (mouseX <= 400 && mouseX >= 350 && mouseY <= 150 && mouseY >= 100)
  {
  fill (winter);
  rect (350, 100, 50, 50);
  }
  else if (mouseX <= 400 && mouseX >= 350 && mouseY <= 400 && mouseY >= 350)
  {
  fill (fall);
  rect (350, 350, 50, 50);
  }
  else if (mouseX <= 150 && mouseX >= 100 && mouseY <= 400 && mouseY >= 350)
  {
  fill (spring);
  rect (100, 350, 50, 50);
  }
  
  text("Summer", 105, 125);
  text("Winter", 360, 125);
  text("Fall", 360, 375);
  text("Spring", 110, 375);
}
