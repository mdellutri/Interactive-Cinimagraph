//Name: Mason Dellutri Date:12/4/2017
//CPSC 211
//HW 7 
//Creates two cinemagraphs of my hand scrolling that play when the mouse is over them
PImage Frame1;    
PImage Frame2;       
PImage Frame3;      
PImage Frame4;     
PImage Frame5;
PImage Frame6;      
PImage Frame7;      
PImage Frame8;    
PImage Frame9;       
PImage Frame10;      
PImage Frame11;       
PImage Frame12;      

PImage TwoFrame1;    
PImage TwoFrame2;       
PImage TwoFrame3;      
PImage TwoFrame4;     
PImage TwoFrame5;
PImage TwoFrame6;      
PImage TwoFrame7;      
PImage TwoFrame8;    
PImage TwoFrame9;       
PImage TwoFrame10;      
PImage TwoFrame11;       
PImage TwoFrame12; 

int drawCount = 0;
int frameNum = 1;

int twoFrameNum = 1;

//Sets up the image and the type of text and the variables that will be changed
void setup() {
  size(1200, 800);

  Frame1 = loadImage("Frame1.jpg"); 
  Frame2 = loadImage("Frame2.jpg");
  Frame3 = loadImage("Frame3.jpg");
  Frame4 = loadImage("Frame4.jpg");
  Frame5 = loadImage("Frame5.jpg");
  Frame6 = loadImage("Frame6.jpg");
  Frame7 = loadImage("Frame7.jpg");
  Frame8 = loadImage("Frame8.jpg");
  Frame9 = loadImage("Frame9.jpg");
  Frame10 = loadImage("Frame10.jpg");
  Frame11 = loadImage("Frame11.jpg");
  Frame12 = loadImage("Frame12.jpg");
  
  TwoFrame1 = loadImage("TwoFrame1.jpg"); 
  TwoFrame2 = loadImage("TwoFrame2.jpg");
  TwoFrame3 = loadImage("TwoFrame3.jpg");
  TwoFrame4 = loadImage("TwoFrame4.jpg");
  TwoFrame5 = loadImage("TwoFrame5.jpg");
  TwoFrame6 = loadImage("TwoFrame6.jpg");
  TwoFrame7 = loadImage("TwoFrame7.jpg");
  TwoFrame8 = loadImage("TwoFrame8.jpg");
  TwoFrame9 = loadImage("TwoFrame9.jpg");
  TwoFrame10 = loadImage("TwoFrame10.jpg");
  TwoFrame11 = loadImage("TwoFrame11.jpg");
  TwoFrame12 = loadImage("TwoFrame12.jpg");
  image(Frame1,0,0);
  image(TwoFrame1,600,0);
}

//Runs the loop and goes through the if statement to figure out the frame
void draw(){
  if(mouseX <= 600){
    if (frameNum == 1)
      image(Frame1,0,0);
    else if (frameNum == 2)
      myDrawOne(Frame2);
    else if (frameNum == 3)
      myDrawOne(Frame3);
    else if (frameNum == 4)
      myDrawOne(Frame4);
    else if (frameNum == 5)
      myDrawOne(Frame5);
    else if (frameNum == 6)
      myDrawOne(Frame6);
    else if (frameNum == 7)
      myDrawOne(Frame7);
    else if (frameNum == 8)
      myDrawOne(Frame8);
    else if (frameNum == 9)
      myDrawOne(Frame9);
    else if (frameNum == 10)
      myDrawOne(Frame10);
    else if (frameNum == 11)
      myDrawOne(Frame11);
    else if (frameNum == 12)
      myDrawOne(Frame12);
    if (frameNum == 12){
      frameNum = 1;
    }
    frameNum++;
  }
  
  if(mouseX >= 600){
    if (twoFrameNum == 1)
      image(TwoFrame1,600,0);
    else if (twoFrameNum == 2)
      myDrawTwo(TwoFrame2);
    else if (twoFrameNum == 3)
      myDrawTwo(TwoFrame3);
    else if (twoFrameNum == 4)
      myDrawTwo(TwoFrame4);
    else if (twoFrameNum == 5)
      myDrawTwo(TwoFrame5);
    else if (twoFrameNum == 6)
      myDrawTwo(TwoFrame6);
    else if (twoFrameNum == 7)
      myDrawTwo(TwoFrame7);
    else if (twoFrameNum == 8)
      myDrawTwo(TwoFrame8);
    else if (twoFrameNum == 9)
      myDrawTwo(TwoFrame9);
    else if (twoFrameNum == 10)
      myDrawTwo(TwoFrame10);
    else if (twoFrameNum == 11)
      myDrawTwo(TwoFrame11);
    else if (twoFrameNum == 12)
      myDrawTwo(TwoFrame12);
    if (twoFrameNum == 12){
      twoFrameNum = 1;
    }
    twoFrameNum++;
  }
}

//draws the image on the left given an image
void myDrawOne(PImage frame) {   
  Frame1.loadPixels();
  frame.loadPixels();
  image(frame.get(200,280,250,250), 200, 280);
  image(Frame1.get(420,280,60,60), 420, 280);
  delay(35);
}

//draws the image on the right given an image
void myDrawTwo(PImage frame) {   
  TwoFrame1.loadPixels();
  frame.loadPixels();
  image(frame.get(0,400,350,140), 600, 400);
  image(frame.get(0,400,130,155), 600, 400);
  image(TwoFrame1.get(280,380,100,30), 880, 380);
  image(TwoFrame1.get(300,400,100,30), 900, 400);
  image(TwoFrame1.get(0,400,170,25), 600, 400);
  delay(35);
}

//screenshots an image
void keyPressed() {
save("Screenshot.jpg");
}