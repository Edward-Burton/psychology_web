package cn.xhu.softwareengineering.bean;

public class PsychoUser {
	private int userId;
	private String userNickname;
	private String userPassword;
	private String userGender;
	private String userTitle;
	private String userIntro;
	private String headPortrait;
	private String phoneNumber;
	private String userMail;
	
	public PsychoUser() {
		super();

	}

	public PsychoUser(int userId, String userNickname, String userPassword, String userGender, String userTitle,
			String userIntro, String headPortrait, String phoneNumber, String userMail) {
		super();
		this.userId = userId;
		this.userNickname = userNickname;
		this.userPassword = userPassword;
		this.userGender = userGender;
		this.userTitle = userTitle;
		this.userIntro = userIntro;
		this.headPortrait = headPortrait;
		this.phoneNumber = phoneNumber;
		this.userMail = userMail;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserTitle() {
		return userTitle;
	}

	public void setUserTitle(String userTitle) {
		this.userTitle = userTitle;
	}

	public String getUserIntro() {
		return userIntro;
	}

	public void setUserIntro(String userIntro) {
		this.userIntro = userIntro;
	}

	public String getHeadPortrait() {
		return headPortrait;
	}

	public void setHeadPortrait(String headPortrait) {
		this.headPortrait = headPortrait;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	
	
	
}
