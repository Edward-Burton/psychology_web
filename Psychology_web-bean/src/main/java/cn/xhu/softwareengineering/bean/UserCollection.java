package cn.xhu.softwareengineering.bean;

import java.util.List;

public class UserCollection {
	private int user_collection_id;
	private int user_collectioin_to_id;
	private List<Object> user_collection_obj;
	private int user_collection_from_user_id;
	private int user_collection_type;
	public UserCollection() {
		super();
	}
	
	
	public UserCollection(int user_collection_id, int user_collectioin_to_id, List<Object> user_collection_obj,
			int user_collection_from_user_id, int user_collection_type) {
		super();
		this.user_collection_id = user_collection_id;
		this.user_collectioin_to_id = user_collectioin_to_id;
		this.user_collection_obj = user_collection_obj;
		this.user_collection_from_user_id = user_collection_from_user_id;
		this.user_collection_type = user_collection_type;
	}


	public List<Object> getUser_collection_obj() {
		return user_collection_obj;
	}
	public void setUser_collection_obj(List<Object> user_collection_obj) {
		this.user_collection_obj = user_collection_obj;
	}
	public int getUser_collection_id() {
		return user_collection_id;
	}
	public void setUser_collection_id(int user_collection_id) {
		this.user_collection_id = user_collection_id;
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
