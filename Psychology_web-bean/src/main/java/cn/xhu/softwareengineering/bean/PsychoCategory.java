package cn.xhu.softwareengineering.bean;

public class PsychoCategory {

	private int psycho_category_id;
	private String psycho_category_name;
	private int psycho_category_parentid;
	private String psycho_category_description;
	private String psycho_category_alias;
	
	public PsychoCategory() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PsychoCategory(int psycho_category_id, String psycho_category_name, int psycho_category_parentid,
			String psycho_category_description, String psycho_category_alias) {
		super();
		this.psycho_category_id = psycho_category_id;
		this.psycho_category_name = psycho_category_name;
		this.psycho_category_parentid = psycho_category_parentid;
		this.psycho_category_description = psycho_category_description;
		this.psycho_category_alias = psycho_category_alias;
	}

	public int getPsycho_category_id() {
		return psycho_category_id;
	}

	public void setPsycho_category_id(int psycho_category_id) {
		this.psycho_category_id = psycho_category_id;
	}

	public String getPsycho_category_name() {
		return psycho_category_name;
	}

	public void setPsycho_category_name(String psycho_category_name) {
		this.psycho_category_name = psycho_category_name;
	}

	public int getPsycho_category_parentid() {
		return psycho_category_parentid;
	}

	public void setPsycho_category_parentid(int psycho_category_parentid) {
		this.psycho_category_parentid = psycho_category_parentid;
	}

	public String getPsycho_category_description() {
		return psycho_category_description;
	}

	public void setPsycho_category_description(String psycho_category_description) {
		this.psycho_category_description = psycho_category_description;
	}

	public String getPsycho_category_alias() {
		return psycho_category_alias;
	}

	public void setPsycho_category_alias(String psycho_category_alias) {
		this.psycho_category_alias = psycho_category_alias;
	}

	
	
	
}
