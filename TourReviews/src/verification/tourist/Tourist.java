package verification.tourist;

/*public class Tourist {
	private String  tourID;
	private String  name;
	private String  email;
	private String  phone;
	private String  username;
	private String  password;
	public Tourist(String tourID, String name, String email, String phone, String username, String password) {
		
		this.tourID = tourID;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.username = username;
		this.password = password;
	}
	public String getTourID() {
		return tourID;
	}

	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getUsername() {
		return username;
	}
	
	public String getPassword() {
		return password;
	}

}
*/



public class Tourist{
	private String tID;
	private String fullName;
	private String contact;
	private String tourName;
	private String days;
	private String review;
	public Tourist(String tID, String fullName, String contact, String tourName, String days,
			String review) {
		super();
		this.tID = tID;
		this.fullName = fullName;
		this.contact = contact;
		this.tourName = tourName;
		this.days = days;
		this.review = review;
	}
	public String gettID() {
		return tID;
	}

	public String getFullName() {
		return fullName;
	}

	public String getContact() {
		return contact;
	}
	

	public String getTourName() {
		return tourName;
	}
	
	public String getDays() {
		return days;
	}
	
	public String getReview() {
		return review;
	}
	
}