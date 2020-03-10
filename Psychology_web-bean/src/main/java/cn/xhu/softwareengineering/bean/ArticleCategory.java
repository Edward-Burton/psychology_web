package cn.xhu.softwareengineering.bean;

public class ArticleCategory {

	private int article_categoryId;
	private int articleId;
	private int categoryId;
	
	public ArticleCategory() {
		super();
	}

	public ArticleCategory(int article_categoryId, int articleId, int categoryId) {
		super();
		this.article_categoryId = article_categoryId;
		this.articleId = articleId;
		this.categoryId = categoryId;
	}

	public int getArticle_categoryId() {
		return article_categoryId;
	}

	public void setArticle_categoryId(int article_categoryId) {
		this.article_categoryId = article_categoryId;
	}

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	
	
	
}
