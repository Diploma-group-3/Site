package models;

import java.time.Instant;

import services.SortDocumentsInterface;

public class UserRating  implements SortDocumentsInterface {

	private double rating;
	private Instant dataTime; 
	private String userId;
	
	public UserRating() {}

	public UserRating(double rating, Instant dataTime, String userId) {
		super();
		this.rating = rating;
		this.dataTime = dataTime;
		this.userId = userId;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	@Override
    public Instant getDataTime() {
        return dataTime;
    }

	public void setDataTime(Instant dataTime) {
		this.dataTime = dataTime;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
}
