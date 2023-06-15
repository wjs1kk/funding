package com.itwillbs.ifund.vo;

import java.sql.Timestamp;

public class AccountHistoryVO {
	private int history_idx;
	private int project_idx;
	private String member_name;
	private String history_status;
	private int tran_amt;	
	@Override
	public String toString() {
		return "AccountHistoryVO [history_idx=" + history_idx + ", project_idx=" + project_idx + ", member_name="
				+ member_name + ", history_status=" + history_status + ", tran_amt=" + tran_amt + ", balance=" + balance
				+ ", confirmDate=" + confirmDate + "]";
	}
	public int getHistory_idx() {
		return history_idx;
	}
	public void setHistory_idx(int history_idx) {
		this.history_idx = history_idx;
	}
	public int getProject_idx() {
		return project_idx;
	}
	public void setProject_idx(int project_idx) {
		this.project_idx = project_idx;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getHistory_status() {
		return history_status;
	}
	public void setHistory_status(String history_status) {
		this.history_status = history_status;
	}
	public int getTran_amt() {
		return tran_amt;
	}
	public void setTran_amt(int tran_amt) {
		this.tran_amt = tran_amt;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public Timestamp getConfirmDate() {
		return confirmDate;
	}
	public void setConfirmDate(Timestamp confirmDate) {
		this.confirmDate = confirmDate;
	}
	private int balance;
	private Timestamp confirmDate;
	

	
}















