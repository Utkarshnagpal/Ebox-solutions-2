
public class CricketPlayer {

	private String name;
	private String teamName;
	private Integer noOfMatches;
	
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
	
	//Constructor (String X2, Integer)
	public CricketPlayer(String name, String teamName, Integer noOfMatches) {
		super();
		this.name = name;
		this.teamName = teamName;
		this.noOfMatches = noOfMatches;
	}
	//Empty Constructor
	public CricketPlayer() {
		super();
	}
	
	
	
}
