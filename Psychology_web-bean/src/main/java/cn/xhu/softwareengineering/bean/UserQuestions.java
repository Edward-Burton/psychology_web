package cn.xhu.softwareengineering.bean;

import java.util.Date;

public class UserQuestions {
	private int user_question_id;
	private String user_question_title;
	private String user_question_content;
	private Date user_question_pultime;
	private int question_master_id;
	private int user_question_views;
	private String user_question_image;
	
	
	
	public UserQuestions() {
		
		super();
		// TODO Auto-generated constructor stub
	}



	public UserQuestions(int user_question_id, String user_question_title, String user_question_content,
			Date user_question_pultime, int question_master_id, int user_question_views, String user_question_image) {
		super();
		this.user_question_id = user_question_id;
		this.user_question_title = user_question_title;
		this.user_question_content = user_question_content;
		this.user_question_pultime = user_question_pultime;
		this.question_master_id = question_master_id;
		this.user_question_views = user_question_views;
		this.user_question_image = user_question_image;
	}



	public int getUser_question_id() {
		return user_question_id;
	}



	public void setUser_question_id(int user_question_id) {
		this.user_question_id = user_question_id;
	}



	public String getUser_question_title() {
		return user_question_title;
	}



	public void setUser_question_title(String user_question_title) {
		this.user_question_title = user_question_title;
	}



	public String getUser_question_content() {
		return user_question_content;
	}



	public void setUser_question_content(String user_question_content) {
		this.user_question_content = user_question_content;
	}



	public Date getUser_question_pultime() {
		return user_question_pultime;
	}



	public void setUser_question_pultime(Date user_question_pultime) {
		this.user_question_pultime = user_question_pultime;
	}



	public int getQuestion_master_id() {
		return question_master_id;
	}



	public void setQuestion_master_id(int question_master_id) {
		this.question_master_id = question_master_id;
	}



	public int getUser_question_views() {
		return user_question_views;
	}



	public void setUser_question_views(int user_question_views) {
		this.user_question_views = user_question_views;
	}



	public String getUser_question_image() {
		return user_question_image;
	}



	public void setUser_question_image(String user_question_image) {
		this.user_question_image = user_question_image;
	}
	
	

}

