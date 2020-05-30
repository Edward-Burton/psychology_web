package cn.xhu.softwareengineering.bean;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class PsychoUser {
	private int psychouser_id;
	private String psychouser_name;
	private String psychouser_password;
	private String psychouser_gender;
	private String psychouser_title;
	private String psychouser_intro;
	private String psychouser_head_portrait;
	private String psychouser_phone_number;
	private String psychouser_mail;
	private String psychouser_acct;
	private int articleNum;
	private int questionAnswerNum;
	private int zanNum;
	private int questionNum;
	@JsonFormat(locale="zh", timezone="GMT", pattern="yyyy-MM-dd HH:mm:ss")
	private Date psychouser_createtime;
	private List<Message> messageList;
	
	
	
	public PsychoUser() {
		super();

	}


	public PsychoUser(int psychouser_id, String psychouser_name, String psychouser_password, String psychouser_gender,
			String psychouser_title, String psychouser_intro, String psychouser_head_portrait,
			String psychouser_phone_number, String psychouser_mail, String psychouser_acct, int articleNum,
			int questionAnswerNum, int zanNum, int questionNum, Date psychouser_createtime) {
		super();
		this.psychouser_id = psychouser_id;
		this.psychouser_name = psychouser_name;
		this.psychouser_password = psychouser_password;
		this.psychouser_gender = psychouser_gender;
		this.psychouser_title = psychouser_title;
		this.psychouser_intro = psychouser_intro;
		this.psychouser_head_portrait = psychouser_head_portrait;
		this.psychouser_phone_number = psychouser_phone_number;
		this.psychouser_mail = psychouser_mail;
		this.psychouser_acct = psychouser_acct;
		this.articleNum = articleNum;
		this.questionAnswerNum = questionAnswerNum;
		this.zanNum = zanNum;
		this.questionNum = questionNum;
		this.psychouser_createtime = psychouser_createtime;
	}

	
	


	public List<Message> getMessageList() {
		return messageList;
	}


	public void setMessageList(List<Message> messageList) {
		this.messageList = messageList;
	}


	public int getQuestionNum() {
		return questionNum;
	}


	public void setQuestionNum(int questionNum) {
		this.questionNum = questionNum;
	}


	public int getArticleNum() {
		return articleNum;
	}


	public void setArticleNum(int articleNum) {
		this.articleNum = articleNum;
	}


	public int getQuestionAnswerNum() {
		return questionAnswerNum;
	}


	public void setQuestionAnswerNum(int questionAnswerNum) {
		this.questionAnswerNum = questionAnswerNum;
	}


	public int getZanNum() {
		return zanNum;
	}


	public void setZanNum(int zanNum) {
		this.zanNum = zanNum;
	}


	public int getPsychouser_id() {
		return psychouser_id;
	}

	public void setPsychouser_id(int psychouser_id) {
		this.psychouser_id = psychouser_id;
	}

	public String getPsychouser_name() {
		return psychouser_name;
	}

	public void setPsychouser_name(String psychouser_name) {
		this.psychouser_name = psychouser_name;
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
		return psychouser_head_portrait.substring(psychouser_head_portrait.indexOf("img")).replaceAll("\\\\", "/");
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

	public String getPsychouser_acct() {
		return psychouser_acct;
	}

	public void setPsychouser_acct(String psychouser_acct) {
		this.psychouser_acct = psychouser_acct;
	}


	public Date getPsychouser_createtime() {
		return psychouser_createtime;
	}


	public void setPsychouser_createtime(Date psychouser_createtime) {
		this.psychouser_createtime = psychouser_createtime;
	}

	
}
