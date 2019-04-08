import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub

		
		//File Handling challenge
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Enter the number of the players");
		int players = Integer.parseInt(sc.nextLine());
		
		ArrayList<Player> playerList = new ArrayList<Player>();
		
		for(int i = 0; i < players; i++){
			
			System.out.println("Enter details of player " + (i+1));
			System.out.println("Enter the player name:");
			String playerName = sc.nextLine();
			System.out.println("Enter the team name:");
			String teamName = sc.nextLine();
			System.out.println("Enter the skill:");
			String skill = sc.nextLine();
			
			playerList.add(new Player(playerName, teamName, skill));
			
		}
		
		//Write the data in player list to a csv file
		FileUtility fu = new FileUtility();
		fu.writeData(playerList);
		
		
		sc.close();
		
	}

}
