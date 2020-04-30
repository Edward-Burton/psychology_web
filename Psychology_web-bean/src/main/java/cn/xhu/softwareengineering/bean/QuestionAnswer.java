package cn.xhu.softwareengineering.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class QuestionAnswer {

	private int question_answer_id;
	private int question_id;
	private UserQuestions question;
	private PsychoUser answerUser;
	private String question_answer_content;
	@JsonFormat(locale="zh", timezone="GMT", pattern="yyyy-MM-dd HH:mm:ss")
	private Date question_answer_pultime;
	private List<Integer> question_answer_likes;
	private List<Integer> user_follows;
	private List<QuestionAnswer> answercomment;
	
	public QuestionAnswer() {
		super();
	}

	

	public QuestionAnswer(int question_answer_id, int question_id, UserQuestions question, PsychoUser answerUser,
			String question_answer_content, Date question_answer_pultime, List<Integer> question_answer_likes,
			List<Integer> user_follows, List<QuestionAnswer> answercomment) {
		super();
		this.question_answer_id = question_answer_id;
		this.question_id = question_id;
		this.question = question;
		this.answerUser = answerUser;
		this.question_answer_content = question_answer_content;
		this.question_answer_pultime = question_answer_pultime;
		this.question_answer_likes = question_answer_likes;
		this.user_follows = user_follows;
		this.answercomment = answercomment;
	}



	public List<QuestionAnswer> getAnswercomment() {
		return answercomment;
	}



	public void setAnswercomment(List<QuestionAnswer> answercomment) {
		this.answercomment = answercomment;
	}



	public List<Integer> getUser_follows() {
		return user_follows;
	}

	
	
	public void setUser_follows(List<Integer> user_follows) {
		this.user_follows = user_follows;
	}
	
	

	public void setQuestion_answer_likes(List<Integer> question_answer_likes) {
		this.question_answer_likes = question_answer_likes;
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


	public List<Integer> getQuestion_answer_likes() {
		return question_answer_likes;
	}


	public void setQuestion_answer_likes(ArrayList<Integer> question_answer_likes) {
		this.question_answer_likes = question_answer_likes;
	}
	
	

}
