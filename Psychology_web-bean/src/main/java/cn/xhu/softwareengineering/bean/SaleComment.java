package cn.xhu.softwareengineering.bean;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class SaleComment {
	private int comment_id;
	private PsychoUser comment_user;
	private int comment_toid;
	private int comment_type_id;
	private String comment_content;
	private List<Integer> commentlikedList;
	@JsonFormat(locale="zh", timezone="GMT", pattern="yyyy-MM-dd")
	private Date comment_pultime;
	
	public SaleComment() {
		super();
	}
	
	
	public SaleComment(int comment_id, PsychoUser comment_user, int comment_toid, int comment_type_id,
			String comment_content, List<Integer> commentlikedList, Date comment_pultime) {
		super();
		this.comment_id = comment_id;
		this.comment_user = comment_user;
		this.comment_toid = comment_toid;
		this.comment_type_id = comment_type_id;
		this.comment_content = comment_content;
		this.commentlikedList = commentlikedList;
		this.comment_pultime = comment_pultime;
	}

	
	

	public List<Integer> getCommentlikedList() {
		return commentlikedList;
	}


	public void setCommentlikedList(List<Integer> commentlikedList) {
		this.commentlikedList = commentlikedList;
	}


	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	
	public PsychoUser getComment_user() {
		return comment_user;
	}

	public void setComment_user(PsychoUser comment_user) {
		this.comment_user = comment_user;
	}

	public int getComment_toid() {
		return comment_toid;
	}
	public void setComment_toid(int comment_toid) {
		this.comment_toid = comment_toid;
	}
	public int getComment_type_id() {
		return comment_type_id;
	}
	public void setComment_type_id(int comment_type_id) {
		this.comment_type_id = comment_type_id;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public Date getComment_pultime() {
		return comment_pultime;
	}
	public void setComment_pultime(Date comment_pultime) {
		this.comment_pultime = comment_pultime;
	}
	
	

}
