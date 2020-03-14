package cn.xhu.softwareengineering.bean;

public class PsychoUser {
	private int psychouser_id;
	private String psychouser_nickname;
	private String psychouser_password;
	private String psychouser_gender;
	private String psychouser_title;
	private String psychouser_intro;
	private String psychouser_head_portrait;
	private String psychouser_phone_number;
	private String psychouser_mail;
	
	public PsychoUser() {
		super();

	}

	public PsychoUser(int psychouser_id, String psychouser_nickname, String psychouser_password,
			String psychouser_gender, String psychouser_title, String psychouser_intro, String psychouser_head_portrait,
			String psychouser_phone_number, String psychouser_mail) {
		super();
		this.psychouser_id = psychouser_id;
		this.psychouser_nickname = psychouser_nickname;
		this.psychouser_password = psychouser_password;
		this.psychouser_gender = psychouser_gender;
		this.psychouser_title = psychouser_title;
		this.psychouser_intro = psychouser_intro;
		this.psychouser_head_portrait = psychouser_head_portrait;
		this.psychouser_phone_number = psychouser_phone_number;
		this.psychouser_mail = psychouser_mail;
	}

	public int getPsychouser_id() {
		return psychouser_id;
	}

	public void setPsychouser_id(int psychouser_id) {
		this.psychouser_id = psychouser_id;
	}

	public String getPsychouser_nickname() {
		return psychouser_nickname;
	}

	public void setPsychouser_nickname(String psychouser_nickname) {
		this.psychouser_nickname = psychouser_nickname;
	}

	public String getPsychouser_password() {
		return psychouser_password;
	}

	public void setPsychouser_password(String psychouser_password) {
		this.psychouser_password = psychouser_password;
	}

	public String getPsychouser_gender() {
		return psychouser_gender;
	}

	public void setPsychouser_gender(String psychouser_gender) {
		this.psychouser_gender = psychouser_gender;
	}

	public String getPsychouser_title() {
		return psychouser_title;
	}

	public void setPsychouser_title(String psychouser_title) {
		this.psychouser_title = psychouser_title;
	}

	public String getPsychouser_intro() {
		return psychouser_intro;
	}

	public void setPsychouser_intro(String psychouser_intro) {
		this.psychouser_intro = psychouser_intro;
	}

	public String getPsychouser_head_portrait() {
		return psychouser_head_portrait;
	}

	public void setPsychouser_head_portrait(String psychouser_head_portrait) {
		this.psychouser_head_portrait = psychouser_head_portrait;
	}

	public String getPsychouser_phone_number() {
		return psychouser_phone_number;
	}

	public void setPsychouser_phone_number(String psychouser_phone_number) {
		this.psychouser_phone_number = psychouser_phone_number;
	}

	public String getPsychouser_mail() {
		return psychouser_mail;
	}

	public void setPsychouser_mail(String psychouser_mail) {
		this.psychouser_mail = psychouser_mail;
	}

	
	
}
