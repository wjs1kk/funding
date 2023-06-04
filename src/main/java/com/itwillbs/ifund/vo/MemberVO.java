package com.itwillbs.ifund.vo;

public class MemberVO {
	private int member_idx;
	private String member_email;
	private String member_passwd;
	private String member_name;
	private String member_isadmin;
	private String member_interest;
	private String member_image;
	private String member_image_path;
	private String account_auth_status;
	
	
	public int getMember_idx() {
		return member_idx;
	}


	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}


	public String getMember_email() {
		return member_email;
	}


	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}


	public String getMember_passwd() {
		return member_passwd;
	}


	public void setMember_passwd(String member_passwd) {
		this.member_passwd = member_passwd;
	}


	public String getMember_name() {
		return member_name;
	}


	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}


	public String getMember_isadmin() {
		return member_isadmin;
	}


	public void setMember_isadmin(String member_isadmin) {
		this.member_isadmin = member_isadmin;
	}


	public String getMember_interest() {
		return member_interest;
	}


	public void setMember_interest(String member_interest) {
		this.member_interest = member_interest;
	}


	public String getMember_image() {
		return member_image;
	}


	public void setMember_image(String member_image) {
		this.member_image = member_image;
	}


	public String getMember_image_path() {
		return member_image_path;
	}


	public void setMember_image_path(String member_image_path) {
		this.member_image_path = member_image_path;
	}


	public String getAccount_auth_status() {
		return account_auth_status;
	}


	public void setAccount_auth_status(String account_auth_status) {
		this.account_auth_status = account_auth_status;
	}


	@Override
	public String toString() {
		return "MemberVO [member_idx=" + member_idx + ", member_email=" + member_email + ", member_passwd="
				+ member_passwd + ", member_name=" + member_name + ", member_isadmin=" + member_isadmin
				+ ", member_interest=" + member_interest + ", member_image=" + member_image + ", member_image_path="
				+ member_image_path + ", account_auth_status=" + account_auth_status + "]";
	}
	
	
	
	
}