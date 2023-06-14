package com.itwillbs.ifund.vo;

public class RepresentativeVO {
	
	private int rep_idx;
	private int member_idx;
	private String rep_name;
	private String rep_email;
	private String rep_tax_eamil;
	private String rep_tax_bank;
	private String rep_tax_account;
	private String rep_tax_depositor;
	public int getRep_idx() {
		return rep_idx;
	}
	public void setRep_idx(int rep_idx) {
		this.rep_idx = rep_idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getRep_name() {
		return rep_name;
	}
	public void setRep_name(String rep_name) {
		this.rep_name = rep_name;
	}
	public String getRep_email() {
		return rep_email;
	}
	public void setRep_email(String rep_email) {
		this.rep_email = rep_email;
	}
	public String getRep_tax_eamil() {
		return rep_tax_eamil;
	}
	public void setRep_tax_eamil(String rep_tax_eamil) {
		this.rep_tax_eamil = rep_tax_eamil;
	}
	public String getRep_tax_bank() {
		return rep_tax_bank;
	}
	public void setRep_tax_bank(String rep_tax_bank) {
		this.rep_tax_bank = rep_tax_bank;
	}
	public String getRep_tax_account() {
		return rep_tax_account;
	}
	public void setRep_tax_account(String rep_tax_account) {
		this.rep_tax_account = rep_tax_account;
	}
	public String getRep_tax_depositor() {
		return rep_tax_depositor;
	}
	public void setRep_tax_depositor(String rep_tax_depositor) {
		this.rep_tax_depositor = rep_tax_depositor;
	}
	
	@Override
	public String toString() {
		return "RepresentativeVO [rep_idx=" + rep_idx + ", member_idx=" + member_idx + ", rep_name=" + rep_name
				+ ", rep_email=" + rep_email + ", rep_tax_eamil=" + rep_tax_eamil + ", rep_tax_bank=" + rep_tax_bank
				+ ", rep_tax_account=" + rep_tax_account + ", rep_tax_depositor=" + rep_tax_depositor + "]";
	}
	
}
