
public class Player implements IPlayerStatistics{

	private String name;
	private String teamName;
	private Integer noOfMatches;
	private Long totalRunsScored;
	private Integer noOfWicketsTaken;
	
	//Getters and Setters
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public Integer getNoOfMatches() {
		return noOfMatches;
	}
	public void setNoOfMatches(Integer noOfMatches) {
		this.noOfMatches = noOfMatches;
	}
	public Long getTotalRunsScored() {
		return totalRunsScored;
	}
	public void setTotalRunsScored(Long totalRunsScored) {
		this.totalRunsScored = totalRunsScored;
	}
	public Integer getNoOfWicketsTaken() {
		return noOfWicketsTaken;
	}
	public void setNoOfWicketsTaken(Integer noOfWicketsTaken) {
		this.noOfWicketsTaken = noOfWicketsTaken;
	}
	
	//Constructor (String X2, integer, long, integer)
	public Player(String name, String teamName, Integer noOfMatches, Long totalRunsScored, Integer noOfWicketsTaken) {
		super();
		this.name = name;
		this.teamName = teamName;
		this.noOfMatches = noOfMatches;
		this.totalRunsScored = totalRunsScored;
		this.noOfWicketsTaken = noOfWicketsTaken;
	}
	
	
	@Override
	public void displayPlayerStatistics() {
		
		// TODO Auto-generated method stub
		System.out.println("Player Details");
		System.out.println("Player name : " + name);
		System.out.println("Team name : " + teamName);
		System.out.println("No of matches : " + noOfMatches);
		System.out.println("Total runsscored : " + totalRunsScored);
		System.out.println("No of wickets taken : " + noOfWicketsTaken);
		
	}
	

	
	
}
