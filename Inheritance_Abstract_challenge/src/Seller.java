public class Seller extends User 
{
		private static final String String = null;
		//fill the code
        private String description;
        private Double rating;
		
        
        //Getters and Setters
        public void setDescription(String description){
            
            this.description = description;
        }
        
        public String getDescription(){
            return this.description;
        }
        public void setRating(Double rating){
            
            this.rating = rating;
        }
        
        public Double getRating(){
            return this.rating;
        }
        
        public Seller() {
			super();
		}

		public Seller(String name, String username, String password, String email, String phonenumber, String description, Double rating){
                	super(name, username, password, email, phonenumber);
                	this.description = description;
                	this.rating = rating;
        }
        
		public void displayDetails()
		{
			
			//fill the code
        System.out.println("Seller Details");
		System.out.println("Name : " + this.name);
		System.out.println("Username : " + this.username);
		System.out.println("Password : " + this.password);
		System.out.println("Email : " + this.email);
		System.out.println("Phonenumber : " + this.phonenumber);
		System.out.println("Description : " + this.description);
		System.out.println("Rating : " + this.rating);
            

		}
}

