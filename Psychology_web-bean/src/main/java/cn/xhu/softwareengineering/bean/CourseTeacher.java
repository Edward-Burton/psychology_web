package cn.xhu.softwareengineering.bean;

public class CourseTeacher {
	
	private int instructor_id;
	private int instrutor_userid;
	private String instructor_name;
	private String instructor_img;
	private String instructor_glory;
	
	public CourseTeacher() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	public CourseTeacher(int instructor_id, int instrutor_userid, String instructor_name, String instructor_img,
			String instructor_glory) {
		super();
		this.instructor_id = instructor_id;
		this.instrutor_userid = instrutor_userid;
		this.instructor_name = instructor_name;
		this.instructor_img = instructor_img;
		this.instructor_glory = instructor_glory;
	}



	public int getInstrutor_userid() {
		return instrutor_userid;
	}



	public void setInstrutor_userid(int instrutor_userid) {
		this.instrutor_userid = instrutor_userid;
	}



	public int getInstructor_id() {
		return instructor_id;
	}

	public void setInstructor_id(int instructor_id) {
		this.instructor_id = instructor_id;
	}

	public String getInstructor_name() {
		return instructor_name;
	}

	public void setInstructor_name(String instructor_name) {
		this.instructor_name = instructor_name;
	}

	public String getInstructor_img() {
		return instructor_img.substring(instructor_img.indexOf("img")).replaceAll("\\\\", "/");
	}

	public void setInstructor_img(String instructor_img) {
		this.instructor_img = instructor_img;
	}

	public String getInstructor_glory() {
		return instructor_glory;
	}

	public void setInstructor_glory(String instructor_glory) {
		this.instructor_glory = instructor_glory;
	}
	
	

}
