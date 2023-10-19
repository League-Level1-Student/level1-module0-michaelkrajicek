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



/*******************************************************************************/


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




































package _01_methods._3_rain_game;

import processing.core.PApplet;
import processing.core.PImage;

/*
 * Goal: Make a game where the user has to catch rain drops in a bucket!
 * 
 * In the setup() method:
 * 1. If you are using an image for the bucket, load it and resize it here.
 *    A bucket image, bucket.png, has been provided if you want to use it.
 *    bucket = loadImage("images/bucket.png");
 *    bucket.resize(100, 100);  // you can choose values other than 100, 100
 *    
 * In the draw() method:
 * 2. Set a background color
 * 
 * 3. Draw a raindrop (ellipse) at the top of the screen
 * 
 * 4. Make the rain fall down the screen.
 *    Hint: make a variable for the raindrop's Y position and change it after
 *    you draw the raindrop.
 * 
 * 5. When the rain falls off the bottom of the canvas, start a new rain drop
 *    falling from the top.
 *    Each new drop should start at a random position (X position) at the top.
 *    Hint: This code will get a random number between 0 and the window width.
 *    int randomNumber = (int)random(width);
 * 
 * 6. Draw a bucket (rectangle or image) at the bottom of the screen.
 *    The bucket's width needs to be stored in the bucketWidth variable.
 * 
 * 7. Make the bucket move side-to-side with the mouse. Hint: use mouseX
 * 
 * 8. When the rain drop has fallen to the bucket, call the checkCatch() method
 *    to see if the rain drop is in the bucket.
 * 
 * 9. Show the current score on the screen using the code below.
 *    Change the color if it does not show up on your background.
 *    fill(0, 0, 0);
 *    textSize(16);
 *    text("Score: " + score, 20, 20);
 */
public class RainGame extends PApplet {
	
    static final int WIDTH = 600;
    static final int HEIGHT = 600;

    int score = 0;
    int bucketWidth = 50;
    int bucketHeight;
    PImage bucket;
    int y = 0;
    int x = 100;

    // Sets the size of your canvas
    @Override
    public void settings() {
        size(WIDTH, HEIGHT);
    }

    @Override
    public void setup() {

    	bucket = loadImage("images/bucket.png");
    	bucket.resize(100, 100);
    	
    }

    @Override
    public void draw() {

    	background(105,236,205);
    	
    	 fill(161, 198, 204);
    	    stroke(161, 236, 205);
    	    ellipse(x, y, 50, 50);
    	y += 10;    
    	    //Random r = new Random();
    	//x = r;
    }

    static public void main(String[] args) {
        PApplet.main(RainGame.class.getName());
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
}
