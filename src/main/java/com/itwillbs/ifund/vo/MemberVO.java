package com.itwillbs.ifund.vo;

public class MemberVO {
	private int member_idx;
	private String member_email;
	private String member_passwd;
	private String member_name;
	public MemberVO() {}
	public MemberVO(int member_idx, String member_email, String member_passwd, String member_name) {
		this.member_idx = member_idx;
		this.member_email = member_email;
		this.member_passwd = member_passwd;
		this.member_name = member_name;
	}

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
	
}
