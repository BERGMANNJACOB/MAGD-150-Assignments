void setup(){
  size (1080,640);
  background(128,128,128);
}

void draw(){
  fill(0);
  rect(240,160,360,480);
  fill(230);
  rect(270,280,140,100,15);
  rect(440,280,140,100,15);
  
  line(240,160,100,200);
  line(100,200,100,640);
  
  ellipse(780,75,100,105);
  
  fill(200);
  rect(720,540,250,125);
  rect(770,290,160,250,15);
  
 fill(255);
  ellipseMode(RADIUS);
  ellipse(850,360,50,50);
  
 fill(0);
 line(850,360,875,360);
 line(850,360,820,330);
 
 point(875,361);
 point(820,331);
  
  
}