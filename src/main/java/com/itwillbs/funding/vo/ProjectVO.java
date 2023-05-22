package com.itwillbs.funding.vo;

public class ProjectVO {
	private int project_idx;
	private int member_idx;
	private String project_category;
	private String project_title;
	private String project_content;
	private String project_summary;
	private String project_thumbnail;
	private String project_images;
	private String project_start_date;
	private String project_end_date;
	private String project_coming_soon_date;
	private String project_plan; 
	private String project_type;
	private String project_target;
	private String project_approve;
	
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

	public String getProject_category() {
		return project_category;
	}

	public void setProject_category(String project_category) {
		this.project_category = project_category;
	}

	public String getProject_title() {
		return project_title;
	}

	public void setProject_title(String project_title) {
		this.project_title = project_title;
	}

	public String getProject_content() {
		return project_content;
	}

	public void setProject_content(String project_content) {
		this.project_content = project_content;
	}

	public String getProject_summary() {
		return project_summary;
	}

	public void setProject_summary(String project_summary) {
		this.project_summary = project_summary;
	}

	public String getProject_thumbnail() {
		return project_thumbnail;
	}

	public void setProject_thumbnail(String project_thumbnail) {
		this.project_thumbnail = project_thumbnail;
	}

	public String getProject_images() {
		return project_images;
	}

	public void setProject_images(String project_images) {
		this.project_images = project_images;
	}

	public String getProject_start_date() {
		return project_start_date;
	}

	public void setProject_start_date(String project_start_date) {
		this.project_start_date = project_start_date;
	}

	public String getProject_end_date() {
		return project_end_date;
	}

	public void setProject_end_date(String project_end_date) {
		this.project_end_date = project_end_date;
	}

	public String getProject_coming_soon_date() {
		return project_coming_soon_date;
	}

	public void setProject_coming_soon_date(String project_coming_soon_date) {
		this.project_coming_soon_date = project_coming_soon_date;
	}

	public String getProject_plan() {
		return project_plan;
	}

	public void setProject_plan(String project_plan) {
		this.project_plan = project_plan;
	}

	public String getProject_type() {
		return project_type;
	}

	public void setProject_type(String project_type) {
		this.project_type = project_type;
	}

	public String getProject_target() {
		return project_target;
	}

	public void setProject_target(String project_target) {
		this.project_target = project_target;
	}

	public String getProject_approve() {
		return project_approve;
	}

	public void setProject_approve(String project_approve) {
		this.project_approve = project_approve;
	}

	@Override
	public String toString() {
		return "ProjectCreateVO [project_idx=" + project_idx + ", member_idx=" + member_idx + ", project_category="
				+ project_category + ", project_title=" + project_title + ", project_content=" + project_content
				+ ", project_summary=" + project_summary + ", project_thumbnail=" + project_thumbnail
				+ ", project_start_date=" + project_start_date + ", project_end_date=" + project_end_date
				+ ", project_coming_soon_date=" + project_coming_soon_date + ", project_plan=" + project_plan
				+ ", project_type=" + project_type + ", project_target=" + project_target + ", project_approve="
				+ project_approve + "]";
	}
	
	
	
}
