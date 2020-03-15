package cn.xhu.softwareengineering.bean;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ArticleComments {

	private int article_comment_id;
	private int comment_article_id;
	private int comment_user_id;
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	private String article_comment_pultime;
	private String article_comment_pulcontent;
	private int article_comment_likes_num;
	private int article_comment_parentid;
	
	public ArticleComments() {
		super();
	}
	
	

	public ArticleComments(int article_comment_id, int comment_article_id, int comment_user_id,
			String article_comment_pultime, String article_comment_pulcontent, int article_comment_likes_num,
			int article_comment_parentid) {
		super();
		this.article_comment_id = article_comment_id;
		this.comment_article_id = comment_article_id;
		this.comment_user_id = comment_user_id;
		this.article_comment_pultime = article_comment_pultime;
		this.article_comment_pulcontent = article_comment_pulcontent;
		this.article_comment_likes_num = article_comment_likes_num;
		this.article_comment_parentid = article_comment_parentid;
	}



	public int getArticle_comment_id() {
		return article_comment_id;
	}

	public void setArticle_comment_id(int article_comment_id) {
		this.article_comment_id = article_comment_id;
	}

	public int getComment_article_id() {
		return comment_article_id;
	}

	public void setComment_article_id(int comment_article_id) {
		this.comment_article_id = comment_article_id;
	}

	public int getComment_user_id() {
		return comment_user_id;
	}

	public void setComment_user_id(int comment_user_id) {
		this.comment_user_id = comment_user_id;
	}

	public String getArticle_comment_pultime() {
		return article_comment_pultime;
	}

	public void setArticle_comment_pultime(String article_comment_pultime) {
		this.article_comment_pultime = article_comment_pultime;
	}

	public String getArticle_comment_pulcontent() {
		return article_comment_pulcontent;
	}

	public void setArticle_comment_pulcontent(String article_comment_pulcontent) {
		this.article_comment_pulcontent = article_comment_pulcontent;
	}

	public int getArticle_comment_likes_num() {
		return article_comment_likes_num;
	}

	public void setArticle_comment_likes_num(int article_comment_likes_num) {
		this.article_comment_likes_num = article_comment_likes_num;
	}



	public int getArticle_comment_parentid() {
		return article_comment_parentid;
	}



	public void setArticle_comment_parentid(int article_comment_parentid) {
		this.article_comment_parentid = article_comment_parentid;
	}
	
	
	
}
