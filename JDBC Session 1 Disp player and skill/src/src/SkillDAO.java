package src;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ResourceBundle;

import javax.naming.spi.DirStateFactory.Result;

public class SkillDAO {
    
    public Skill getSkillByID(Long id) throws ClassNotFoundException, SQLException {
        ResourceBundle rb= ResourceBundle.getBundle("mysql");
        
        String url=rb.getString("db.url");
        String user=rb.getString("db.username");
        String pass=rb.getString("db.password");
          Connection con = DriverManager.getConnection(url,user,pass);
     
         //fill your code

          PreparedStatement ps = con.prepareStatement("select * from skill where id= ?");
          
          ps.setFloat(1, id);
          
          ResultSet rs = ps.executeQuery();
          
         while(rs.next()){
        	 int id1 = rs.getInt(1);
        	 String skillName = rs.getString(2);
        	 
        	 return (new Skill((long)id1, skillName));
        	 
        	 
         }
		return null;

    }
    
}
