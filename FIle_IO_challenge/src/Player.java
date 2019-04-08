
public class Player {
	
	private String name;
	private String team;
	private String skill;
	
	//Constructor (String X3)
	public Player(String name, String team, String skill) {
		super();
		this.name = name;
		this.team = team;
		this.skill = skill;
	}

	//Empty COnstructor
	public Player() {
		super();
	}

	//Getters and Setters
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}
}
