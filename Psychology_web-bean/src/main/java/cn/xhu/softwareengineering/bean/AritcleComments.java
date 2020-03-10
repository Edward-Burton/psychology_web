package cn.xhu.softwareengineering.bean;

public class AritcleComments {

	private int commentId;
	private int articleId;
	private String commentPultime;
	private String commentContent;
	private int likesNum;
	private int userId;
	public AritcleComments() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AritcleComments(int commentId, int articleId, String commentPultime, String commentContent, int likesNum,
			int userId) {
		super();
		this.commentId = commentId;
		this.articleId = articleId;
		this.commentPultime = commentPultime;
		this.commentContent = commentContent;
		this.likesNum = likesNum;
		this.userId = userId;
	}
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}
	public String getCommentPultime() {
		return commentPultime;
	}
	public void setCommentPultime(String commentPultime) {
		this.commentPultime = commentPultime;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public int getLikesNum() {
		return likesNum;
	}
	public void setLikesNum(int likesNum) {
		this.likesNum = likesNum;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
}
