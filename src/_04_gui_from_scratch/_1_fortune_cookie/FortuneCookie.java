package _04_gui_from_scratch._1_fortune_cookie;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Random;

import javax.swing.JButton;
import javax.swing.JFrame;

public class FortuneCookie implements ActionListener {
	public void showButton() {
		JFrame frame = new JFrame();
		frame.setVisible(true);

		JButton button = new JButton();
		frame.add(button);
		button.setText("Click me for a fortune.");
		frame.pack();

		button.addActionListener(this);

		

		



	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		int rand = new Random().nextInt(5);
		if (rand == 0) {
			System.out.println("Courage is doing what scares you");
		}
		if (rand ==1) {
			System.out.println("run.");
		}
		if (rand==2) {
			System.out.println("Be passionate and totally worth the chaos.");
		}
		if (rand==3) {
			System.out.println("A beautiful, smart, and loving person will be coming into your life.");
		}
		if (rand==4) {
			System.out.println("A dubious friend may be an enemy in camouflage.");	
		}
	}
}
