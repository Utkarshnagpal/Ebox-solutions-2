
public class Raider extends KabaddiPlayer implements IPlayerStatistics{

	private Long noOfRaids;
	private Long raidPoints;
	
	//Constructor (Super args, LongX2)
	public Raider(String name, String teamName, Long noOfMatches, Long noOfRaids, Long raidPoints) {
		super(name, teamName, noOfMatches);
		this.noOfRaids = noOfRaids;
		this.raidPoints = raidPoints;
	}

	//Constructor (Long X2)
	public Raider(Long noOfRaids, Long raidPoints) {
		super();
		this.noOfRaids = noOfRaids;
		this.raidPoints = raidPoints;
	}

	//Empty Constructor
	public Raider() {
		super();
	}

	public void displayPlayerStatistics(){
		
		//Details
				System.out.println("Player Details");
				System.out.println("Player name : " + this.name);
				System.out.println("Team name : " + this.teamName);
				System.out.println("No of matches played : " + this.noOfMatches);
				System.out.println("No of raids : " + this.noOfRaids);
				System.out.println("Raid points : " + this.raidPoints);

	}
	
}
