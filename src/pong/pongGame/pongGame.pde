 int WIDTH = 805;
   int HEIGHT = 450;

    int score = 0;
    
    
    int y = 225;
    int x = 600;
    int xSpeed = -5;
    float ySpeed = 1;
    // Sets the size of your canvas
   
    public void settings() {
        size(WIDTH, HEIGHT);
    }

    
    public void setup() {

      
      
    }

   
    public void draw() {

      background(0,0,0);
      
      for (int i = 0; i < 60; i++){
       
      fill(250, 245, 245);
      stroke(250,245,245);
      
      
      rect(400, (i*15+5), 5, 5);
      }
      
      //left player controlled wall, 50 pixels long
        fill(250, 245, 245);
      stroke(250,245,245);
      
      rect(10,mouseY, 5, 50);
      
      //bottom wall
        fill(250, 245, 245);
      stroke(250,245,245);
      
      rect(0, 445, 805, 5);
      
      //top wall
      fill(250, 245, 245);
      stroke(250,245,245);
      
      rect(0, 0, 805, 5);
      
      
      //right side wall
        fill(250, 245, 245);
      stroke(250,245,245);
      
      rect(800, 0, 5, 450);
      
      //main ball
        fill(250, 245, 245);
      stroke(250,245,245);
      rect(x, y, 5, 5);
        x+=xSpeed;
        y+=ySpeed;
        
        /*if (x<5){
          xSpeed = -xSpeed;
        }*/
        
        if (y>=mouseY && x==10 && y<=mouseY+50){
          xSpeed = -xSpeed;
          ySpeed = -random(-5,5);
          score += 1;
        }
        
        
        if (x>800){
          xSpeed = -xSpeed;
          ySpeed = -random(-5,5);
         
        }
        
        if (y>445){
          ySpeed = -ySpeed;
        }
        
        if (y<5){
          ySpeed = -ySpeed;
        }
      
     
     
     
          
    }
