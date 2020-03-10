package cn.xhu.softwareengineering.bean;

public class PsychoCategory {

	private int categoryId;
	private String categoryName;
	private int parentId;
	private String description;
	private String categoryAlias;
	
	public PsychoCategory() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PsychoCategory(int categoryId, String categoryName, int parentId, String description, String categoryAlias) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.parentId = parentId;
		this.description = description;
		this.categoryAlias = categoryAlias;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategoryAlias() {
		return categoryAlias;
	}

	public void setCategoryAlias(String categoryAlias) {
		this.categoryAlias = categoryAlias;
	}
	
	
	
}
