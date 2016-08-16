package Now.DTO;

import java.sql.Timestamp;

public class Boast_commentDTO {


	private String nickname;
	private String boast_comment;
	private Timestamp reg_date;

	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getBoast_comment() {
		return boast_comment;
	}
	public void setBoast_comment(String boast_comment) {
		this.boast_comment = boast_comment;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	
	
}
