package _02_return_types._2_list_of_goals;



import javax.swing.JOptionPane;

public class ListOfGoals {
	static String listOfGoals ="";
	static int numberOfGoals = 0;
	
	public static void main(String[] args) {
		//1. Call the appropriate method to make your list of goals
		createListOfGoals();
		//2. Call the appropriate method to get your list of goals, 
		//   so you can use a pop-up to display them
		JOptionPane.showMessageDialog(null, "Your goals are "+getListOfGoals());   
		//3. Call the appropriate method to get the number of goals you entered,
		//   and using a pop-up display the number of goals
		JOptionPane.showMessageDialog(null, "The number of goals you have is "+getNumberOfGoals());  
		//4. Call the appropriate method to see if you put a lot of goals,
		//   if you did put a lot of goals use a pop-up to say "Wow that's a lot of goals! Awesome!"
		boolean b = isManyGoals();
		if (b) {
			JOptionPane.showMessageDialog(null, "Wow that's a lot of goals! Awesome!");
		} else {
			JOptionPane.showMessageDialog(null, "That's good that you have a few goals, so you can work extra hard on them!");
		}
	}
	
	static void createListOfGoals() {
		String input = "";
		while(true) {
			input = JOptionPane.showInputDialog("Enter a goal you have\n(Or X to stop entering goals)");
			if( input.equalsIgnoreCase("X") ) {
				break;
			}
			listOfGoals += input+ "\n";
			numberOfGoals++;
		}
	}
	
	static String getListOfGoals() {
		return listOfGoals;
	}
	
	static int getNumberOfGoals() {
		return numberOfGoals;
	}
	
	static boolean isManyGoals() {
		if( getNumberOfGoals() > 5) {
			return true;
		}
		return false;
	}
	
}
