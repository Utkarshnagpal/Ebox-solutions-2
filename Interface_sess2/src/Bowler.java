
public class Bowler extends CricketPlayer implements IPlayerStatistics{

	private Integer noOfWickets;

	//Getter and Setter
	public Integer getNoOfWickets() {
		return noOfWickets;
	}

	public void setNoOfWickets(Integer noOfWickets) {
		this.noOfWickets = noOfWickets;
	}

	//Constructor (<super args>, Integer)
	public Bowler(String name, String teamName, Integer noOfMatches, Integer noOfWickets) {
		super(name, teamName, noOfMatches);
		this.noOfWickets = noOfWickets;
	}
	//1 arg constructor
	public Bowler(Integer noOfWickets){
		super();
		this.noOfWickets = noOfWickets;
	}


	@Override
	public void displayPlayerStatistics() {

		// TODO Auto-generated method stub

		System.out.println("Player name : " + this.getName());
		System.out.println("Team name : " + this.getTeamName());
		System.out.println("No of matches : " + this.getNoOfMatches());
		System.out.println("No of wickets taken : " + this.getNoOfWickets());
	}
	
	
}
