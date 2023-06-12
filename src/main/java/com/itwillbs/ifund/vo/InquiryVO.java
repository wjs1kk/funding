package com.itwillbs.ifund.vo;

import java.sql.Date;

public class InquiryVO {
	private String inq_idx;
	private String member_idx;
	private String maker_idx;
	private String inq_progress;
	private String inq_subject;
	private String inq_content;
	private int inq_re_ref;
	private int inq_re_lev;
	private int inq_re_seq;
	private Date inq_date;
	
	
	public InquiryVO() {}


	public InquiryVO(String inq_idx, String member_idx, String maker_idx, String inq_progress, String inq_subject,
			String inq_content, int inq_re_ref, int inq_re_lev, int inq_re_seq, Date inq_date) {
		super();
		this.inq_idx = inq_idx;
		this.member_idx = member_idx;
		this.maker_idx = maker_idx;
		this.inq_progress = inq_progress;
		this.inq_subject = inq_subject;
		this.inq_content = inq_content;
		this.inq_re_ref = inq_re_ref;
		this.inq_re_lev = inq_re_lev;
		this.inq_re_seq = inq_re_seq;
		this.inq_date = inq_date;
	}


	public String getInq_idx() {
		return inq_idx;
	}


	public void setInq_idx(String inq_idx) {
		this.inq_idx = inq_idx;
	}


	public String getMember_idx() {
		return member_idx;
	}


	public void setMember_idx(String member_idx) {
		this.member_idx = member_idx;
	}


	public String getMaker_idx() {
		return maker_idx;
	}


	public void setMaker_idx(String maker_idx) {
		this.maker_idx = maker_idx;
	}


	public String getInq_progress() {
		return inq_progress;
	}


	public void setInq_progress(String inq_progress) {
		this.inq_progress = inq_progress;
	}


	public String getInq_subject() {
		return inq_subject;
	}


	public void setInq_subject(String inq_subject) {
		this.inq_subject = inq_subject;
	}


	public String getInq_content() {
		return inq_content;
	}


	public void setInq_content(String inq_content) {
		this.inq_content = inq_content;
	}


	public int getInq_re_ref() {
		return inq_re_ref;
	}


	public void setInq_re_ref(int inq_re_ref) {
		this.inq_re_ref = inq_re_ref;
	}


	public int getInq_re_lev() {
		return inq_re_lev;
	}


	public void setInq_re_lev(int inq_re_lev) {
		this.inq_re_lev = inq_re_lev;
	}


	public int getInq_re_seq() {
		return inq_re_seq;
	}


	public void setInq_re_seq(int inq_re_seq) {
		this.inq_re_seq = inq_re_seq;
	}


	public Date getInq_date() {
		return inq_date;
	}

	public void setInq_date(Date inq_date) {
		this.inq_date = inq_date;
	}


	@Override
	public String toString() {
		return "InquiryVO [inq_idx=" + inq_idx + ", member_idx=" + member_idx + ", maker_idx=" + maker_idx
				+ ", inq_progress=" + inq_progress + ", inq_subject=" + inq_subject + ", inq_content=" + inq_content
				+ ", inq_re_ref=" + inq_re_ref + ", inq_re_lev=" + inq_re_lev + ", inq_re_seq=" + inq_re_seq
				+ ", inq_date=" + inq_date + "]";
	}
	
	
	
	
	
	
	
	
	
	

	
}