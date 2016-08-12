package Now.DTO;

import java.sql.Timestamp;

public class Boast_commentDTO {

	private int boast_num;
	private String nick;
	private String boast_comment;
	private Timestamp reg_date;
	public int getBoast_num() {
		return boast_num;
	}
	public void setBoast_num(int boast_num) {
		this.boast_num = boast_num;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
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
