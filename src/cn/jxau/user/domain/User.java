package cn.jxau.user.domain;

public class User {
	private String id;
	private String name;
	private String school;
	private String email;
	private String password;
	private String repassword;
	public User() {
		super();
	}
	public User(String id, String name, String school, String email,
			String password) {
		super();
		this.id = id;
		this.name = name;
		this.school = school;
		this.email = email;
		this.password = password;
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
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", school=" + school
				+ ", email=" + email + ", password=" + password + "]";
	}
	
}
