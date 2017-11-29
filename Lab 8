//Lines 2-11 set up the names for the item loaded, fonts loaded and the boolean for recording.
PImage img;
PFont OP;
PFont ERA;
String[] lines;
String fontFile= "ErasITC-Medium-48.vlw";
String sourceFile= "Extra.txt";
String Savefile;
int lineSpace, count, x;
import processing.pdf.*;
boolean record;

//The void setup sets up the names of operators and what the variables do 
void setup(){
  size(2000,1600);
  img= loadImage("BERGMANN Ocean Scene.jpg");
  OP= loadFont("Monospaced.italic-48.vlw");
  ERA= loadFont("ErasITC-Medium-48.vlw");
  lines= loadStrings("Extra.txt");
  lineSpace=5;
  count=lines.length;
  x=width;
  Savefile="test";
  noLoop();
 
}

void draw(){
  if (record){
    beginRecord(PDF, Savefile + ".pdf");
  }

//The following section of lines sets up the visuals for the sketch
  image(img,0,0);
  textAlign(CENTER);
  textSize(72);
  text("Far Out",1000,100);
  textFont(OP,48);
  text("The Story of a Boat and Open Waters",1000,200);
  for (int i=0; i<count; i++){
    textFont(ERA,48);
    textAlign(LEFT);
    text(lines[i], x, (1200+lineSpace)*i);
    x=x-4;
    if (x<0){
      x=width;
    }  
      if (record){
    endRecord();
    record= false;
  }
}
}

//The following 3 lines state that if the mouse is pressed, the boolean becomes true and begins the recording.
void mousePressed(){
  if (mouseButton == RIGHT){
    record= true;
  }
}
