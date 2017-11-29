Target[] Shoot= new Target[3];
int x,y,size;

void setup(){
  size(800,600);
x= 200;
y= 200;
size= 100;
//Lines 10 and 11 set up the spawning parameters for the array, with the number drawn pulled from line 1.
  for(int i=0; i<Shoot.length ; i++){
    Shoot[i]= new Target();
  }
    
}

void draw(){
    background(153,76,0);
    fill(200);
    rect(0,0,800,400);
      for(int i=0; i<Shoot.length ; i++){
    Shoot[i].move();
    Shoot[i].display();
    rotate(PI);
    fill(255);
    ellipse(x,x,size,size);
    fill(255,0,0);
    ellipse(x,y,size/3,size/3);
    
    fill(255);
    translate(30,30);
    ellipse(x*3,y,size,size);
    translate(-30,-30);
    fill(255,0,0);
    scale(.5);
    ellipse(x*6,y*2,size/3,size/3);
    scale(2);
    fill(100);
    triangle(500,500,550,495,550,505);
    fill(125);
    rect(550,495,30,10);
    fill(0,120,200);
    triangle(600,500,660,485,660,515);
    fill(125);
    rect(580,497,30,6);
    textSize(42);
    fill(250);
    text("Dart Gallery",275,550);
  }
}
