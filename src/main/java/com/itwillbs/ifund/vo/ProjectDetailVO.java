package com.itwillbs.ifund.vo;

public class ProjectDetailVO {
	private int project_detail_idx;
	private int project_idx;
	private String project_detail_person;
	private String project_detail_amount;
	private String project_detail_target;
	public int getProject_detail_idx() {
		return project_detail_idx;
	}
	public void setProject_detail_idx(int project_detail_idx) {
		this.project_detail_idx = project_detail_idx;
	}
	public int getProject_idx() {
		return project_idx;
	}
	public void setProject_idx(int project_idx) {
		this.project_idx = project_idx;
	}
	public String getProject_detail_person() {
		return project_detail_person;
	}
	public void setProject_detail_person(String project_detail_person) {
		this.project_detail_person = project_detail_person;
	}
	public String getProject_detail_amount() {
		return project_detail_amount;
	}
	public void setProject_detail_amount(String project_detail_amount) {
		this.project_detail_amount = project_detail_amount;
	}
	public String getProject_detail_target() {
		return project_detail_target;
	}
	public void setProject_detail_target(String project_detail_target) {
		this.project_detail_target = project_detail_target;
	}
	@Override
	public String toString() {
		return "ProjectDetailVO [project_detail_idx=" + project_detail_idx + ", project_idx=" + project_idx
				+ ", project_detail_person=" + project_detail_person + ", project_detail_amount="
				+ project_detail_amount + ", project_detail_target=" + project_detail_target + "]";
	}
	
	
}
