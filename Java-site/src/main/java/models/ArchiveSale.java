package models;

import java.time.Instant;

import services.SortDocumentsInterface;

public class ArchiveSale implements SortDocumentsInterface{
	
	private String namePackage;
	private String description;
	private String price;
	private Instant dataTime;
	private String status;
	private String userId;
	private String companyId;
	
	public ArchiveSale() {}
	
	public ArchiveSale(String namePackage, String description, String price, Instant dataTime, String status,
			String userId, String companyId) {
		super();
		this.namePackage = namePackage;
		this.description = description;
		this.price = price;
		this.dataTime = dataTime;
		this.status = status;
		this.userId = userId;
		this.companyId = companyId;
	}

	public String getNamePackage() {
		return namePackage;
	}

	public void setNamePackage(String namePackage) {
		this.namePackage = namePackage;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Instant getDataTime() {
		return dataTime;
	}

	public void setDataTime(Instant dataTime) {
		this.dataTime = dataTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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
}
