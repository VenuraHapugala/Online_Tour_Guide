package verification.tourist;

public class Review {
	private String fullName;
	private String review;
	
	public Review(String fullName, String review) {
		super();
		this.fullName = fullName;
		this.review = review;
	}
	
	public String getFullName() {
		return fullName;
	}

	public String getReview() {
		return review;
	}
	
}
