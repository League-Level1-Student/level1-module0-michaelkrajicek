 int WIDTH = 600;
   int HEIGHT = 600;

    int score = 0;
    int bucketWidth = 50;
    int bucketHeight;
    PImage bucket;
    int y = 0;
    int x = 100;

    // Sets the size of your canvas
   
    public void settings() {
        size(WIDTH, HEIGHT);
    }

    
    public void setup() {

      bucket = loadImage("bucket.png");
      bucket.resize(100, 100);
      
    }

   
    public void draw() {

      background(20,177,201);
      
      fill(128, 119, 91);
      stroke(82,77,61);
      
      rect( mouseX, height - 100, 100, 100);
    
      
      
      
       fill(161, 198, 204);
          stroke(161, 236, 205);
          ellipse(x, y, 50, 50);
      y += 10;  
      
      if (y>height){
          x = (int) random(width);
          y = 0;
          score -= 1;
      }
     
          if (x> mouseX && x < mouseX+100 && y>height-100){
            //int i = 0;
           score += 1;
           println (score);
           x = (int) random(width);
          y = 0;
          }
          
    }
    
 
    
    
    

    
       
    
    
    /*********************** DO NOT MODIFY THE CODE BELOW ********************/

    void checkCatch(int x) {
        if (x > mouseX && x < mouseX + bucketWidth) {
            score++;
        } else if (score > 0) {
            score--;
        }
        println("Your score is now: " + score);
    }
