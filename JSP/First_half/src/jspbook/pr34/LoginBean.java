package jspbook.pr34;

public class LoginBean {
	
	// 멤버변수
	String id;
	String pw;
	Integer gender;
	String email;
	String birth;
	
	// getter, setter
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
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	// 메소드
	public boolean isGrownUp()
	{
		String[] dArray = birth.split("-");
		int year = 0, i;
		for(i = 0; i < dArray.length-1; i++)
		{
			year += Integer.parseInt(dArray[i]) * 10;
		}
		year = Integer.parseInt(dArray[i-1]);
		if (2019 - year >= 20)
			return true;
		else
			return false;
	}
}
