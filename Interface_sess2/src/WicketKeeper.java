
public class WicketKeeper extends CricketPlayer implements IPlayerStatistics{

	private Integer noOfCatches;
	private Integer noOfStumpings;
	private Long runs;
	private Integer noOfDismissals;
	
	//Getters and Setters
	public Integer getNoOfCatches() {
		return noOfCatches;
	}
	public void setNoOfCatches(Integer noOfCatches) {
		this.noOfCatches = noOfCatches;
	}
	public Integer getNoOfStumpings() {
		return noOfStumpings;
	}
	public void setNoOfStumpings(Integer noOfStumpings) {
		this.noOfStumpings = noOfStumpings;
	}
	public Long getRuns() {
		return runs;
	}
	public void setRuns(Long runs) {
		this.runs = runs;
	}
	public Integer getNoOfDismissals() {
		return noOfDismissals;
	}
	public void setNoOfDismissals(Integer noOfDismissals) {
		this.noOfDismissals = noOfDismissals;
	}

	
	//Constructor (<super args>, Integer X2, Long, Integer)
	public WicketKeeper(String name, String teamName, Integer noOfMatches, Integer noOfCatches, Integer noOfStumpings,
		Long runs, Integer noOfDismissals) {
	super(name, teamName, noOfMatches);
	this.noOfCatches = noOfCatches;
	this.noOfStumpings = noOfStumpings;
	this.runs = runs;
	this.noOfDismissals = noOfDismissals;	
	
	}
	//4 arg Constructor
	public WicketKeeper(Integer noOfCatches, Integer noOfStumpings, Long runs, Integer noOfDismissals) {
		super();
		this.noOfCatches = noOfCatches;
		this.noOfStumpings = noOfStumpings;
		this.runs = runs;
		this.noOfDismissals = noOfDismissals;
	}
	
	
	@Override
	public void displayPlayerStatistics() {
		
		// TODO Auto-generated method stub
		
		System.out.println("Player name : " + this.getName());
		System.out.println("Team name : " + this.getTeamName());
		System.out.println("No of matches : " + this.getNoOfMatches());
		System.out.println("No of catches taken : " + this.getNoOfCatches());
		System.out.println("No of stumpings : " + this.getNoOfStumpings());
		System.out.println("No of dismissals : " + this.getNoOfDismissals());
		System.out.println("Runs scored : " + this.getRuns());

	}
}