import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;



public class UserMainCode {
	
	public static void displayDate(String date) throws ParseException{
		
		int monthsToAdd = -20;
		
		Date dt = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		dt = sdf.parse(date);
		
		Calendar c1 = Calendar.getInstance();
		c1.setTime(dt);
		
		Calendar c2 = Calendar.getInstance();
		c2 = c1;
		
		c1.add(Calendar.MONTH, monthsToAdd);
		
		Date dt2 = c1.getTime();
		
		String str = sdf.format(dt2);
		
		System.out.println("20 months before " + date + " will be " + str);
		
	}

	
	public static void displayYear(int year){
		if(year%4 == 0){
			if(year%100 == 0){
				if(year%400 == 0){
					System.out.println(year + " is leap year");
					System.exit(0);
				}
				else{
					System.out.println(year + " is not leap year");
					System.exit(0);
				}
			}
			System.out.println(year + " is leap year");
			System.exit(0);
		}
		else{
			System.out.println(year + " is not leap year");
			System.exit(0);
		}
			
	}
}
