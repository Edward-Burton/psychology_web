package cn.xhu.softwareengineering.bean;

import java.util.List;

public class MessageTalk {
	private int sender;
	private PsychoUser recepter;
	private List<Message> messageList;
	
	
	
	public MessageTalk() {
		super();
	}


	public MessageTalk(int sender, PsychoUser recepter, List<Message> messageList) {
		super();
		this.sender = sender;
		this.recepter = recepter;
		this.messageList = messageList;
	}


	public int getSender() {
		return sender;
	}


	public void setSender(int sender) {
		this.sender = sender;
	}


	public PsychoUser getRecepter() {
		return recepter;
	}


	public void setRecepter(PsychoUser recepter) {
		this.recepter = recepter;
	}


	public List<Message> getMessageList() {
		return messageList;
	}


	public void setMessageList(List<Message> messageList) {
		this.messageList = messageList;
	}
	
	
	
}
