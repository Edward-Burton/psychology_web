package cn.xhu.softwareengineering.bean;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class SalesQuestion {
	private int sales_question_id;
	private PsychoUser questionUser;
	private String sales_question_content;
	@JsonFormat(locale="zh", timezone="GMT", pattern="yyyy-MM-dd")
	private Date sales_question_pultime;
	private int sales_id;
	private int sales_type;
	private List<SalesAnswer> answers;
	
	public SalesQuestion() {
		super();
	}

	

	public SalesQuestion(int sales_question_id, PsychoUser questionUser, String sales_question_content,
			Date sales_question_pultime, int sales_id, int sales_type, List<SalesAnswer> answers) {
		super();
		this.sales_question_id = sales_question_id;
		this.questionUser = questionUser;
		this.sales_question_content = sales_question_content;
		this.sales_question_pultime = sales_question_pultime;
		this.sales_id = sales_id;
		this.sales_type = sales_type;
		this.answers = answers;
	}

	

	public List<SalesAnswer> getAnswers() {
		return answers;
	}



	public void setAnswers(List<SalesAnswer> answers) {
		this.answers = answers;
	}



	public int getSales_question_id() {
		return sales_question_id;
	}

	public void setSales_question_id(int sales_question_id) {
		this.sales_question_id = sales_question_id;
	}

	public PsychoUser getQuestionUser() {
		return questionUser;
	}

	public void setQuestionUser(PsychoUser questionUser) {
		this.questionUser = questionUser;
	}

	public String getSales_question_content() {
		return sales_question_content;
	}

	public void setSales_question_content(String sales_question_content) {
		this.sales_question_content = sales_question_content;
	}

	public Date getSales_question_pultime() {
		return sales_question_pultime;
	}

	public void setSales_question_pultime(Date sales_question_pultime) {
		this.sales_question_pultime = sales_question_pultime;
	}

	public int getSales_id() {
		return sales_id;
	}

	public void setSales_id(int sales_id) {
		this.sales_id = sales_id;
	}

	public int getSales_type() {
		return sales_type;
	}

	public void setSales_type(int sales_type) {
		this.sales_type = sales_type;
	}
	
}
