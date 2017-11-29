void setup(){
  size(1080,640);
  background(0);
  
}

void draw(){
  fill(#9C9999);
  beginShape();
  vertex(400,360);
  vertex(500,360);
  vertex(500,540);
  vertex(400,540);
  beginContour();
  vertex(425,410);
  vertex(425,475);
  vertex(475,475);
  vertex(475,410);
  endContour();
  endShape(CLOSE);
  
  triangle(450,260,500,360,400,360);
  
  rect(500,475,25,150);
  
  rect(375,475,25,150);
  
  fill(#EEEEEE);
  ellipse(450,260,25,25);
  
  fill(60,70,255);
  arc(100,150,200,200,0,TWO_PI);
  
  fill(255,60,0);
  arc(840,450,100,100,0,TWO_PI);
  
  fill(25,250,25);
  arc(950,150,50,50,0,TWO_PI);
  
   fill(191,187,64);
  bezier(400,550,450,650,450,600,500,550);
  
}
