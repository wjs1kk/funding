package com.itwillbs.ifund.vo;

public class MakerVO {
	
	
	private int maker_idx;
	private int member_idx;
	String maker_type;
	String maker_name;
	String maker_image;
	String maker_phone;
	String maker_email;
	public int getMaker_idx() {
		return maker_idx;
	}
	public void setMaker_idx(int maker_idx) {
		this.maker_idx = maker_idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getMaker_type() {
		return maker_type;
	}
	public void setMaker_type(String maker_type) {
		this.maker_type = maker_type;
	}
	public String getMaker_name() {
		return maker_name;
	}
	public void setMaker_name(String maker_name) {
		this.maker_name = maker_name;
	}
	public String getMaker_image() {
		return maker_image;
	}
	public void setMaker_image(String maker_image) {
		this.maker_image = maker_image;
	}
	public String getMaker_phone() {
		return maker_phone;
	}
	public void setMaker_phone(String maker_phone) {
		this.maker_phone = maker_phone;
	}
	public String getMaker_email() {
		return maker_email;
	}
	public void setMaker_email(String maker_email) {
		this.maker_email = maker_email;
	}
	@Override
	public String toString() {
		return "MakerVO [maker_idx=" + maker_idx + ", member_idx=" + member_idx + ", maker_type=" + maker_type
				+ ", maker_name=" + maker_name + ", maker_image=" + maker_image + ", maker_phone=" + maker_phone
				+ ", maker_email=" + maker_email + "]";
	}
	

}
