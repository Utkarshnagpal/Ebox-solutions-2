import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;
import java.util.ArrayList;
import src.*;

public class Main {
    public static void main(String ags[])throws Exception{
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("List of all team and their captain");
        System.out.println(String.format("%-30s%-30s", "Team Name","Captain"));
        List<Team> teamList = null;
        TeamDAO teamIns = new TeamDAO();
    
        //fill your code
        teamList = teamIns.getAllTeams();
        
        for(Team t :teamList)
        	System.out.println(String.format("%-30s%-30s", t.getName(),t.getTeamCaptain().getCaptainName()));
    }
}
