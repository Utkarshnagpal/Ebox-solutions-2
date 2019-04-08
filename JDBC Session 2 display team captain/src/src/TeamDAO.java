package src;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

public class TeamDAO {
    
    
    
    public List<Team> getAllTeams() throws ClassNotFoundException, SQLException{
        ResourceBundle rb= ResourceBundle.getBundle("mysql");
        
        String url=rb.getString("db.url");
        String user=rb.getString("db.username");
        String pass=rb.getString("db.password");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,user,pass);
    
        //fill your code   
        String query = "select id,name,captain from team order by name";
        
        Statement st = con.createStatement();
        
        ResultSet rs = st.executeQuery(query);
        
        ArrayList<Team> teamList = new ArrayList<Team>();
        
        while(rs.next()){
        	 Long teamId;
        	 String name;
        	 TeamCaptain teamCaptain;
        	 
        	 teamId = (long) rs.getInt(1);
        	 name = rs.getString(2);
        	 TeamCaptainDAO tcd = new TeamCaptainDAO();
        	 teamCaptain = tcd.getTeamCaptainByID((long)rs.getInt(3));
        	 
        	 teamList.add(new Team(teamId, name, teamCaptain));
        	  
        }
        return teamList;
    }
}
