import java.util.StringTokenizer;

public class TitleCaseThread implements Runnable{
	
	private String outcome;
	private String modifiedSummary;
	
	//Constructor (String)
	public TitleCaseThread(String outcome) {
		super();
		this.outcome = outcome;
	}

	//Empty Constructor
	public TitleCaseThread() {
		super();
	}

	public String getOutcome() {
		return outcome;
	}

	public void setOutcome(String outcome) {
		this.outcome = outcome;
	}

	//Returns the modified summary
	public String getModifiedSummary() {
		return modifiedSummary;
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		
		StringTokenizer st = new StringTokenizer(outcome, " ");
		//Initializing modified summary
		modifiedSummary = new String();
		
		while(st.hasMoreTokens()){
			
			String temp = st.nextToken();
			//String buffer is thread safe as concatenation is synced
			StringBuffer moded = new StringBuffer();
			moded.append(temp.substring(0,1).toUpperCase());
			moded.append(temp.substring(1));
			
			if(st.hasMoreTokens())
				modifiedSummary = modifiedSummary + moded + " " ;
			else
				modifiedSummary = modifiedSummary + moded;
		}
		
	}
	

	
	

}
