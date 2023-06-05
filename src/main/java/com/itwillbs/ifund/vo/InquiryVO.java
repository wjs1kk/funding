package com.itwillbs.ifund.vo;

import java.sql.Date;

public class InquiryVO {
	private String inq_idx;
	private String send_idx;
	private String receive_idx;
	private String inq_content;
	private Date inq_date;
	
	
	public InquiryVO() {}
	public InquiryVO(String inq_idx, String send_idx, String receive_idx, String inq_content, Date inq_date) {
		super();
		this.inq_idx = inq_idx;
		this.send_idx = send_idx;
		this.receive_idx = receive_idx;
		this.inq_content = inq_content;
		this.inq_date = inq_date;
	}
	public String getInq_idx() {
		return inq_idx;
	}
	public void setInq_idx(String inq_idx) {
		this.inq_idx = inq_idx;
	}
	public String getSend_idx() {
		return send_idx;
	}
	public void setSend_idx(String send_idx) {
		this.send_idx = send_idx;
	}
	public String getReceive_idx() {
		return receive_idx;
	}
	public void setReceive_idx(String receive_idx) {
		this.receive_idx = receive_idx;
	}
	public String getInq_content() {
		return inq_content;
	}
	public void setInq_content(String inq_content) {
		this.inq_content = inq_content;
	}
	public Date getInq_date() {
		return inq_date;
	}
	public void setInq_date(Date inq_date) {
		this.inq_date = inq_date;
	}
	@Override
	public String toString() {
		return "InquiryVO [inq_idx=" + inq_idx + ", send_idx=" + send_idx + ", receive_idx=" + receive_idx
				+ ", inq_content=" + inq_content + ", inq_date=" + inq_date + "]";
	}
	
	
	
	
	
	
	
	
	
	
	

	
}