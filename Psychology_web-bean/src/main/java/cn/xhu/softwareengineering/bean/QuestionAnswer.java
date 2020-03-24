package cn.xhu.softwareengineering.bean;

import java.util.Date;

public class QuestionAnswer {

	private int question_answer_id;
	private int question_id;
	private int answerer_id;
	private String question_answer_content;
	private Date question_answer_pultime;
	private int question_answer_likes_num;
	
	
	public QuestionAnswer() {
		super();
		// TODO Auto-generated constructor stub
	}


	public QuestionAnswer(int question_answer_id, int question_id, int answerer_id, String question_answer_content,
			Date question_answer_pultime, int question_answer_likes_num) {
		super();
		this.question_answer_id = question_answer_id;
		this.question_id = question_id;
		this.answerer_id = answerer_id;
		this.question_answer_content = question_answer_content;
		this.question_answer_pultime = question_answer_pultime;
		this.question_answer_likes_num = question_answer_likes_num;
	}


	public int getQuestion_answer_id() {
		return question_answer_id;
	}


	public void setQuestion_answer_id(int question_answer_id) {
		this.question_answer_id = question_answer_id;
	}


	public int getQuestion_id() {
		return question_id;
	}


	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}


	public int getAnswerer_id() {
		return answerer_id;
	}


	public void setAnswerer_id(int answerer_id) {
		this.answerer_id = answerer_id;
	}


	public String getQuestion_answer_content() {
		return question_answer_content;
	}


	public void setQuestion_answer_content(String question_answer_content) {
		this.question_answer_content = question_answer_content;
	}


	public Date getQuestion_answer_pultime() {
		return question_answer_pultime;
	}


	public void setQuestion_answer_pultime(Date question_answer_pultime) {
		this.question_answer_pultime = question_answer_pultime;
	}


	public int getQuestion_answer_likes_num() {
		return question_answer_likes_num;
	}


	public void setQuestion_answer_likes_num(int question_answer_likes_num) {
		this.question_answer_likes_num = question_answer_likes_num;
	}
	
	

}
