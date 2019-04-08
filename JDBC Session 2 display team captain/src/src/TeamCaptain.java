package src;


  


public class TeamCaptain {
    
    private Long captainId;
    private String captainName;

public TeamCaptain(){}

    public TeamCaptain(Long captainId, String captainName) {
        this.captainId = captainId;
        this.captainName = captainName;
    }

    public Long getCaptainId() {
        return captainId;
    }

    public void setCaptainId(Long captainId) {
        this.captainId = captainId;
    }

    public String getCaptainName() {
        return captainName;
    }

    public void setCaptainName(String captainName) {
        this.captainName = captainName;
    }
   
    
    @Override
    public String toString() {
        return   captainName ;
    }
    
}
