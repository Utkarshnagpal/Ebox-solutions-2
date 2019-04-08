package src;

  

public class Team {
    
    private Long teamId;
    private String name;
    private TeamCaptain teamCaptain;
    

    public Team() {
    }
    
    public Team(Long teamId,String name ,TeamCaptain teamCaptain) {
        this.teamId = teamId;
        this.name = name;          
        this.teamCaptain = teamCaptain;
    }
    
    public Long getTeamId() {
        return teamId;
    }

    public void setTeamId(Long teamId) {
        this.teamId = teamId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

  
    public TeamCaptain getTeamCaptain() {
        return teamCaptain;
    }

    public void setTeamCaptain(TeamCaptain teamCaptain) {
        this.teamCaptain = teamCaptain;
    }
    
    @Override
    public String toString() {
        
        return String.format("%-30s%-30s",name ,teamCaptain );
    }
    
}
