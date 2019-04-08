import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.util.Date;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) throws ParseException {
		// TODO Auto-generated method stub
		
		
/*		
		//Date API sess2/Calculate Age
		Scanner sc = new Scanner(System.in);
		
		String date1 = sc.nextLine();
		String date2 = sc.nextLine();
		
		sc.close();
		
		String[] dateArray1 = date1.split("-");
		LocalDate birthdate = LocalDate.of(Integer.parseInt(dateArray1[0]), Integer.parseInt(dateArray1[1]), Integer.parseInt(dateArray1[2]));
		
		String[] dateArray2 = date2.split("-");
		LocalDate today = LocalDate.of(Integer.parseInt(dateArray2[0]), Integer.parseInt(dateArray2[1]), Integer.parseInt(dateArray2[2]));  
		 
		Period p = Period.between(birthdate, today);
		 
		//Now access the values as below
		System.out.println("I am  " + p.getYears() + " years, " + p.getMonths() + " months and " + p.getDays() + " days old.");

*/
		
		
		Scanner sc = new Scanner(System.in);
		
/*		System.out.println("Enter the year");
		
		int date = Integer.parseInt(sc.nextLine());
		UserMainCode.displayYear(date);
		*/
		String str = sc.nextLine();
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		Date dt = sdf.parse(str);
		sc.close();
		

	}

}
