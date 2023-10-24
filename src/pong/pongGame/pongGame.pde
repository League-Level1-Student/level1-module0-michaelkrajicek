//original measurments for game borders
int WIDTH = 815;
int HEIGHT = 450;

//to see beyond the origional measurments for the game borders
//int WIDTH = 1500;
//int HEIGHT = 1000;

int scoreLeft = 0;
int scoreRight = 0;

int y = 225;
int x = 600;
//int xSpeed = -3;
int xSpeed = -7;
float ySpeed = 1;
// Sets the size of your canvas

public void settings() {
  size(WIDTH, HEIGHT);
}


public void setup() {
}


public void draw() {

  background(0, 0, 0);

  // middle line
  for (int i = 0; i < 30; i++) {

    fill(250, 245, 245);
    stroke(250, 245, 245);


    rect(400, (i*15+5), 5, 5);
  }

  //left player controlled wall, 50 pixels long
  fill(250, 245, 245);
  stroke(250, 245, 245);

  rect(10, mouseY, 5, 50);

  //right player controlled wall, 50 pixels long
  fill(250, 245, 245);
  stroke(250, 245, 245);

  rect(800, mouseY, 5, 50);

  //bottom wall
  fill(250, 245, 245);
  stroke(250, 245, 245);

  //change 1050 to 805 or vice versa to measure the numbers

  rect(0, 445, 815, 5);

  //top wall
  fill(250, 245, 245);
  stroke(250, 245, 245);

  rect(0, 0, 815, 5);


  //right side wall
  /*
        fill(250, 245, 245);
   stroke(250,245,245);
   
   rect(800, 0, 5, 450);
   */

  //main ball
  fill(250, 245, 245);
  stroke(250, 245, 245);
  rect(x, y, 5, 5);
  x += xSpeed;
  y += ySpeed;

  /*if (x<5){
   xSpeed = -xSpeed;
   }*/

  //left paddle
  if (y>=mouseY && x<10 && y<=mouseY+50) {
    x += 10;
    xSpeed = -xSpeed;
    ySpeed = -random(-5, 5);
    // scoreLeft += 1;
  } else if (x < 5) {
    //  scoreLeft -= 1;
    scoreRight += 1;
    y = 225;
    x = 450;
    xSpeed = -xSpeed;
    ySpeed = 0;
  }
  //right paddle
  if (y>=mouseY && x>800 && y<=mouseY+50) {
    x -= 10;
    xSpeed = -xSpeed;
    ySpeed = -random(-5, 5);
    // scoreRight += 1;
  } else if (x > 805) {
    // scoreRight -= 1;
    scoreLeft += 1;
    y = 225;
    x = 450;
    xSpeed = -xSpeed;
    ySpeed = 0;
  }


  /*
   if (x>800){
   xSpeed = -xSpeed;
   ySpeed = -random(-5,5);
   }
   */


  if (y>445) {
    //y -= 5;
    ySpeed = -ySpeed;
  }

  if (y<5) {
    y =+ 5;
    ySpeed = -ySpeed;
  }

  if (scoreLeft == 1) {
    drawOne (100, 450);
  }

  int digitLeft = scoreLeft%10;
  int digitRight = scoreRight%10;

  drawScore(scoreLeft, 330, 10);
  drawScore(scoreRight, 540, 10);


  //  scoreLeft = scoreLeft/10;
  //  scoreRight = scoreRight/10;

  println(scoreLeft);
  println(scoreRight);
  println(digitLeft);
  println(digitRight);

  //bottom wall 2
  /*fill(250, 245, 245);
   stroke(250, 245, 245);
   
   rect(0, 495, 1050, 5);
   
   drawOne (100, 450);
   drawTwo (200, 450);
   drawFour (410, 450);
   drawThree (300,450);
   drawFive (500, 450);
   drawSix (600, 450);
   drawSeven (700, 450);
   drawEight (800, 450);
   drawNine (900, 450);
   drawZero (1000, 450);
   */
}

void drawScore(int score, int x, int y) {
  if (score == 1000) {
    exit();
  }
  //score = 999;
  int digit;
  while (score > 0) {
    digit = score%10;
    score = score / 10;
    if (digit == 0) {
      drawZero(x, y);
      x -= 60;
    }
    if (digit == 1) {
      drawOne(x, y);
      x -= 60;
    }
    if (digit == 2) {
      drawTwo(x, y);
      x -= 60;
    }
    if (digit == 3) {
      drawThree(x, y);
      x -= 60;
    }
    if (digit == 4) {
      drawFour(x, y);
      x -= 60;
    }
    if (digit == 5) {
      drawFive(x, y);
      x -= 60;
    }
    if (digit == 6) {
      drawSix(x, y);
      x -= 60;
    }
    if (digit == 7) {
      drawSeven(x, y);
      x -= 60;
    }
    if (digit == 8) {
      drawEight(x, y);
      x -= 60;
    }
    if (digit == 9) {
      drawNine(x, y);
      x -= 60;
    }
  }
}

void drawOne(int x, int y) {

  fill(250, 245, 245);
  stroke(250, 245, 245);

  rect(x+25, y, 5, 45);
}

void drawTwo (int x, int y) {

  fill(250, 245, 245);
  stroke(250, 245, 245);

  rect(x, y, 50, 5);
  rect(x+45, y+5, 5, 20);
  rect(x, y+20, 50, 5);
  rect(x, y+20, 5, 20);
  rect(x, y+40, 50, 5);
}

void drawThree (int x, int y) {

  fill(250, 245, 245);
  stroke(250, 245, 245);

  rect(x, y, 50, 5);
  rect(x+45, y+5, 5, 20);
  rect(x, y+20, 50, 5);
  rect(x+45, y+20, 5, 20);
  rect(x, y+40, 50, 5);
}

void drawFour (int x, int y) {

  fill(250, 245, 245);
  stroke(250, 245, 245);

  rect(x, y, 5, 20);
  rect(x+45, y, 5, 20);
  rect(x, y+20, 50, 5);
  rect(x+45, y+20, 5, 25);
}

void drawFive(int x, int y) {

  fill(250, 245, 245);
  stroke(250, 245, 245);

  rect(x, y, 50, 5);
  rect(x, y+5, 5, 20);
  rect(x, y+20, 50, 5);
  rect(x+45, y+20, 5, 20);
  rect(x, y+40, 50, 5);
}

void drawSix(int x, int y) {
  fill(250, 245, 245);
  stroke(250, 245, 245);

  rect(x, y, 50, 5);
  rect(x, y+5, 5, 20);
  rect(x, y+20, 50, 5);
  rect(x, y+20, 5, 20);
  rect(x+45, y+20, 5, 20);
  rect(x, y+40, 50, 5);
}

void drawSeven (int x, int y) {

  fill(250, 245, 245);
  stroke(250, 245, 245);

  rect(x, y, 50, 5);
  rect(x+45, y+5, 5, 20);
  //rect(x, y+20, 50, 5);
  rect(x+45, y+20, 5, 25);
  //rect(x, y+40, 50, 5);
}

void drawEight (int x, int y) {

  fill(250, 245, 245);
  stroke(250, 245, 245);

  rect(x, y, 50, 5);
  rect(x, y, 5, 45);
  rect(x, y+20, 50, 5);
  rect(x+50, y, 5, 45);
  rect(x, y+40, 50, 5);
}

void drawNine (int x, int y) {

  fill(250, 245, 245);
  stroke(250, 245, 245);

  rect(x, y, 50, 5);
  rect(x, y+5, 5, 20);
  rect(x, y+20, 50, 5);
  rect(x+50, y, 5, 45);
  rect(x, y+40, 50, 5);
}

void drawZero (int x, int y) {

  fill(250, 245, 245);
  stroke(250, 245, 245);

  rect(x, y, 50, 5);
  rect(x, y, 5, 45);
  //rect(x, y+20, 50, 5);
  rect(x+50, y, 5, 45);
  rect(x, y+40, 50, 5);
}
