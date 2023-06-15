package com.itwillbs.ifund.vo;

public class ProjectListVO {
	private int project_idx;
	private String project_thumbnail;
	private String project_plan; 
	private String project_target;
	private String project_detail_amount;
	private String project_detail_person; // 2023-06-13 박경은 - 추가
	private String project_category; // 2023-06-13 박경은 - 추가
	private String project_summary; // 2023-06-13 박경은 - 추가
	private String project_introduce; // 2023-06-13 박경은 - 추가
	private String project_end_date;
	private String project_title;
	private String maker_name;
	
	public int getProject_idx() {
		return project_idx;
	}
	public void setProject_idx(int project_idx) {
		this.project_idx = project_idx;
	}
	public String getProject_thumbnail() {
		return project_thumbnail;
	}
	public void setProject_thumbnail(String project_thumbnail) {
		this.project_thumbnail = project_thumbnail;
	}
	public String getProject_plan() {
		return project_plan;
	}
	public void setProject_plan(String prject_plan) {
		this.project_plan = prject_plan;
	}
	public String getProject_target() {
		return project_target;
	}
	public void setProject_target(String project_target) {
		this.project_target = project_target;
	}
	public String getProject_detail_amount() {
		return project_detail_amount;
	}
	public void setProject_detail_amount(String project_detail_amount) {
		this.project_detail_amount = project_detail_amount;
	}
	// 2023-06-13 박경은 - 추가
	public String getProject_detail_person() {
		return project_detail_person;
	}
	// 2023-06-13 박경은 - 추가
	public void setProject_detail_person(String project_detail_person) {
		this.project_detail_person = project_detail_person;
	}
	// 2023-06-13 박경은 - 추가
	public String getProject_category() {
		return project_category;
	}
	// 2023-06-13 박경은 - 추가
	public void setProject_category(String project_category) {
		this.project_category = project_category;
	}
	// 2023-06-13 박경은 - 추가
	public String getProject_summary() {
		return project_summary;
	}
	// 2023-06-13 박경은 - 추가
	public void setProject_summary(String project_summary) {
		this.project_summary = project_summary;
	}
	// 2023-06-13 박경은 - 추가
	public String getProject_introduce() {
		return project_introduce;
	}
	// 2023-06-13 박경은 - 추가
	public void setProject_introduce(String project_introduce) {
		this.project_introduce = project_introduce;
	}
	public String getProject_end_date() {
		return project_end_date;
	}
	public void setProject_end_date(String project_end_date) {
		this.project_end_date = project_end_date;
	}
	public String getProject_title() {
		return project_title;
	}
	public void setProject_title(String project_title) {
		this.project_title = project_title;
	}
	public String getMaker_name() {
		return maker_name;
	}
	public void setMaker_name(String maker_name) {
		this.maker_name = maker_name;
	}
	
}
