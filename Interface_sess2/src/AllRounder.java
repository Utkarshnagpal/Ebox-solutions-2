
public class AllRounder extends CricketPlayer implements IPlayerStatistics{

	private Long runs;
	private Integer noOfWickets;
	
	//Getters and Setters
	public Long getRuns() {
		return runs;
	}
	public void setRuns(Long runs) {
		this.runs = runs;
	}
	public Integer getNoOfWickets() {
		return noOfWickets;
	}
	public void setNoOfWickets(Integer noOfWickets) {
		this.noOfWickets= noOfWickets;
	}
	
	//Constructor (<Super args>, Long, Integer)
	public AllRounder(String name, String teamName, Integer noOfMatches, Long runs, Integer noOfWickets) {
		super(name, teamName, noOfMatches);
		this.runs = runs;
		this.noOfWickets = noOfWickets;
	}
	
	
	@Override
	public void displayPlayerStatistics() {
		
		// TODO Auto-generated method stub
		
		System.out.println("Player name : " + this.getName());
		System.out.println("Team name : " + this.getTeamName());
		System.out.println("No of matches : " + this.getNoOfMatches());
		System.out.println("Runs scored : " + this.getRuns());
		System.out.println("No of wickets taken : " + this.getNoOfWickets());
	}
	
	
}
