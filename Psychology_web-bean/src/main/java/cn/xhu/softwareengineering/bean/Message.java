package cn.xhu.softwareengineering.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.google.gson.annotations.Expose;

public class Message {
	
	private int message_id;
	//发送者
	@Expose
	public Integer from;
	//发送者名称
	@Expose
	public String fromName;
	//接收者
	@Expose
	public Integer to;
	//发送的文本
	@Expose
	public String text;
	//发送日期
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@Expose
	public Date date;
	
	//在线用户列表
	@Expose
	List<PsychoUser> userList = new ArrayList<>();
	
	
	public int getMessage_id() {
		return message_id;
	}
	public void setMessage_id(int message_id) {
		this.message_id = message_id;
	}
	public List<PsychoUser> getUserList() {
		return userList;
	}
	public void setUserList(List<PsychoUser> userList) {
		this.userList = userList;
	}
	public Integer getFrom() {
		return from;
	}
	public void setFrom(Integer from) {
		this.from = from;
	}
	public String getFromName() {
		return fromName;
	}
	public void setFromName(String fromName) {
		this.fromName = fromName;
	}
	public Integer getTo() {
		return to;
	}
	public void setTo(Integer to) {
		this.to = to;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	

}
