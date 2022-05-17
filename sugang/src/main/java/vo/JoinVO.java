package vo;

public class JoinVO {
	private String name;
	private String id;
	private String pw;
	private String sex;
	private String age;
	private String phone;
	
	public JoinVO(String name, String id, String pw, String sex, String age, String phone) {
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.sex = sex;
		this.age = age;
		this.phone = phone;
	}

	public JoinVO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}
	
	
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
