package com.itwillbs.ifund.vo;

import java.sql.Date;

public class CalculateVO {
	
	private int calculate_idx;
	private int project_idx;
	private int member_idx;
	private String project_title;
	private int calculate_fee;
	private String fintech_use_num;
	private int calculate_charge;
	private String calculate_Date;
	
	public int getCalculate_idx() {
		return calculate_idx;
	}
	public void setCalculate_idx(int calculate_idx) {
		this.calculate_idx = calculate_idx;
	}
	public int getProject_idx() {
		return project_idx;
	}
	public void setProject_idx(int project_idx) {
		this.project_idx = project_idx;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public String getProject_title() {
		return project_title;
	}
	public void setProject_title(String project_title) {
		this.project_title = project_title;
	}
	public int getCalculate_fee() {
		return calculate_fee;
	}
	public void setCalculate_fee(int calculate_fee) {
		this.calculate_fee = calculate_fee;
	}
	public String getFintech_use_num() {
		return fintech_use_num;
	}
	public void setFintech_use_num(String fintech_use_num) {
		this.fintech_use_num = fintech_use_num;
	}
	public int getCalculate_charge() {
		return calculate_charge;
	}
	public void setCalculate_charge(int calculate_charge) {
		this.calculate_charge = calculate_charge;
	}
	public String getCalculate_Date() {
		return calculate_Date;
	}
	public void setCalculate_Date(String calculate_Date) {
		this.calculate_Date = calculate_Date;
	}
	
	@Override
	public String toString() {
		return "CalculateVO [calculate_idx=" + calculate_idx + ", project_idx=" + project_idx + ", member_idx="
				+ member_idx + ", project_title=" + project_title + ", calculate_fee=" + calculate_fee
				+ ", fintech_use_num=" + fintech_use_num + ", calculate_charge=" + calculate_charge
				+ ", calculate_Date=" + calculate_Date + "]";
	}
	
}
