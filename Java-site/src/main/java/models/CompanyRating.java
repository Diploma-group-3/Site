package models;

import java.time.Instant;


public class CompanyRating {
	
	private double rating;
	private Instant dataTime; 
	private String companyId;
	
	public CompanyRating() {}
	
	public CompanyRating(double rating, Instant dataTime, String companyId) {
		super();
		this.rating = rating;
		this.dataTime = dataTime;
		this.companyId = companyId;
	}

	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}

	public Instant getDataTime() {
        return dataTime;
    }
	
	public void setDataTime(Instant dataTime) {
		this.dataTime = dataTime;
	}

	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
}
