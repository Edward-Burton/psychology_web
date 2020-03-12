package cn.xhu.softwareengineering.bean;

public class PsychoArticle {
	
	private int articleId;
	private String articleTitle;
	private String articleImg;
	private String pubTime;
	private int pubuserId;
	private String author;
	private String source;
	private String originalTitle;
	private int commentsNum;
	private int readsNum;
	private int likesNum;
	private String content;
	private PsychoCategory psychoCategory;
	

	public PsychoArticle() {
		super();
	}

	public PsychoArticle(int articleId, String articleTitle, String articleImg, String pubTime, int pubuserId,
			String author, String source, String originalTitle, int commentsNum, int readsNum, int likesNum,
			String content, PsychoCategory psychoCategory) {
		super();
		this.articleId = articleId;
		this.articleTitle = articleTitle;
		this.articleImg = articleImg;
		this.pubTime = pubTime;
		this.pubuserId = pubuserId;
		this.author = author;
		this.source = source;
		this.originalTitle = originalTitle;
		this.commentsNum = commentsNum;
		this.readsNum = readsNum;
		this.likesNum = likesNum;
		this.content = content;
		this.psychoCategory = psychoCategory;
	}




	public int getArticleId() {
		return articleId;
	}


	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}


	public String getArticleTitle() {
		return articleTitle;
	}


	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}


	public String getArticleImg() {
		return articleImg;
	}


	public void setArticleImg(String articleImg) {
		this.articleImg = articleImg;
	}


	public String getPubTime() {
		return pubTime;
	}


	public void setPubTime(String pubTime) {
		this.pubTime = pubTime;
	}


	public int getPubuserId() {
		return pubuserId;
	}


	public void setPubuserId(int pubuserId) {
		this.pubuserId = pubuserId;
	}


	public String getAuthor() {
		return author;
	}


	public void setAuthor(String author) {
		this.author = author;
	}


	public String getSource() {
		return source;
	}


	public void setSource(String source) {
		this.source = source;
	}


	public String getOriginalTitle() {
		return originalTitle;
	}


	public void setOriginalTitle(String originalTitle) {
		this.originalTitle = originalTitle;
	}


	public int getCommentsNum() {
		return commentsNum;
	}


	public void setCommentsNum(int commentsNum) {
		this.commentsNum = commentsNum;
	}


	public int getReadsNum() {
		return readsNum;
	}


	public void setReadsNum(int readsNum) {
		this.readsNum = readsNum;
	}


	public int getLikesNum() {
		return likesNum;
	}


	public void setLikesNum(int likesNum) {
		this.likesNum = likesNum;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}

	public PsychoCategory getPsychoCategory() {
		return psychoCategory;
	}

	public void setPsychoCategory(PsychoCategory psychoCategory) {
		this.psychoCategory = psychoCategory;
	}
	
	
	
}
