import java.util.List;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class FileUtility {

	void writeData(List<Player> playerList) throws IOException{
		
		//File writer object for writing into an external file in memory
		FileWriter out = new FileWriter("player.csv");
		//Creating buffered writer for easier operation (better for more data, and lesser ops)
		BufferedWriter bw = new BufferedWriter(out);

		//Writing player records "per" line in a csv file
		for(Player p :playerList){
			bw.write(p.getName() + "," + p.getTeam() + "," + p.getSkill());
			bw.newLine();
		}
			
		//Closing resources
		bw.close();
		out.close();
		
	}
}
