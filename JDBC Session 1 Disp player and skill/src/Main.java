

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;

import src.PlayerDAO;

public class Main {
    public static void main(String ags[])throws Exception{
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("List of all player and their skill"); 
        System.out.println(String.format("%-15s%-30s%-30s%-15s","Id", "Name", "Country","Skill"));
        List<src.Player> playerList = null;
        PlayerDAO playerIns = new PlayerDAO();
      
         //fill your code
        playerList = playerIns.getAllPlayers();
        
        for(src.Player p :playerList){
        	System.out.println(p);
        }
    }
}
