package board.member.db;

import java.sql.Timestamp;

public class MemberDto {
	
	private String id, pw, name, nickname, phone1, phone2, phone3, email, gender, birthY, birthM, birthD;
	private Timestamp rDate;
	
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthY() {
		return birthY;
	}
	public void setBirthY(String birthY) {
		this.birthY = birthY;
	}
	public String getBirthM() {
		return birthM;
	}
	public void setBirthM(String birthM) {
		this.birthM = birthM;
	}
	public String getBirthD() {
		return birthD;
	}
	public void setBirthD(String birthD) {
		this.birthD = birthD;
	}
	public Timestamp getrDate() {
		return rDate;
	}
	public void setrDate(Timestamp rDate) {
		this.rDate = rDate;
	}
	
	
}
