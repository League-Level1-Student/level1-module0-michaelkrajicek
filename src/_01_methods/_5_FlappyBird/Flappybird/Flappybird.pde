int WIDTH = 800;
int HEIGHT = 600;
int y = 300;
int x = 100;
int birdYVelocity = 35;
int gravity = 10;
PImage bird;

void settings() {
  size(WIDTH, HEIGHT);
}

void setup() {
bird = loadImage("_5_FlappyBird/bird.png");
bird.resize(50,50);
}

void draw() {
  
  background(66, 218, 245);
  fill(245, 242, 66);
  stroke(0, 0, 0);
  ellipse(x, y, 50, 50);
  
  y += gravity;
  
  //y = birdYVelocity;
  
  
  if (mousePressed){
  
  y -= birdYVelocity;
 // birdYVelocity -= 35;
  }
  if (y>height){
   y = 300;
   //exit();
    
  }
}
