import java.util.*;
class Product {
    Long id;
    String productName;
    String supplierName;
}

class Main {
public static void main(String args[]) {
	Scanner sc = new Scanner(System.in);
	Long l;
	String pName, sName;
	System.out.println("Enter the product id");
	l = sc.nextLong();
	sc.nextLine();
	System.out.println("Enter the product name");
	pName = sc.nextLine();
	System.out.println("Enter the supplier name");
	sName = sc.nextLine();
	Product product = new Product();
	product.id = l;
	product.productName = pName;
	product.supplierName = sName;
	System.out.println("Product Id is "+product.id);
	System.out.println("Product Name is "+product.productName);
	System.out.println("Supplier Name is "+product.supplierName);
}
}