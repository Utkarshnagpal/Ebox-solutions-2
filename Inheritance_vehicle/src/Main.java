import java.util.Scanner;

public class Main {

	public static void main(String[] args){
		
		
		
		Scanner sc = new Scanner(System.in);
		
		Vehicle v;
        System.out.println("1.Four Wheeler\n2.Two Wheeler\nEnter Vehicle Type:");
        int vt=Integer.parseInt(sc.nextLine());
        
        
        String mk,vn,as;
        String ft=new String();
        int fc,cc1,nod,ch;
        boolean ksa;
        
        switch(vt)
        {
        case 1:
        {
               System.out.println("Vehicle Make:");
               mk=sc.nextLine();
               System.out.println("Vehicle Number:");
               vn=sc.nextLine();
               System.out.println("Fuel Type:\n1.Petrol\n2.Diesel");
               ch=Integer.parseInt(sc.nextLine());
               if(ch==1)
                     ft="Petrol";
               else if(ch==2)
                     ft="Diesel";
               System.out.println("Fuel Capacity:");
               fc=Integer.parseInt(sc.nextLine());
               System.out.println("Engine CC:");
               cc1=Integer.parseInt(sc.nextLine());
               System.out.println("Audio System:");
               as=sc.nextLine();
               System.out.println("Number of Doors:");
               nod=Integer.parseInt(sc.nextLine());
               v=new Vehicle(mk,vn,ft,fc,cc1);
               v.displayMake();
               v.displayBasicInfo();
               v=new FourWheeler(as,nod);
               v.displayDetailInfo();
               break;
        }
        case 2:
        {
               System.out.println("Vehicle Make:");
               mk=sc.nextLine();
               System.out.println("Vehicle Number:");
               vn=sc.nextLine();
               System.out.println("Fuel Type:\n1.Petrol\n2.Diesel");
               ch=Integer.parseInt(sc.nextLine());
               if(ch==1)
                     ft="Petrol";
               else if(ch==2)
                     ft="Diesel";
               System.out.println("Fuel Capacity:");
               fc=Integer.parseInt(sc.nextLine());
               System.out.println("Engine CC:");
               cc1=Integer.parseInt(sc.nextLine());
               System.out.println("Kick Start Available(yes/no):");
               if(sc.nextLine().equalsIgnoreCase("yes"))
                     ksa=true;
               else
                     ksa=false;
               v=new Vehicle(mk,vn,ft,fc,cc1);
               v.displayMake();
               v.displayBasicInfo();
               v=new TwoWheeler(ksa);
               v.displayDetailInfo();
        }
        }

		
	}
}
