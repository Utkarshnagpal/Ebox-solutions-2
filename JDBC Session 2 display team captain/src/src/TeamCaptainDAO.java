package src;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;

public class TeamCaptainDAO {
    
    public TeamCaptain getTeamCaptainByID(Long id) throws ClassNotFoundException, SQLException {
        ResourceBundle rb= ResourceBundle.getBundle("mysql");
        
        String url=rb.getString("db.url");
        String user=rb.getString("db.username");
        String pass=rb.getString("db.password");
          
        Connection con = DriverManager.getConnection(url,user,pass);
      
        //fill your code
        
        TeamCaptain tc = null;
        String query = "select name from player where id = " + String.valueOf(id);
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery(query);
        rs.next();
        
        tc = new TeamCaptain(id, rs.getString(1));
        return tc;

    }
    
}
