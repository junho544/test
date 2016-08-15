package Now.chat;

public class nowDTO {
	private String nickname;
	private String pw;
	private String email;
	private String friend_nickname;
	private String friend_email;
	private String checkinvite;
	private String id;
	private String image;
	private String friend_image;
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getFriend_image() {
		return friend_image;
	}
	public void setFriend_image(String friend_image) {
		this.friend_image = friend_image;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFriend_id() {
		return friend_id;
	}
	public void setFriend_id(String friend_id) {
		this.friend_id = friend_id;
	}
	private String friend_id;
	
	public String getCheckinvite() {
		return checkinvite;
	}
	public void setCheckinvite(String checkinvite) {
		this.checkinvite = checkinvite;
	}
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
