package cn.xhu.softwareengineering.bean;

import com.fasterxml.jackson.annotation.JsonFormat;

public class ArticleComments {

	private int article_comment_id;
	private int comment_article_id;
	private PsychoUser comment_user;
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	private String article_comment_pultime;
	private String article_comment_pulcontent;
	private int article_comment_likes_num;
	private ArticleComments article_p_comment;
	
	public ArticleComments() {
		super();
	}


	public ArticleComments(int article_comment_id, int comment_article_id, PsychoUser comment_user,
			String article_comment_pultime, String article_comment_pulcontent, int article_comment_likes_num,
			ArticleComments article_p_comment) {
		super();
		this.article_comment_id = article_comment_id;
		this.comment_article_id = comment_article_id;
		this.comment_user = comment_user;
		this.article_comment_pultime = article_comment_pultime;
		this.article_comment_pulcontent = article_comment_pulcontent;
		this.article_comment_likes_num = article_comment_likes_num;
		this.article_p_comment = article_p_comment;
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

	public PsychoUser getComment_user() {
		return comment_user;
	}

	public void setComment_user(PsychoUser comment_user) {
		this.comment_user = comment_user;
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


	public ArticleComments getArticle_p_comment() {
		return article_p_comment;
	}


	public void setArticle_p_comment(ArticleComments article_p_comment) {
		this.article_p_comment = article_p_comment;
	}
	
	
	
	
}
