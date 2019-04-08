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

public class PlayerDAO {
    
    
    
    public List<Player> getAllPlayers() throws ClassNotFoundException, SQLException{
        ResourceBundle rb= ResourceBundle.getBundle("mysql");
        
        String url=rb.getString("db.url");
        String user=rb.getString("db.username");
        String pass=rb.getString("db.password");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,user,pass);
      
        //fill your code
        PreparedStatement pst = con.prepareStatement("Select * from player order by name");
        ResultSet rs = pst.executeQuery();
        
        SkillDAO sd = new SkillDAO();
        
        ArrayList<Player> playerList = new ArrayList<Player>();
        
        while(rs.next()){
        	int id = rs.getInt(1);
        	 String name = rs.getString(2);
        	 String country = rs.getString(3);
        	 int skillID = rs.getInt(4);
        	 
        	 Skill skill = sd.getSkillByID((long) skillID);

        	 playerList.add(new Player((long)id, name, country, skill));
        }

        return playerList;

    }
    
    
}
