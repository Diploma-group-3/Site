package models;

import java.time.Instant;

public class Company {
	
	private String name;
	private String description;
	private String city;
	private String street_hous;
	private String geolocation;
	private long rating;
	private Instant datetime;
	
	public Company() {}

	
	
	public Company(String name, String description, String city, String street_hous, String geolocation, long rating,
			Instant datetime) {
		super();
		this.name = name;
		this.description = description;
		this.city = city;
		this.street_hous = street_hous;
		this.geolocation = geolocation;
		this.rating = rating;
		this.datetime = datetime;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getStreet_hous() {
		return street_hous;
	}

	public void setStreet_hous(String street_hous) {
		this.street_hous = street_hous;
	}

	public String getGeolocation() {
		return geolocation;
	}

	public void setGeolocation(String geolocation) {
		this.geolocation = geolocation;
	}
	
	public long getRating() {
		return rating;
	}

	public void setRating(long rating) {
		this.rating = rating;
	}

	public Instant getDatetime() {
		return datetime;
	}

	public void setDatetime(Instant datetime) {
		this.datetime = datetime;
	}
}
