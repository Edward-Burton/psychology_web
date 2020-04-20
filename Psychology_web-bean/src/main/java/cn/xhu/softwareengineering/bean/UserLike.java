package cn.xhu.softwareengineering.bean;

public class UserLike {
	
	int like_id;
	int like_type;
	int like_to_id;
	int like_from_user_id;
	int like_main_id;
	
	public UserLike() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	public UserLike(int like_id, int like_type, int like_to_id, int like_from_user_id, int like_main_id) {
		super();
		this.like_id = like_id;
		this.like_type = like_type;
		this.like_to_id = like_to_id;
		this.like_from_user_id = like_from_user_id;
		this.like_main_id = like_main_id;
	}



	public int getLike_id() {
		return like_id;
	}
	public void setLike_id(int like_id) {
		this.like_id = like_id;
	}
	public int getLike_type() {
		return like_type;
	}
	public void setLike_type(int like_type) {
		this.like_type = like_type;
	}
	public int getLike_to_id() {
		return like_to_id;
	}
	public void setLike_to_id(int like_to_id) {
		this.like_to_id = like_to_id;
	}
	public int getLike_from_user_id() {
		return like_from_user_id;
	}
	public void setLike_from_user_id(int like_from_user_id) {
		this.like_from_user_id = like_from_user_id;
	}
	public int getLike_main_id() {
		return like_main_id;
	}
	public void setLike_main_id(int like_main_id) {
		this.like_main_id = like_main_id;
	}
	
	
}
