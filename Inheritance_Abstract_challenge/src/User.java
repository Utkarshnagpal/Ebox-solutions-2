  public class User {
    
	//fill the code
    protected String name;
    protected String username;
    protected String password;
    protected String email;
    protected String phonenumber;


     //Getters and Setters
    public void setName(String name){
            
        this.name = name;
    }
        
    public String getName(){
        return this.name;
    }
    public void setUsername(String username){
            
        this.username = username;
    }
        
    public String getUsername(){
        return this.username;
    }
    
    public void setPassword(String password){
            
        this.password = password;
    }
        
    public String getPassword(){
        return this.password;
    }
    public void setEmail(String email){
            
        this.email = email;
    }
        
    public String getEmail(){
        return this.email;
    }
    public void setPhonenumber(String phonenumber){
            
        this.phonenumber = phonenumber;
    }
        
    public String getPhonenumber(){
        return this.phonenumber;
    }        
	
    
    public User() {
		super();
	}

	public User(String name, String username, String password, String email, String phonenumber) {
		super();
		this.name = name;
		this.username = username;
		this.password = password;
		this.email = email;
		this.phonenumber = phonenumber;
	}
	public void displayDetails()
	{
		//fill the code
                System.out.println("Customer Details");
    	System.out.println("Name : " + this.name);
		System.out.println("Username : " + this.username);
		System.out.println("Password : " + this.password);
		System.out.println("Email : " + this.email);
		System.out.println("Phonenumber : " + this.phonenumber);

        
		
	}

}


