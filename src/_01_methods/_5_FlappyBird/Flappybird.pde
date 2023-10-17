int WIDTH = 800;
int HEIGHT = 600;
int y = 300;
int x = 100;
int birdYVelocity = 25;
int gravity = 10;
int pipeX = 800;
int upperPipeHeight = (int) random(100, 400);
int pipeGap = 200;
int lowerPipeHeight = 600 - (upperPipeHeight + pipeGap);
int lowerY = (upperPipeHeight + pipeGap);
int text = 0;


PImage bird;
PImage fbackground;
PImage topPipe;
PImage bottomPipe;

void settings() {
  size(WIDTH, HEIGHT);
}

void setup() {
  bird = loadImage("bird.png");
  bird.resize(400, 400);
  
  fbackground = loadImage("flappyBackground.jpg");
  fbackground.resize(WIDTH, HEIGHT);
  
  topPipe = loadImage("topPipe.png");
  topPipe.resize(75,upperPipeHeight);
  
  bottomPipe = loadImage("bottomPipe.png");
  bottomPipe.resize(75, 600 - (upperPipeHeight + pipeGap));
  
  
}

void draw() {
  
    boolean result = intersectsPipes();
  if (result == true){
    //text -= 1;
    exit();
  }
  
  //background
  background(fbackground);
  //bird
  image(bird, x, y);
  
  // top pipe 
  //fill(red, green, blue);
image(topPipe, pipeX, 0);
image(bottomPipe, pipeX, lowerY);
pipeX -= 5;


if (pipeX == -75){
  upperPipeHeight = (int) random(100, 400);
  lowerY = (upperPipeHeight + pipeGap);
  lowerPipeHeight = 600 - (upperPipeHeight + pipeGap);
  bottomPipe.resize(75, lowerPipeHeight);
  topPipe.resize(75,upperPipeHeight);
 pipeX = 800; 
 
}

  //Bird falling down
  y += gravity;
  
  
  if (mousePressed){
  
  y -= birdYVelocity;
 
  }
  if (y>height){
   //y = 300;
   exit();
    
  }
  
text(text, 400, 100);
  if (pipeX == 0){
   text += 1; 
  }
}

boolean intersectsPipes() { 
 if (y + 50< upperPipeHeight && x + 50 > pipeX && x + 50 < (pipeX+75)){
            return true; }
        else if (y +50 >lowerY && x + 50 > pipeX && x + 50 < (pipeX+75)) {
            return true; }
        else { return false; }
//if (true){exit();}
}
  
  
  //less than lower pipe height 
  //greater than lower pipe height + pipe gap 
