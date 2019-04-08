
public class Batsman extends CricketPlayer implements IPlayerStatistics{
	
	private long runs;

	public long getRuns() {
		return runs;
	}

	public void setRuns(long runs) {
		this.runs = runs;
	}

	//Constructor (<super args>, Long)
	public Batsman(String name, String teamName, Integer noOfMatches, long runs) {
		super(name, teamName, noOfMatches);
		this.runs = runs;
	}
	//1 arg Constructor
	public Batsman(long runs) {
		super();
		this.runs = runs;
	}

	@Override
	public void displayPlayerStatistics() {
		
		// TODO Auto-generated method stub
		
		System.out.println("Player name : " + this.getName());
		System.out.println("Team name : " + this.getTeamName());
		System.out.println("No of matches : " + this.getNoOfMatches());
		System.out.println("Runs scored : " + this.getRuns());
	}
	
	
}
