package cn.xhu.softwareengineering.bean;

import java.util.List;

public class PsychoLabel {
	private int psycho_label_id;
	private String psycho_label_name;
	private int psycho_label_parentid;
	private String psycho_label_description;
	private String psycho_label_alias;
	private List<Object> objList;
	
	public PsychoLabel() {
		super();
	}

	public PsychoLabel(int psycho_label_id, String psycho_label_name, int psycho_label_parentid,
			String psycho_label_description, String psycho_label_alias) {
		super();
		this.psycho_label_id = psycho_label_id;
		this.psycho_label_name = psycho_label_name;
		this.psycho_label_parentid = psycho_label_parentid;
		this.psycho_label_description = psycho_label_description;
		this.psycho_label_alias = psycho_label_alias;
	}
	
	

	public List<Object> getObjList() {
		return objList;
	}

	public void setObjList(List<Object> objList) {
		this.objList = objList;
	}

	public int getPsycho_label_id() {
		return psycho_label_id;
	}

	public void setPsycho_label_id(int psycho_label_id) {
		this.psycho_label_id = psycho_label_id;
	}

	public String getPsycho_label_name() {
		return psycho_label_name;
	}

	public void setPsycho_label_name(String psycho_label_name) {
		this.psycho_label_name = psycho_label_name;
	}

	public int getPsycho_label_parentid() {
		return psycho_label_parentid;
	}

	public void setPsycho_label_parentid(int psycho_label_parentid) {
		this.psycho_label_parentid = psycho_label_parentid;
	}

	public String getPsycho_label_description() {
		return psycho_label_description;
	}

	public void setPsycho_label_description(String psycho_label_description) {
		this.psycho_label_description = psycho_label_description;
	}

	public String getPsycho_label_alias() {
		return psycho_label_alias;
	}

	public void setPsycho_label_alias(String psycho_label_alias) {
		this.psycho_label_alias = psycho_label_alias;
	}
	
}
