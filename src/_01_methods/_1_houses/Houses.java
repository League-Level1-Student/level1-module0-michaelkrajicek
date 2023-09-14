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

	public void drawHouse(int height, Color color, boolean pointy) {

		rob.setPenColor(color);

		rob.move(height);

		if(pointy) {
			pointyRoof();
		} else {
			flatRoof();
		}

		rob.move(height);

		rob.turn(-90);

		rob.setPenColor(new Color(72, 133, 88));

		rob.move(30);

		rob.turn(-90);

	}

	public void blackBackground() {

		for (int i = 0; i<41; i++) {

			rob.setAngle(180);

			rob.setPenColor(Color.black);

			rob.setPenWidth(999);

			rob.setSpeed(999);

			rob.move(595);

			rob.setAngle(90);

			rob.move(10);

			rob.setAngle(0);

			rob.move(595);

			rob.setAngle(90);

			rob.move(10);
		}
	}

	public void drawHouse(String height, Color color, boolean pointy) {


		if(height.equals("small" )) {
			drawHouse(60, color, pointy);
		}

		if(height.equals("medium")) {
			drawHouse(120, color, pointy);
		}
		if(height.equals("large")) {
			drawHouse(250, color, pointy);
		}

		if(height.equals("random")) {
			Random x = new Random();

			int r = x.nextInt(255) + 45;

			drawHouse(r, color, pointy);
		}

	}

	public void pointyRoof() {
		rob.turn(45);

		rob.move(30);

		rob.turn(90);

		rob.move(30);

		rob.turn(45);
	}

	public void flatRoof() {
		rob.setAngle(90);

		rob.move(42);

		rob.setAngle(180);
	}

	public Color randomColor(){

		Random x = new Random();

		int r = x.nextInt(255) + 1;

		int g = x.nextInt(255) + 1;

		int b = x.nextInt(255) + 1;

		Color randomcolor = new Color (r,g,b);

		return randomcolor;
	}

	public void run() {
		// Check the recipe to find out what code to put here

		rob.setWindowSize(800, 600);

		rob.setX(0);
		rob.setY(0);

		rob.penDown();

		//blackBackground();

		rob.setWindowColor(Color.black);

		rob.setPenWidth(2);

		rob.setAngle(0);

		rob.setX(10);

		rob.setY(500);

		rob.setSpeed(999);

		Random rpointy = new Random();
		rpointy.nextBoolean();

		for (int i = 0; i<8; i++) {
			drawHouse("random", randomColor(), rpointy.nextBoolean());
		}

		rob.setX(10);
		rob.setY(640);

		for (int i = 0; i<5; i++) {
			for(int j = 0 ; j < 20; j++) {
				drawHouse("small", randomColor(), rpointy.nextBoolean());

			}
			rob.setY(rob.getY()+100);
			rob.setX(10);
		}

		drawHouse("small", Color.yellow, true);
		drawHouse("medium", Color.green, true);
		drawHouse("large", Color.BLUE, false);	

	}
}
