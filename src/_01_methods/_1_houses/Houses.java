package _01_methods._1_houses;

import java.awt.Color;
import java.util.Random;

import org.jointheleague.graphical.robot.Robot;

/*
 *    Copyright (c) The League of Amazing Programmers 2013-2021
 *    Level 1
 */
public class Houses {

	Robot rob = new Robot();
	
	public void drawHouse(int height) {
		
		//Random r = new Random();
		
		//int x = r.nextInt(150) + 50;
		
		rob.setRandomPenColor();
		
		rob.move(height);
		
		rob.turn(45);
		
		rob.move(30);
		
		rob.turn(90);
		
		rob.move(30);
		
		rob.turn(45);
		
		rob.move(height);
		
		rob.turn(-90);
		
		rob.setPenColor(new Color(72, 133, 88));
		
		rob.move(30);
		
		rob.turn(-90);
		
	}
	
	public void blackBackground() {
		
		
		
		rob.setAngle(180);
		
		rob.setPenColor(Color.black);
		
		rob.setPenWidth(999);
		
		rob.setSpeed(999);
		
		rob.move(800);
		
		rob.setAngle(90);
		
		rob.move(10);
		
		rob.setAngle(0);
		
		rob.move(800);
		
		rob.setAngle(90);
		
		rob.move(20);
		
	}
	
	public void drawHouse(String height) {
		
		
		if(height.equals("small")) {
			drawHouse(60);
		}
		
		if(height.equals("medium")) {
			drawHouse(120);
		}
		if(height.equals("large")) {
			drawHouse(250);
		}
		
	}
	
	
	
	public void run() {
		// Check the recipe to find out what code to put here
		
		rob.setWindowSize(800, 600);
		
		rob.setX(0);
		rob.setY(0);
		
		rob.penDown();
		
		blackBackground();
		blackBackground();
		blackBackground();
		
		rob.setAngle(0);
		
		
		
		rob.setX(10);
		
		rob.setY(500);
	
		rob.setSpeed(100);
		
		Random r = new Random();
		
		int x = r.nextInt(150) + 50;
		
		drawHouse(x);
		drawHouse("small");
		drawHouse("medium");
		drawHouse("large");
		

		//Random r = new Random();
	
	
	}
}
