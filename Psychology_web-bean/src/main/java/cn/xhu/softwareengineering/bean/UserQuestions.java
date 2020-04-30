package cn.xhu.softwareengineering.bean;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class UserQuestions {
	private int user_question_id;
	private String user_question_title;
	private String user_question_content;
	@JsonFormat(locale = "zh", timezone = "GMT", pattern = "yyyy-MM-dd HH:mm:ss")
	private Date user_question_pultime;
	private int question_master_id;
	private PsychoUser question_master;
	private int user_question_views;
	private List<PsychoLabel> qustion_labels;
	private List<Integer> collection_user;
	private int answer_count;
	private int user_anonym;
	private int question_answerlike_count; 
	private int master_answercount;

	public UserQuestions() {
		super();
	}

	
	

	public UserQuestions(int user_question_id, String user_question_title, String user_question_content,
			Date user_question_pultime, int question_master_id, PsychoUser question_master, int user_question_views,
			List<PsychoLabel> qustion_labels, List<Integer> collection_user, int answer_count, int user_anonym,
			int question_answerlike_count, int master_answercount) {
		super();
		this.user_question_id = user_question_id;
		this.user_question_title = user_question_title;
		this.user_question_content = user_question_content;
		this.user_question_pultime = user_question_pultime;
		this.question_master_id = question_master_id;
		this.question_master = question_master;
		this.user_question_views = user_question_views;
		this.qustion_labels = qustion_labels;
		this.collection_user = collection_user;
		this.answer_count = answer_count;
		this.user_anonym = user_anonym;
		this.question_answerlike_count = question_answerlike_count;
		this.master_answercount = master_answercount;
	}




	public int getMaster_answercount() {
		return master_answercount;
	}



	public void setMaster_answercount(int master_answercount) {
		this.master_answercount = master_answercount;
	}



	public int getQuestion_answerlike_count() {
		return question_answerlike_count;
	}



	public void setQuestion_answerlike_count(int question_answerlike_count) {
		this.question_answerlike_count = question_answerlike_count;
	}



	public List<Integer> getCollection_user() {
		return collection_user;
	}



	public void setCollection_user(List<Integer> collection_user) {
		this.collection_user = collection_user;
	}



	public int getAnswer_count() {
		return answer_count;
	}


	public void setAnswer_count(int answer_count) {
		this.answer_count = answer_count;
	}


	public List<PsychoLabel> getQustion_labels() {
		return qustion_labels;
	}



	public void setQustion_labels(List<PsychoLabel> qustion_labels) {
		this.qustion_labels = qustion_labels;
	}



	public PsychoUser getQuestion_master() {
		return question_master;
	}



	public void setQuestion_master(PsychoUser question_master) {
		this.question_master = question_master;
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


	public int getUser_anonym() {
		return user_anonym;
	}


	public void setUser_anonym(int user_anonym) {
		this.user_anonym = user_anonym;
	}

	
}
