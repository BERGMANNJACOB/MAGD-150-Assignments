import processing.video.*;
import processing.sound.*;
Capture camera;
PImage shot;
SoundFile sound;
Reverb reverb;

void setup (){
  size(1080,640);
  camera= new Capture(this,320,240);
  camera.start();
  shot=loadImage("Frame.jpg");
  //Lines 14-18 set up and initialize the soudnfile played in the background of sketch, including the reverb effect.
  sound= new SoundFile(this, "Homework.mp3");
  reverb= new Reverb(this);
    sound.play();
    reverb.process(sound);
    reverb.damp(0.5);
}

void draw(){
  textSize(32);
 text("This was you",640,280);
 text("This is you now",360,40);
 //Lines 26-28 display the saved image and resize the image over itself.
  image(shot,640,320);
        shot.resize(1400,0);
        image(shot,640,320);
 //Lines 30-32 capture the webcam and display in the top left corner.
  if (camera.available()){
    camera.read();
    image(camera,0,0);
  }
//Lines 35 and 36 save the current frame of the capture to be used later.
  if (mousePressed==true){
    saveFrame("data/Frame.jpg");
  }
  
}
