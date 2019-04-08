
public class Defender extends KabaddiPlayer implements IPlayerStatistics{

	private Long noOfRaids;
	private Long defencePoints;
	
	
	//Constructor (Super args, LongX2)
	public Defender(String name, String teamName, Long noOfMatches, Long noOfRaids, Long defencePoints) {
		super(name, teamName, noOfMatches);
		this.noOfRaids = noOfRaids;
		this.defencePoints = defencePoints;
	}

	//Constructor (Long X2)
	public Defender(Long noOfRaids, Long defencePoints) {
		super();
		this.noOfRaids = noOfRaids;
		this.defencePoints = defencePoints;
	}

	//Empty Constructor
	public Defender() {
		super();
	}

	public void displayPlayerStatistics() {
		// TODO Auto-generated method stub
		
		//Details
				System.out.println("Player Details");
				System.out.println("Player name : " + this.name);
				System.out.println("Team name : " + this.teamName);
				System.out.println("No of matches played : " + this.noOfMatches);
				System.out.println("No of raids : " + this.noOfRaids);
				System.out.println("Defence points : " + this.defencePoints);
		
	}
	
	
}
