package cn.xhu.softwareengineering.bean;

import java.util.List;

public class CourseCatalog {
	
	private int catalog_id;
	private List<Lesson> lesson;
	private List<CourseCatalog> subcatalog;
	private String catalog_name;
	private int catalog_Courseid;
	private int catalog_level;
	
	public CourseCatalog(int catalog_id, List<Lesson> lesson, List<CourseCatalog> subcatalog, String catalog_name,
			int catalog_Courseid, int catalog_level) {
		super();
		this.catalog_id = catalog_id;
		this.lesson = lesson;
		this.subcatalog = subcatalog;
		this.catalog_name = catalog_name;
		this.catalog_Courseid = catalog_Courseid;
		this.catalog_level = catalog_level;
	}
	public CourseCatalog() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getCatalog_id() {
		return catalog_id;
	}
	public void setCatalog_id(int catalog_id) {
		this.catalog_id = catalog_id;
	}
	public List<Lesson> getLesson() {
		return lesson;
	}
	public void setLesson(List<Lesson> lesson) {
		this.lesson = lesson;
	}
	public List<CourseCatalog> getSubcatalog() {
		return subcatalog;
	}
	public void setSubcatalog(List<CourseCatalog> subcatalog) {
		this.subcatalog = subcatalog;
	}
	public String getCatalog_name() {
		return catalog_name;
	}
	public void setCatalog_name(String catalog_name) {
		this.catalog_name = catalog_name;
	}
	public int getCatalog_level() {
		return catalog_level;
	}
	public void setCatalog_level(int catalog_level) {
		this.catalog_level = catalog_level;
	}
	public int getCatalog_Courseid() {
		return catalog_Courseid;
	}
	public void setCatalog_Courseid(int catalog_Courseid) {
		this.catalog_Courseid = catalog_Courseid;
	}
	
	
	
}
