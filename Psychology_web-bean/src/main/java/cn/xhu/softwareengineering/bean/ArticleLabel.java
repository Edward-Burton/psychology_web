package cn.xhu.softwareengineering.bean;

public class ArticleLabel {

	private int article_labelId;
	private int articleId;
	private int labelId;
	
	public ArticleLabel() {
		super();
	}

	public ArticleLabel(int article_labelId, int articleId, int labelId) {
		super();
		this.article_labelId = article_labelId;
		this.articleId = articleId;
		this.labelId = labelId;
	}

	public int getArticle_labelId() {
		return article_labelId;
	}

	public void setArticle_labelId(int article_labelId) {
		this.article_labelId = article_labelId;
	}

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	public int getLabelId() {
		return labelId;
	}

	public void setLabelId(int labelId) {
		this.labelId = labelId;
	}
	
	
	
}
