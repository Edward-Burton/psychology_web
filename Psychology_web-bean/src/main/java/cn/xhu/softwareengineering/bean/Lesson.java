package cn.xhu.softwareengineering.bean;

import java.util.Date;

public class Lesson {
	private int lesson_id;
	private String lesson_name;
	private int lesson_catalogid;
	private String media_addr;
	private int media_time;
	private String description;
	private Date created_time;
	private Date updated_time;
	private String status;
	public Lesson() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Lesson(int lesson_id, String lesson_name, int lesson_catalogid, String media_addr, int media_time,
			String description, Date created_time, Date updated_time, String status) {
		super();
		this.lesson_id = lesson_id;
		this.lesson_name = lesson_name;
		this.lesson_catalogid = lesson_catalogid;
		this.media_addr = media_addr;
		this.media_time = media_time;
		this.description = description;
		this.created_time = created_time;
		this.updated_time = updated_time;
		this.status = status;
	}
	public int getLesson_id() {
		return lesson_id;
	}
	public void setLesson_id(int lesson_id) {
		this.lesson_id = lesson_id;
	}
	public String getLesson_name() {
		return lesson_name;
	}
	public void setLesson_name(String lesson_name) {
		this.lesson_name = lesson_name;
	}
	public int getLesson_catalogid() {
		return lesson_catalogid;
	}
	public void setLesson_catalogid(int lesson_catalogid) {
		this.lesson_catalogid = lesson_catalogid;
	}
	public String getMedia_addr() {
		return media_addr.substring(media_addr.indexOf("img")).replaceAll("\\\\", "/");
	}
	public void setMedia_addr(String media_addr) {
		this.media_addr = media_addr;
	}
	public int getMedia_time() {
		return media_time;
	}
	public void setMedia_time(int media_time) {
		this.media_time = media_time;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getCreated_time() {
		return created_time;
	}
	public void setCreated_time(Date created_time) {
		this.created_time = created_time;
	}
	public Date getUpdated_time() {
		return updated_time;
	}
	public void setUpdated_time(Date updated_time) {
		this.updated_time = updated_time;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	
	
}
