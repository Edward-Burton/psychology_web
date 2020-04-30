package cn.xhu.softwareengineering.bean;

public class CourseProfession {
	private int course_profession_id;
	private String profession_name;
	public CourseProfession() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public CourseProfession(int course_profession_id, String profession_name) {
		super();
		this.course_profession_id = course_profession_id;
		this.profession_name = profession_name;
	}



	public int getCourse_profession_id() {
		return course_profession_id;
	}
	public void setCourse_profession_id(int course_profession_id) {
		this.course_profession_id = course_profession_id;
	}
	public String getProfession_name() {
		return profession_name;
	}
	public void setProfession_name(String profession_name) {
		this.profession_name = profession_name;
	}
	
	
}
