int WIDTH = 800;
int HEIGHT = 600;
int y = 300;
int x = 100;
int birdYVelocity = 35;
int gravity = 10;
int topPipeX = 300;

PImage bird;
PImage fbackground;
PImage topPipe;

void settings() {
  size(WIDTH, HEIGHT);
}

void setup() {
  bird = loadImage("bird.png");
  bird.resize(50, 50);
  
  fbackground = loadImage("flappyBackground.jpg");
  fbackground.resize(WIDTH, HEIGHT);
  
  topPipe = loadImage("topPipe.png");
  topPipe.resize(75,200);
}

void draw() {
  //background
  background(fbackground);
  //bird
  image(bird, x, y);
  
  // top pipe 
  //fill(red, green, blue);
image(topPipe, topPipeX, 0);
topPipeX -= 5;

if (topPipeX ==0){
 topPipeX = 800; 
 int upperPipeHeight = (int) random (100,400);
}

  //Bird falling down
  y += gravity;
  
  
  
  
  if (mousePressed){
  
  y -= birdYVelocity;
 // birdYVelocity -= 35;
  }
  if (y>height){
   y = 300;
   //exit();
    
  }
}
