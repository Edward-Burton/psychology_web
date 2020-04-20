package cn.xhu.softwareengineering.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class QuestionAnswer {

	private int question_answer_id;
	private int question_id;
	private UserQuestions question;
	private PsychoUser answerUser;
	//private int answerer_id;
	private String question_answer_content;
	@JsonFormat(locale="zh", timezone="GMT", pattern="yyyy-MM-dd HH:mm:ss")
	private Date question_answer_pultime;
	private int question_answer_likes_num;
	
	
	public QuestionAnswer() {
		super();
		// TODO Auto-generated constructor stub
	}


	public QuestionAnswer(int question_answer_id, int question_id, UserQuestions question, PsychoUser answerUser,
			String question_answer_content, Date question_answer_pultime, int question_answer_likes_num) {
		super();
		this.question_answer_id = question_answer_id;
		this.question_id = question_id;
		this.question = question;
		this.answerUser = answerUser;
		this.question_answer_content = question_answer_content;
		this.question_answer_pultime = question_answer_pultime;
		this.question_answer_likes_num = question_answer_likes_num;
	}




	public UserQuestions getQuestion() {
		return question;
	}




	public void setQuestion(UserQuestions question) {
		this.question = question;
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


	/*
	 * public int getAnswerer_id() { return answerer_id; }
	 * 
	 * 
	 * public void setAnswerer_id(int answerer_id) { this.answerer_id = answerer_id;
	 * }
	 */
	


	public String getQuestion_answer_content() {
		return question_answer_content;
	}


	public PsychoUser getAnswerUser() {
		return answerUser;
	}


	public void setAnswerUser(PsychoUser answerUser) {
		this.answerUser = answerUser;
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
