import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) throws ParseException {
		// TODO Auto-generated method stub

		Scanner sc = new Scanner(System.in);
		
		String date = sc.nextLine();
		
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		d = sdf.parse(date);
		
		Calendar c = Calendar.getInstance();
		c.setTimeInMillis(d.getTime());
		
		c.add(Calendar.DATE, -5);
		
		d = c.getTime();
		
		System.out.println(sdf.format(d));
		
		SimpleDateFormat sdf1 = new SimpleDateFormat("EEEEE");
		
		System.out.println(sdf1.format(d));
		
		c.add(Calendar.DATE, 10);
		
		d = c.getTime();
		
		System.out.println(sdf.format(d));
		
		System.out.println(sdf1.format(d));
		
		
		sc.close();
		
	}

}
