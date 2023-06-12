package com.itwillbs.ifund.vo;

public class CalculateVO {
	private int calculate_idx;
	private int member_idx;
	private int project_idx;
	private String project_title;
	private int calculate_fee;
	private int calculate_approve;
	
	
	
	public int getCalculate_idx() {
		return calculate_idx;
	}



	public void setCalculate_idx(int calculate_idx) {
		this.calculate_idx = calculate_idx;
	}



	public int getMember_idx() {
		return member_idx;
	}



	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}



	public int getProject_idx() {
		return project_idx;
	}



	public void setProject_idx(int project_idx) {
		this.project_idx = project_idx;
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



	public int getCalculate_approve() {
		return calculate_approve;
	}



	public void setCalculate_approve(int calculate_approve) {
		this.calculate_approve = calculate_approve;
	}



	@Override
	public String toString() {
		return "CalculateVO [calculate_idx=" + calculate_idx + ", member_idx=" + member_idx + ", project_idx="
				+ project_idx + ", project_title=" + project_title + ", calculate_fee=" + calculate_fee
				+ ", calculate_approve=" + calculate_approve + "]";
	}
	
	
}
