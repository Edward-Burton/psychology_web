package cn.xhu.softwareengineering.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class RadioComment {
	
	private int radio_comment_id;
	private PsychoUser commentUser;
	private int radio_id;
	private String radio_comment_content;
	@JsonFormat(locale="zh", timezone="GMT", pattern="yyyy-MM-dd HH:mm:ss")
	private Date radio_comment_pultime;
	
	public RadioComment() {
		super();
	}

	public RadioComment(int radio_comment_id, PsychoUser commentUser, int radio_id, String radio_comment_content,
			Date radio_comment_pultime) {
		super();
		this.radio_comment_id = radio_comment_id;
		this.commentUser = commentUser;
		this.radio_id = radio_id;
		this.radio_comment_content = radio_comment_content;
		this.radio_comment_pultime = radio_comment_pultime;
	}

	public int getRadio_comment_id() {
		return radio_comment_id;
	}

	public void setRadio_comment_id(int radio_comment_id) {
		this.radio_comment_id = radio_comment_id;
	}

	public PsychoUser getCommentUser() {
		return commentUser;
	}

	public void setCommentUser(PsychoUser commentUser) {
		this.commentUser = commentUser;
	}

	public int getRadio_id() {
		return radio_id;
	}

	public void setRadio_id(int radio_id) {
		this.radio_id = radio_id;
	}

	public String getRadio_comment_content() {
		return radio_comment_content;
	}

	public void setRadio_comment_content(String radio_comment_content) {
		this.radio_comment_content = radio_comment_content;
	}

	public Date getRadio_comment_pultime() {
		return radio_comment_pultime;
	}

	public void setRadio_comment_pultime(Date radio_comment_pultime) {
		this.radio_comment_pultime = radio_comment_pultime;
	}
	
}
