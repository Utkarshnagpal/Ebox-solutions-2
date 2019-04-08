
public class AllRounder extends KabaddiPlayer implements IPlayerStatistics{

	private Long noOfRaids;
	private Long raidPoints;
	private Long defencePoints;
	private Long noOfTotalPoints;
	
	//Constructor (Super args, LongX4)
	public AllRounder(String name, String teamName, Long noOfMatches, Long noOfRaids, Long raidPoints,
			Long defencePoints, Long noOfTotalPoints) {
		super(name, teamName, noOfMatches);
		this.noOfRaids = noOfRaids;
		this.raidPoints = raidPoints;
		this.defencePoints = defencePoints;
		this.noOfTotalPoints = noOfTotalPoints;
	}

	//Constructor (Long X4)
	public AllRounder(Long noOfRaids, Long raidPoints, Long defencePoints, Long noOfTotalPoints) {
		super();
		this.noOfRaids = noOfRaids;
		this.raidPoints = raidPoints;
		this.defencePoints = defencePoints;
		this.noOfTotalPoints = noOfTotalPoints;
	}

	//Empty Constructor
	public AllRounder() {
		super();
	}


	public void displayPlayerStatistics() {
		// TODO Auto-generated method stub
		
		//Details
		System.out.println("Player Details");
		System.out.println("Player name : " + this.name);
		System.out.println("Team name : " + this.teamName);
		System.out.println("No of matches played: " + this.noOfMatches);
		System.out.println("No of raids : " + this.noOfRaids);
		System.out.println("Raid points : " + this.raidPoints);
		System.out.println("Defence points : " + this.defencePoints);
		System.out.println("Total points : " + this.noOfTotalPoints);
		
	}
	

	
}
