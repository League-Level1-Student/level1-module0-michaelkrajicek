static final int WIDTH = 2220;
    static final int HEIGHT = 1200;
    int x = 100;
    int y = 50;

 
    
    public void settings() {
        size(WIDTH, HEIGHT);
    }

    
    public void setup() {
background (20,177,201);
    }

    
    public void draw() {
      
      
      
      for (int i = 0; i <10; i++){
          x = (int)getWormX(i);
          y = (int)getWormY(i);
        // x = (int) random(width);
          //y = (int) random(height);
          fill((int) random(999), random(999), random(999));
          //255,64,52
          stroke(random(999), random(999), random(999));
          //235,64,52
          ellipse(x+i, y+i, 25,25);
        
      }
    }

   

    /*********************** DO NOT MODIFY THE CODE BELOW ********************/
    float frequency = 0.001f;
    float noiseInterval = PI;

    void makeMagical() {
        fill(0, 0, 0, 10);
        rect(0, 0, width, height);
        noStroke();
    }

    float getWormX(int i) {
        return map(noise(i * noiseInterval + frameCount * frequency), 0, 1, 0, width);
    }

    float getWormY(int i) {
        return map(noise(i * noiseInterval + 1 + frameCount * frequency), 0, 1, 0, height);
    }
