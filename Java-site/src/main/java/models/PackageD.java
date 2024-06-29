package models;

public class PackageD {
	
	private String name;
	private String description;
	private String price;
	private String creationTime;
	private String activationTime;
	private String actionTime;
	private String photo;
	private String companyId;
	
	public PackageD() {}
	
	public PackageD(String name, String description, String price, String creationTime, String activationTime,
			String actionTime, String photo, String companyId) {
		super();
		this.name = name;
		this.description = description;
		this.price = price;
		this.creationTime = creationTime;
		this.activationTime = activationTime;
		this.actionTime = actionTime;
		this.photo = photo;
		this.companyId = companyId;
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
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCreationTime() {
		return creationTime;
	}
	public void setCreationTime(String creationTime) {
		this.creationTime = creationTime;
	}
	public String getActivationTime() {
		return activationTime;
	}
	public void setActivationTime(String activationTime) {
		this.activationTime = activationTime;
	}
	public String getActionTime() {
		return actionTime;
	}
	public void setActionTime(String actionTime) {
		this.actionTime = actionTime;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
}
