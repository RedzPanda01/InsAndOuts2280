PImage summer;
PImage winter;
PImage fall;
PImage spring;
PImage season;
int myColor = color(random(255), random(255), random(255));;
int counter = 0;
color Colsummer = #F7FF00;
color Colwinter = #00FFEF;
color Colfall = #FFAB00;
color Colspring = #00FF2B;
int scene = 0;

void setup() {
  size(500, 500);
  imageMode(CENTER);
  rectMode(CENTER);
  frameRate(60);
  
   summer =loadImage("summer.png");
   winter =loadImage("winter.png");
   fall =loadImage("fall.png");
   spring =loadImage("spring.png");
   season = summer;
}

void draw()
{
  background(255);
  fill(0);
  rect(100, 325, 100, 50);
  fill(0);
  rect(250, 325, 100, 50);
  fill(0);
  rect(400, 325, 100, 50);
  
  textAlign(CENTER);
  fill(255);
  text("ShortStudy1", 100, 325);
  text("ShortStudy2", 250, 325);
  text("ShortStudy3", 400, 325);
  
  if (scene == 1)
  {
    SS1_Primitive();
    print("Hello");
    if (mouseButton == RIGHT) 
  {
      scene = 0;
  }
  }
  if (scene == 2)
  {
    SS2_FourSeasons();
    print("Hello2");
    if (mouseButton == RIGHT) 
  {
      scene = 0;
  }
  }
  
  if (scene == 3)
  {
    SS3_Rollover4Seasons();
    print("Hello3");
    if (mouseButton == RIGHT) 
  {
      scene = 0;
  }
  
}
}

void SS1_Primitive()
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

void SS2_FourSeasons()
{
   background(myColor);
  image(season ,width/2 ,height/2, width, height);
  
  if (counter > 100) 
  {
    //Switch the colour to a new random colour:
    myColor = color(random(255), random(255), random(255));

    //Reset the counter to zero:
    counter = 0;
  }
  
  //At the end of each frame increase the counter
  counter = counter + 1;
}

void SS3_Rollover4Seasons()
{
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
  fill (Colsummer);
  rect (100, 100, 50, 50);
  }
  else if (mouseX <= 400 && mouseX >= 350 && mouseY <= 150 && mouseY >= 100)
  {
  fill (Colwinter);
  rect (350, 100, 50, 50);
  }
  else if (mouseX <= 400 && mouseX >= 350 && mouseY <= 400 && mouseY >= 350)
  {
  fill (Colfall);
  rect (350, 350, 50, 50);
  }
  else if (mouseX <= 150 && mouseX >= 100 && mouseY <= 400 && mouseY >= 350)
  {
  fill (Colspring);
  rect (100, 350, 50, 50);
  }
  
  text("Summer", 105, 125);
  text("Winter", 360, 125);
  text("Fall", 360, 375);
  text("Spring", 110, 375);
}


void keyPressed()
{
  if(key == '1')
  {
    season = winter;
  }
  else if(key == '2')
  {
    season = fall;
  }
  else if(key =='3')
  {
    season = spring;
  }
  else
  {
    season = summer;
  }
}
