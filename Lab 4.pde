int xPos=250;
int yPos=250;
int xDir=1;
int yDir=1;
int pressed=0;
int pressedState=0;
int value=0;
int i=300;

void setup(){
  size(500,500);
}

void draw(){
    
    if (pressedState == 1){
    background(0,0,255);
  } else {
    background(0);
  }
  
  fill(250,200,25);
  triangle(250,0,500,500,0,500);
  
  fill(255,0,0);
  ellipse(xPos,400,50,50);
  
  xPos=xPos+xDir;
  if (xPos>width-100 || xPos<100)
  {
    xDir=-xDir;
  }
  
  fill(255,0,0);
  ellipse(xPos,yPos,50,50);
  
  yPos=yPos+yDir;
  if (yPos>height-100 || yPos<200)
  {
    yDir=-yDir;
  }
  if (xPos>width-150 || xPos<150)
  {
    xDir=-xDir;
  }
  while(i<500){
    line(300,i,80,i);
    i=i+50;}
}

void mousePressed(){
  pressed = pressed +1;
  pressedState = (pressed %2);
}

void keyPressed(){
 if (value == 0){
   background(0,100,150);
 }else{
   background(0,0,0);
 }
}
