package cn.xhu.softwareengineering.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class SalesAnswer {
	private int sales_answer_id;
	private int sales_answer_instructorid;
	private String sales_answer_content;
	private int sales_questionid;
	@JsonFormat(locale="zh", timezone="GMT", pattern="yyyy-MM-dd")
	private Date sales_answer_pultime;
	
	
	public SalesAnswer() {
		super();
	}

	public SalesAnswer(int sales_answer_id, int sales_answer_instructorid, String sales_answer_content,
			int sales_questionid, Date sales_answer_pultime) {
		super();
		this.sales_answer_id = sales_answer_id;
		this.sales_answer_instructorid = sales_answer_instructorid;
		this.sales_answer_content = sales_answer_content;
		this.sales_questionid = sales_questionid;
		this.sales_answer_pultime = sales_answer_pultime;
	}

	public int getSales_answer_id() {
		return sales_answer_id;
	}

	public void setSales_answer_id(int sales_answer_id) {
		this.sales_answer_id = sales_answer_id;
	}

	public int getSales_answer_instructorid() {
		return sales_answer_instructorid;
	}

	public void setSales_answer_instructorid(int sales_answer_instructorid) {
		this.sales_answer_instructorid = sales_answer_instructorid;
	}

	public String getSales_answer_content() {
		return sales_answer_content;
	}

	public void setSales_answer_content(String sales_answer_content) {
		this.sales_answer_content = sales_answer_content;
	}

	public int getSales_questionid() {
		return sales_questionid;
	}

	public void setSales_questionid(int sales_questionid) {
		this.sales_questionid = sales_questionid;
	}

	public Date getSales_answer_pultime() {
		return sales_answer_pultime;
	}

	public void setSales_answer_pultime(Date sales_answer_pultime) {
		this.sales_answer_pultime = sales_answer_pultime;
	}
	
	
	
}
