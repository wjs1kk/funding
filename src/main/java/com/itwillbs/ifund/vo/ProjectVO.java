package com.itwillbs.ifund.vo;

import java.sql.Date;

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
	private int project_plan; 
	private String project_type;
	private String project_target;
	private String project_approve_status;
	private String project_introduce;
	private String project_adult;
	private String project_identity;
	private String project_reward_category;
	private int project_reward_produce_type;
	private String project_documents;
	private String project_AS;
	private int maker_idx;
	private String project_create_date;
	private String project_update_status;
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
	public int getProject_plan() {
		return project_plan;
	}
	public void setProject_plan(int project_plan) {
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
	public String getProject_approve_status() {
		return project_approve_status;
	}
	public void setProject_approve_status(String project_approve_status) {
		this.project_approve_status = project_approve_status;
	}
	public String getProject_introduce() {
		return project_introduce;
	}
	public void setProject_introduce(String project_introduce) {
		this.project_introduce = project_introduce;
	}
	public String getProject_adult() {
		return project_adult;
	}
	public void setProject_adult(String project_adult) {
		this.project_adult = project_adult;
	}
	public String getProject_identity() {
		return project_identity;
	}
	public void setProject_identity(String project_identity) {
		this.project_identity = project_identity;
	}
	public String getProject_reward_category() {
		return project_reward_category;
	}
	public void setProject_reward_category(String project_reward_category) {
		this.project_reward_category = project_reward_category;
	}
	public int getProject_reward_produce_type() {
		return project_reward_produce_type;
	}
	public void setProject_reward_produce_type(int project_reward_produce_type) {
		this.project_reward_produce_type = project_reward_produce_type;
	}
	public String getProject_documents() {
		return project_documents;
	}
	public void setProject_documents(String project_documents) {
		this.project_documents = project_documents;
	}
	public String getProject_AS() {
		return project_AS;
	}
	public void setProject_AS(String project_AS) {
		this.project_AS = project_AS;
	}
	public int getMaker_idx() {
		return maker_idx;
	}
	public void setMaker_idx(int maker_idx) {
		this.maker_idx = maker_idx;
	}
	public String getProject_create_date() {
		return project_create_date;
	}
	public void setProject_create_date(String project_create_date) {
		this.project_create_date = project_create_date;
	}
	public String getProject_update_status() {
		return project_update_status;
	}
	public void setProject_update_status(String project_update_status) {
		this.project_update_status = project_update_status;
	}
	@Override
	public String toString() {
		return "ProjectVO [project_idx=" + project_idx + ", member_idx=" + member_idx + ", project_category="
				+ project_category + ", project_title=" + project_title + ", project_content=" + project_content
				+ ", project_summary=" + project_summary + ", project_thumbnail=" + project_thumbnail
				+ ", project_images=" + project_images + ", project_start_date=" + project_start_date
				+ ", project_end_date=" + project_end_date + ", project_coming_soon_date=" + project_coming_soon_date
				+ ", project_plan=" + project_plan + ", project_type=" + project_type + ", project_target="
				+ project_target + ", project_approve_status=" + project_approve_status + ", project_introduce="
				+ project_introduce + ", project_adult=" + project_adult + ", project_identity=" + project_identity
				+ ", project_reward_category=" + project_reward_category + ", project_reward_produce_type="
				+ project_reward_produce_type + ", project_documents=" + project_documents + ", project_AS="
				+ project_AS + ", maker_idx=" + maker_idx + ", project_create_date=" + project_create_date
				+ ", project_update_status=" + project_update_status + "]";
	}
	
}
