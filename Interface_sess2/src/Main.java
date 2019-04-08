import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		//Interface sess2/ Simple interface
		Scanner sc = new Scanner(System.in);
		
		String name;
		String teamName;
		int noOfMatches;
		long totalRunsScored;
		int noOfWickets;
		
		System.out.println("Enter player name");
		name = sc.nextLine();
		System.out.println("Enter team name");
		teamName = sc.nextLine();
		System.out.println("Enter number of matches played");
		noOfMatches = Integer.parseInt(sc.nextLine());
		System.out.println("Enter total runs scored");
		totalRunsScored = Long.parseLong(sc.nextLine());
		System.out.println("Enter number of wickets taken");
		noOfWickets = Integer.parseInt(sc.nextLine());
		
		Player p = new Player(name, teamName, noOfMatches, totalRunsScored, noOfWickets);
		
		p.displayPlayerStatistics();
		
		sc.close();
		*/
		
		
		//
		
		Scanner sc = new Scanner(System.in);
		
		while(true){
			
			int choice;
			
			//Menu
			System.out.println("Menu");
			System.out.println("1.Bowler");
			System.out.println("2.Batsman");
			System.out.println("3.WicketKeeper");
			System.out.println("4.AllRounder");
			System.out.println("Enter your choice");
			
			choice = Integer.parseInt(sc.nextLine());
			
			CricketPlayer cp;
			

			
			//Bowler
			if(choice == 1){
				System.out.println("Enter the Bowler details");
				String name;
				String teamName;
				int noOfMatches;
				System.out.println("Enter player name");
				name = sc.nextLine();
				System.out.println("Enter team name");
				teamName = sc.nextLine();
				System.out.println("Enter number of matches played");
				noOfMatches = Integer.parseInt(sc.nextLine());
				int noOfWickets;
				System.out.println("Enter number of wickets taken");
				noOfWickets = Integer.parseInt(sc.nextLine());
				cp = new Bowler(name, teamName, noOfMatches, noOfWickets);
				((Bowler) cp).displayPlayerStatistics();
			}
			
			//Batsman
			else if(choice == 2){
				System.out.println("Enter the Batsman details");
				String name;
				String teamName;
				int noOfMatches;
				System.out.println("Enter player name");
				name = sc.nextLine();
				System.out.println("Enter team name");
				teamName = sc.nextLine();
				System.out.println("Enter number of matches played");
				noOfMatches = Integer.parseInt(sc.nextLine());
				long runs;
				System.out.println("Enter the runs scored");
				runs = Integer.parseInt(sc.nextLine());
				cp = new Batsman(name, teamName, noOfMatches, runs);
				((Batsman) cp).displayPlayerStatistics();
			}
			
			//WicketKeeper
			else if(choice == 3){
				System.out.println("Enter the WicketKeeper details");
				String name;
				String teamName;
				int noOfMatches;
				System.out.println("Enter player name");
				name = sc.nextLine();
				System.out.println("Enter team name");
				teamName = sc.nextLine();
				System.out.println("Enter number of matches played");
				noOfMatches = Integer.parseInt(sc.nextLine());
				int noOfStumpings;
				long runs;
				int noOfDismissals;
				int noOfCatches;
				System.out.println("Enter number of catches taken");
				noOfCatches = Integer.parseInt(sc.nextLine());
				System.out.println("Enter number of stumpings"); 
				noOfStumpings = Integer.parseInt(sc.nextLine());
				System.out.println("Enter number of dismissals");
				noOfDismissals = Integer.parseInt(sc.nextLine());
				System.out.println("Enter the runs scored");
				runs = Integer.parseInt(sc.nextLine());
				cp = new WicketKeeper(name, teamName, noOfMatches,noOfCatches, noOfStumpings, runs, noOfDismissals);
				((WicketKeeper)cp).displayPlayerStatistics();
			}
			
			//AllRounder
			else if(choice == 4){
				System.out.println("Enter the AllRounder details");
				String name;
				String teamName;
				int noOfMatches;
				System.out.println("Enter player name");
				name = sc.nextLine();
				System.out.println("Enter team name");
				teamName = sc.nextLine();
				System.out.println("Enter number of matches played");
				noOfMatches = Integer.parseInt(sc.nextLine());
				int noOfWickets;
				long runs;
				System.out.println("Enter the runs scored");
				runs = Integer.parseInt(sc.nextLine());
				System.out.println("Enter number of wickets taken ");
				noOfWickets = Integer.parseInt(sc.nextLine());
				cp = new AllRounder(name, teamName, noOfMatches, runs, noOfWickets);
				((AllRounder)cp).displayPlayerStatistics();

			}
			else{
				System.out.println("Please Enter a Valid Input");
				continue;
			}
				
			System.out.println("Do you want to continue?");
			String str = sc.nextLine();
			
			if(str.equals("YES"))
				continue;
			else
				break;
			
		}
		
		sc.close();
		
	}

}
