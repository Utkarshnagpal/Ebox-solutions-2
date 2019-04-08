/*import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		//Threads - Challenge
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Enter the number of lines in the outcome");
		int sentences = Integer.parseInt(sc.nextLine());
		
		String []sents = new String[sentences];
		
		for(int i = 0; i < sentences; i++)
			sents[i] = sc.nextLine();
		
		String []modedSum = new String[sentences];
		
		//Title casing sentences one by one
		TitleCaseThread []tct = new TitleCaseThread[sentences];
		
		for(int i = 0; i < sentences; i++){
			
			tct[i] = new TitleCaseThread(sents[i]);
			if(i>0)
				tct[i - 1].
			tct[i].run();
			
			modedSum[i] = tct[i].getModifiedSummary();
			
		}
		
		for(int i = 0; i < sentences; i++){
			
			System.out.println("Sentence " + (i+1) + " : " + modedSum[i]);
			
		}
	
		sc.close();
	
	}

}
*/


interface A{
public void method();
}
class One{
public void method(){
System.out.println("Class One method");
}
}
class Two extends One implements A{
public void method(){
System.out.println("Class Two method");
}
}
public class Main extends Two{
public static void main(String[] args){
A a = new Two();
a.method();
}
}