package Now.DTO;

public class memberDTO {


private String id;
private String nickname;
private String pw;
private String pwcheck;
private String email;
private String reason;
private String talk;


public String getTalk() {
	return talk;
}
public void setTalk(String talk) {
	this.talk = talk;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getNickname() {
	return nickname;
}
public void setNickname(String nickname) {
	this.nickname = nickname;
}
public String getPw() {
	return pw;
}
public void setPw(String pw) {
	this.pw = pw;
}
public String getPwcheck() {
	return pwcheck;
}
public void setPwcheck(String pwcheck) {
	this.pwcheck = pwcheck;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getReason() {
	return reason;
}
public void setReason(String reason) {
	this.reason = reason;
}


}
