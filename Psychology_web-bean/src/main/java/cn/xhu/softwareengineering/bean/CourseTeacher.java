package cn.xhu.softwareengineering.bean;

public class CourseTeacher {
	
	private int instructor_id;
	private String instructor_name;
	private String instructor_img;
	private String instructor_glory;
	
	public CourseTeacher() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CourseTeacher(int instructor_id, String instructor_name, String instructor_img, String instructor_glory) {
		super();
		this.instructor_id = instructor_id;
		this.instructor_name = instructor_name;
		this.instructor_img = instructor_img;
		this.instructor_glory = instructor_glory;
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
		return instructor_img;
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
