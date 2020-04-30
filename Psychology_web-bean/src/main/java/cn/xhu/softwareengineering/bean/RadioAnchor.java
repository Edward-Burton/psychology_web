package cn.xhu.softwareengineering.bean;

public class RadioAnchor {
	
	private int radio_anchor_id;
	private String radio_anchor_name;
	private String radio_anchor_image;
	private int radio_anchor_userid;
	
	public RadioAnchor() {
		super();
	}

	public RadioAnchor(int radio_anchor_id, String radio_anchor_name, String radio_anchor_image,
			int radio_anchor_userid) {
		super();
		this.radio_anchor_id = radio_anchor_id;
		this.radio_anchor_name = radio_anchor_name;
		this.radio_anchor_image = radio_anchor_image;
		this.radio_anchor_userid = radio_anchor_userid;
	}

	public int getRadio_anchor_id() {
		return radio_anchor_id;
	}

	public void setRadio_anchor_id(int radio_anchor_id) {
		this.radio_anchor_id = radio_anchor_id;
	}

	public String getRadio_anchor_name() {
		return radio_anchor_name;
	}

	public void setRadio_anchor_name(String radio_anchor_name) {
		this.radio_anchor_name = radio_anchor_name;
	}

	public String getRadio_anchor_image() {
		return radio_anchor_image.replaceAll("\\\\","/").substring(radio_anchor_image.indexOf("img"));
	}

	public void setRadio_anchor_image(String radio_anchor_image) {
		this.radio_anchor_image = radio_anchor_image;
	}

	public int getRadio_anchor_userid() {
		return radio_anchor_userid;
	}

	public void setRadio_anchor_userid(int radio_anchor_userid) {
		this.radio_anchor_userid = radio_anchor_userid;
	}
	
	
	
}
