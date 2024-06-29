package models;

public class User {
	
	private String id;
	private String name;
	private String locaion;
	private String email;
	private int confirm;
	private String phone;
	private String pasww;
	private String avatar;
	
	public User(String name, String locaion, String email, int confirm, String phone, String pasww,
			String avatar) {
		super();
		this.name = name;
		this.locaion = locaion;
		this.email = email;
		this.confirm = confirm;
		this.phone = phone;
		this.pasww = pasww;
		this.avatar = avatar;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocaion() {
		return locaion;
	}

	public void setLocaion(String locaion) {
		this.locaion = locaion;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getConfirm() {
		return confirm;
	}

	public void setConfirm(int confirm) {
		this.confirm = confirm;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPasww() {
		return pasww;
	}

	public void setPasww(String pasww) {
		this.pasww = pasww;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
}
