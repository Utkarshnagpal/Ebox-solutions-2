
public abstract class KabaddiPlayer {

	protected String name;
	protected String teamName;
	protected Long noOfMatches;
	
	//Constructor (String X2, Long)
	public KabaddiPlayer(String name, String teamName, Long noOfMatches) {
		super();
		this.name = name;
		this.teamName = teamName;
		this.noOfMatches = noOfMatches;
	}

	//Getters and Setters
	public KabaddiPlayer() {
		super();
	}

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

	public Long getNoOfMatches() {
		return noOfMatches;
	}

	public void setNoOfMatches(Long noOfMatches) {
		this.noOfMatches = noOfMatches;
	}
	
	
	
}
