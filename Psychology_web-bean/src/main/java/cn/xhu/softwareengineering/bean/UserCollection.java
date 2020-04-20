package cn.xhu.softwareengineering.bean;

public class UserCollection {
	int user_collection_answer_id;
	int user_collectioin_to_id;
	int user_collection_from_user_id;
	int user_collection_type;
	public UserCollection() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserCollection(int user_collection_answer_id, int user_collectioin_to_id, int user_collection_from_user_id,
			int user_collection_type) {
		super();
		this.user_collection_answer_id = user_collection_answer_id;
		this.user_collectioin_to_id = user_collectioin_to_id;
		this.user_collection_from_user_id = user_collection_from_user_id;
		this.user_collection_type = user_collection_type;
	}
	public int getUser_collection_answer_id() {
		return user_collection_answer_id;
	}
	public void setUser_collection_answer_id(int user_collection_answer_id) {
		this.user_collection_answer_id = user_collection_answer_id;
	}
	public int getUser_collectioin_to_id() {
		return user_collectioin_to_id;
	}
	public void setUser_collectioin_to_id(int user_collectioin_to_id) {
		this.user_collectioin_to_id = user_collectioin_to_id;
	}
	public int getUser_collection_from_user_id() {
		return user_collection_from_user_id;
	}
	public void setUser_collection_from_user_id(int user_collection_from_user_id) {
		this.user_collection_from_user_id = user_collection_from_user_id;
	}
	public int getUser_collection_type() {
		return user_collection_type;
	}
	public void setUser_collection_type(int user_collection_type) {
		this.user_collection_type = user_collection_type;
	}
	
	
}
