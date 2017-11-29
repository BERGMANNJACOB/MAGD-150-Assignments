void setup(){
  
  size(640,480);
  frameRate(30);
  println("Sketch now running");
    float(3);
  int a=71/3 ;
  int b=a*5 ;
  int c=2*b-50 ;
   println(b-a+c);
   
   float w = pow(2,6);
   println(w);
   
   int x=max(5,-7,1);
   int y=min(5,-7,1);
   int z=(x+2*y);
   float(z);
      println(z);
   
}

void draw(){
  
  background(200,200,200);
  
  fill(0,50,200); 
   rect(mouseX,mouseY,150,250);
   
   fill(100,25,25);
   ellipse(pmouseX+200,pmouseY+200,150,75);
  
}
