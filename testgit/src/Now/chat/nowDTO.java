package Now.chat;

public class nowDTO {
	private String nickname;
	private String pw;
	private String email;
	private String friend_nickname;
	private String friend_email;
	
	
	
	public String getFriend_nickname() {
		return friend_nickname;
	}
	public void setFriend_nickname(String friend_nickname) {
		this.friend_nickname = friend_nickname;
	}
	public String getFriend_email() {
		return friend_email;
	}
	public void setFriend_email(String friend_email) {
		this.friend_email = friend_email;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	
	
}
