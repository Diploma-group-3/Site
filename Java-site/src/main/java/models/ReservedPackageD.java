package models;

public class ReservedPackageD {

	private String packageId;
	private String userId;
	private String companyId;
	private String payment;
	private String arrivalTime;
	private double ratingUser;
	
	public ReservedPackageD() {}
	
	public ReservedPackageD(String packageId, String userId, String companyId, String payment, String arrivalTime,
			double ratingUser) {
		super();
		this.packageId = packageId;
		this.userId = userId;
		this.companyId = companyId;
		this.payment = payment;
		this.arrivalTime = arrivalTime;
		this.ratingUser = ratingUser;
	}

	public String getPackageId() {
		return packageId;
	}


	public void setPackageId(String packageId) {
		this.packageId = packageId;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getCompanyId() {
		return companyId;
	}


	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}


	public String getPayment() {
		return payment;
	}


	public void setPayment(String payment) {
		this.payment = payment;
	}


	public String getArrivalTime() {
		return arrivalTime;
	}


	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	public double getRatingUser() {
		return ratingUser;
	}

	public void setRatingUser(double ratingUser) {
		this.ratingUser = ratingUser;
	}
}
