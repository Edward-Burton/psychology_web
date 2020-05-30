package cn.xhu.softwareengineering.bean;

import java.util.Date;

public class PsychoCourse {
	private int course_id;
	private CourseTeacher instructor;
	private String course_name;
	private int professionid;
	private String description;
	private String cover_img;
	private String course_info;
	private float course_price;
	private int join_number;
	private Date created_time;
	private Date updated_time;
	private int status;
	private int type;
	
	public PsychoCourse() {
		super();
	}




	public PsychoCourse(int course_id, CourseTeacher instructor, String course_name, int professionid,
			String description, String cover_img, String course_info, float course_price, int join_number,
			Date created_time, Date updated_time, int status, int type) {
		super();
		this.course_id = course_id;
		this.instructor = instructor;
		this.course_name = course_name;
		this.professionid = professionid;
		this.description = description;
		this.cover_img = cover_img;
		this.course_info = course_info;
		this.course_price = course_price;
		this.join_number = join_number;
		this.created_time = created_time;
		this.updated_time = updated_time;
		this.status = status;
		this.type = type;
	}








	public int getType() {
		return type;
	}




	public void setType(int type) {
		this.type = type;
	}




	public CourseTeacher getInstructor() {
		return instructor;
	}




	public void setInstructor(CourseTeacher instructor) {
		this.instructor = instructor;
	}




	public int getCourse_id() {
		return course_id;
	}

	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}

	public String getCourse_name() {
		return course_name;
	}

	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}

	public int getProfessionid() {
		return professionid;
	}

	public void setProfessionid(int professionid) {
		this.professionid = professionid;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCover_img() {
		return cover_img.substring(cover_img.indexOf("img")).replaceAll("\\\\", "/");
	}

	public void setCover_img(String cover_img) {
		this.cover_img = cover_img;
	}

	public String getCourse_info() {
		return course_info;
	}

	public void setCourse_info(String course_info) {
		this.course_info = course_info;
	}

	public float getCourse_price() {
		return course_price;
	}

	public void setCourse_price(float course_price) {
		this.course_price = course_price;
	}

	public int getJoin_number() {
		return join_number;
	}

	public void setJoin_number(int join_number) {
		this.join_number = join_number;
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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	

}
