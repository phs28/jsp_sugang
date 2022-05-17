package vo;

public class SuGangVO {
	private String id;
	private String stnum;
	private String grade;
	private String subject1;
	private String subject2;
	private String subject3;
	private String subject4;
	private String subject5;
	

	public SuGangVO(String stnum, String grade, String subject1, String subject2, String subject3,
			String subject4, String subject5) {
		this.stnum = stnum;
		this.grade = grade;
		this.subject1 = subject1;
		this.subject2 = subject2;
		this.subject3 = subject3;
		this.subject4 = subject4;
		this.subject5 = subject5;
	}

	public SuGangVO(String id, String stnum, String grade, String subject1, String subject2, String subject3,
			String subject4, String subject5) {
		this.id = id;
		this.stnum = stnum;
		this.grade = grade;
		this.subject1 = subject1;
		this.subject2 = subject2;
		this.subject3 = subject3;
		this.subject4 = subject4;
		this.subject5 = subject5;
	}
	
	public String getSubject1() {
		return subject1;
	}

	public void setSubject1(String subject1) {
		this.subject1 = subject1;
	}

	public String getSubject2() {
		return subject2;
	}

	public void setSubject2(String subject2) {
		this.subject2 = subject2;
	}

	public String getSubject3() {
		return subject3;
	}

	public void setSubject3(String subject3) {
		this.subject3 = subject3;
	}

	public String getSubject4() {
		return subject4;
	}

	public void setSubject4(String subject4) {
		this.subject4 = subject4;
	}

	public String getSubject5() {
		return subject5;
	}

	public void setSubject5(String subject5) {
		this.subject5 = subject5;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStnum() {
		return stnum;
	}

	public void setStnum(String stnum) {
		this.stnum = stnum;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

}
