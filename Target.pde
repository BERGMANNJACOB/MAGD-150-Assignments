class Target{
  int X, CenterY, size;
 PVector position;
  PVector velocity;
  PVector acceleration;

Target(){
  CenterY=250;
  size=100;

//Lines12-17 set up the parameters for the defined vectors and functions to keep them from moving too quick.
position= new PVector(300,300);
  velocity= new PVector(2.5,5);
  acceleration= new PVector(random(-.001),random(-.01));
  velocity.limit(3);
  position.normalize();
  acceleration.mult(.95);
  
}

void display(){
  //Lines 23-26 set up the simple target image spawned.
  fill(255);
  ellipse(position.x, position.y, size, size);
  fill(255,0,0);
  ellipse(position.x,position.y,size/3,size/3);
}

void move(){
  //Lines 33-38 set up the bounding box for the moving vectors. Lines 31 and 32 allow the images to move.
  velocity.add(acceleration);
  position.add(velocity);
  if((position.x>width) || (position.x<0)){
    velocity.x=velocity.x*-1;
  }
  if ((position.y>height-250) || (position.y<0)){
    velocity.y=velocity.y*-1;
  }

}
}