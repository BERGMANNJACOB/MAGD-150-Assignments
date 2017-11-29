int pressed=0;
int pressedState=0;
int value=0;
void setup(){
  size(640,480);
      fill(0);
      rect(50,50,540,250);
      
}

void draw(){
  drawPower();
  drawChannel();
  
}

void drawPower(){
  fill(255,0,0);
  ellipse(125,385,125,125);
  fill(255);
  textSize(36);
  text("Power",70,400);
  if(mousePressed){
    if(mouseX>65 && mouseX<65+125 && mouseY>300 && mouseY<300+175){
      fill(value);
      rect(50,50,540,250);
    }
  }
}

void drawChannel(){
 int xPos=300;
 int xDir=1;
 
  fill(50);
  rect(300,325,250,100);
  textSize(36);
  fill(255);
  text("Channel",350,385);
  if(mousePressed){
    if(mouseX>300 && mouseX<300+250 && mouseY>325 && mouseY <325+100){
      if (value == 0);
      fill(255);
      rect(50,50,540,250);
      xPos=xPos+xDir;
      fill(0,0,255);
      rect(xPos,125,50,50);
      fill(255,0,0);
      rect(150,150,65,65);
      fill(0,255,0);
      rect(425,200,100,75);
      fill(100,50,0);
      rect(225,250,75,35);
      fill(100,0,75);
      rect(400,100,50,75);
      if (xPos>width-100 || xPos<100)
      {
        xDir=-xDir;
      }
    } else {
      fill(200,150,0);
      rect(50,50,540,250);
      line(350,250,325,300);
      line(350,250,375,300);
      line(350,200,350,250);
      line(300,185,350,215);
      line(400,185,350,215);
      fill(240);
      ellipse(350,180,45,45);
           
    }
    
    }
  }
  
void mouseClicked(){
  if (value == 0){
    value = 100;
  } else {
      value=0;
    }
    }
