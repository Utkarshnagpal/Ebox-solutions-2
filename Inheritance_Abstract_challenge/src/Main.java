import java.util.Scanner;
import java.io.IOException;

class Main { 

public static void main(String args[]) throws IOException  { 

    //fill the code
    Scanner sc = new Scanner(System.in);
    
    
    System.out.println("Enter the name of the user :");
    String name = sc.nextLine();
    System.out.println("Enter the username :");
    String username = sc.nextLine();
    System.out.println("Enter the password :");
    String password = sc.nextLine();
    System.out.println("Enter the email :");
    String email = sc.nextLine();
    System.out.println("Enter the phonenumber :");   
    String phonenumber = sc.nextLine();
    System.out.println("Enter the type of user");
    System.out.println("1. Customer\n2. Seller");
    String customer = sc.nextLine();
    
    if(customer.equals("1")){
    System.out.println("Enter the delivery address :");
    String del = sc.nextLine();
    System.out.println("Enter the bonus points :");   
    String bonus = sc.nextLine();
    System.out.println("Enter the credit details :");   
    String credit = sc.nextLine();

    Customer c = new Customer(name, username, password, email, phonenumber, del, bonus, credit);
    c.displayDetails();

    }
        if(customer.equals("2")){
    System.out.println("Enter the description :");
    String description = sc.nextLine();
    System.out.println("Enter the rating :");   
    double rating = Double.parseDouble(sc.nextLine());


    Seller s = new Seller(name, username, password, email, phonenumber, description, rating);
    s.displayDetails();

    }
    

}

 
}

