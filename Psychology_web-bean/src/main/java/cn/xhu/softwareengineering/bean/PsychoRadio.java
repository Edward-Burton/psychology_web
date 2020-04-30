package cn.xhu.softwareengineering.bean;

import java.util.Date;
import java.util.List;

public class PsychoRadio {
	private int psycho_radio_id;
	private RadioAnchor radioAnchor;
	private String psycho_radio_title;
	private String psycho_radio_description;
	private String psycho_radio_audio;
	private String psycho_radio_backgroud;
	private Date psycho_radio_pultime;
	private List<RadioComment> radioCommentList;
	private List<Integer> radioCollectList;
	
	public PsychoRadio() {
		super();
	}
	

	public PsychoRadio(int psycho_radio_id, RadioAnchor radioAnchor, String psycho_radio_title,
			String psycho_radio_description, String psycho_radio_audio, String psycho_radio_backgroud,
			Date psycho_radio_pultime, List<RadioComment> radioCommentList, List<Integer> radioCollectList) {
		super();
		this.psycho_radio_id = psycho_radio_id;
		this.radioAnchor = radioAnchor;
		this.psycho_radio_title = psycho_radio_title;
		this.psycho_radio_description = psycho_radio_description;
		this.psycho_radio_audio = psycho_radio_audio;
		this.psycho_radio_backgroud = psycho_radio_backgroud;
		this.psycho_radio_pultime = psycho_radio_pultime;
		this.radioCommentList = radioCommentList;
		this.radioCollectList = radioCollectList;
	}


	public List<RadioComment> getRadioCommentList() {
		return radioCommentList;
	}


	public void setRadioCommentList(List<RadioComment> radioCommentList) {
		this.radioCommentList = radioCommentList;
	}


	public List<Integer> getRadioCollectList() {
		return radioCollectList;
	}


	public void setRadioCollectList(List<Integer> radioCollectList) {
		this.radioCollectList = radioCollectList;
	}


	public Date getPsycho_radio_pultime() {
		return psycho_radio_pultime;
	}



	public void setPsycho_radio_pultime(Date psycho_radio_pultime) {
		this.psycho_radio_pultime = psycho_radio_pultime;
	}



	public int getPsycho_radio_id() {
		return psycho_radio_id;
	}

	public void setPsycho_radio_id(int psycho_radio_id) {
		this.psycho_radio_id = psycho_radio_id;
	}

	public RadioAnchor getRadioAnchor() {
		return radioAnchor;
	}

	public void setRadioAnchor(RadioAnchor radioAnchor) {
		this.radioAnchor = radioAnchor;
	}

	public String getPsycho_radio_title() {
		return psycho_radio_title;
	}

	public void setPsycho_radio_title(String psycho_radio_title) {
		this.psycho_radio_title = psycho_radio_title;
	}

	public String getPsycho_radio_description() {
		return psycho_radio_description;
	}

	public void setPsycho_radio_description(String psycho_radio_description) {
		this.psycho_radio_description = psycho_radio_description;
	}

	public String getPsycho_radio_audio() {
		return psycho_radio_audio.replaceAll("\\\\", "/").substring(psycho_radio_audio.indexOf("/img"));
	}

	public void setPsycho_radio_audio(String psycho_radio_audio) {
		this.psycho_radio_audio = psycho_radio_audio;
	}

	public String getPsycho_radio_backgroud() {
		return psycho_radio_backgroud.replaceAll("\\\\", "/").substring(psycho_radio_backgroud.indexOf("/img"));
	}

	public void setPsycho_radio_backgroud(String psycho_radio_backgroud) {
		this.psycho_radio_backgroud = psycho_radio_backgroud;
	}
	
	
	
}
