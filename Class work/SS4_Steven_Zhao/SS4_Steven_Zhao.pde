PImage img;
int aPink = #FF33FF;
int savedTime = 0;
int timer = 2000;
int rectX = 250;
int xMove = 10;
int m = 0;
int aBlue = #00FFFF;

void setup() {
  size(500,500);
  textSize(64);
  background(0);
  img = loadImage("hologram.png");
  imageMode(CENTER);
  rectMode(CENTER);
}

void draw() {
  m = millis();
  background(0);
  fill(aPink);
  rect(rectX, height/2, 300, 300);
  image(img, width/2, height/2, width/2, height/2);
  fill(aBlue);
  text("Click Me", 125,height/2  );
  
  
  if(m-savedTime>timer)
  {
    if(rectX>width)
    {
      rectX=0;
    }
    else
    {
      rectX+=xMove;
    }
    savedTime=m;
  }
}
 
 void mousePressed()
  {
    if(aPink == #FF33FF)
    {
      aPink = #00FFFF;
    }
    else
    {
      aPink = #FF33FF;
    }
    if(aBlue == #00FFFF)
   {
     aBlue = #FF33FF;
   }
   else
   {
     aBlue = #00FFFF;
   }
  }

  
