public class Customer extends User {

		//fill the code
        private String deliveryAddress;
        private String bonusPoints;
        private String creditDetials;

         //Getters and Setters
        public void setDeliveryAddress(String deliveryAddress){
            
            this.deliveryAddress = deliveryAddress;
        }
        
        public String getDeliveryAddress(){
            return this.deliveryAddress;
        }
        public void setBonusPoints(String bonusPoints){
            
            this.bonusPoints = bonusPoints;
        }
        
        public String getBonusPoints(){
            return this.bonusPoints;
        }
        public void setCreditDetials(String creditDetials){
            
            this.creditDetials = creditDetials;
        }
        
        public String getCreditDetialss(){
            return this.creditDetials;
        }
        
        public Customer(String name, String username, String password, String email, String phonenumber, String deliveryAddress, String bonusPoints, String creditDetials){
             super(name, username, password, email, phonenumber);   	
            this.creditDetials = creditDetials;
            this.bonusPoints = bonusPoints;
            this.deliveryAddress = deliveryAddress;
        }
        
		public Customer() {
			super();
		}

		public void displayDetails()
		{
		  	//fill the code
            System.out.println("Customer Details :");
            System.out.println("Name : " + this.name);
            System.out.println("Username : " + this.username);
            System.out.println("Password : " + this.password);
            System.out.println("Email : " + this.email);
			System.out.println("Phonenumber : " + this.phonenumber);
            System.out.println("Delivery address : " + this.creditDetials);
            System.out.println("Bonus points : " + this.bonusPoints);
            System.out.println("Credit details : " + this.deliveryAddress);
		}
}

