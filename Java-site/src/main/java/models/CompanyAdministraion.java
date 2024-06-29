package models;

public class CompanyAdministraion {

	private String name;
	private String email;
	private String confirmEmail;
	private String phone;
	private String password;
	private String photo;
	private String conpanyId;
	
	public CompanyAdministraion() {}
	
	public CompanyAdministraion(String name, String email, String confirmEmail, String phone, String password,
			String photo, String conpanyId) {
		super();
		this.name = name;
		this.email = email;
		this.confirmEmail = confirmEmail;
		this.phone = phone;
		this.password = password;
		this.photo = photo;
		this.conpanyId = conpanyId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getConfirmEmail() {
		return confirmEmail;
	}

	public void setConfirmEmail(String confirmEmail) {
		this.confirmEmail = confirmEmail;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getConpanyId() {
		return conpanyId;
	}

	public void setConpanyId(String conpanyId) {
		this.conpanyId = conpanyId;
	}
}
