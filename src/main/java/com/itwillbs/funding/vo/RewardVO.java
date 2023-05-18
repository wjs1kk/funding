package com.itwillbs.funding.vo;

import java.sql.Date;

public class RewardVO {
	private int reward_idx;
	private int project_idx;
	private String reward_name;
	private String reward_amount;
	private String reward_content;
	private String reward_option;
	private String reward_quantity;
	private String reward_delivery;
	private String reward_delivery_fee;
	private String reward_delivery_date;
	public int getReward_idx() {
		return reward_idx;
	}
	public void setReward_idx(int reward_idx) {
		this.reward_idx = reward_idx;
	}
	public int getProject_idx() {
		return project_idx;
	}
	public void setProject_idx(int project_idx) {
		this.project_idx = project_idx;
	}
	public String getReward_name() {
		return reward_name;
	}
	public void setReward_name(String reward_name) {
		this.reward_name = reward_name;
	}
	public String getReward_amount() {
		return reward_amount;
	}
	public void setReward_amount(String reward_amount) {
		this.reward_amount = reward_amount;
	}
	public String getReward_content() {
		return reward_content;
	}
	public void setReward_content(String reward_content) {
		this.reward_content = reward_content;
	}
	public String getReward_option() {
		return reward_option;
	}
	public void setReward_option(String reward_option) {
		this.reward_option = reward_option;
	}
	public String getReward_quantity() {
		return reward_quantity;
	}
	public void setReward_quantity(String reward_quantity) {
		this.reward_quantity = reward_quantity;
	}
	public String getReward_delivery() {
		return reward_delivery;
	}
	public void setReward_delivery(String reward_delivery) {
		this.reward_delivery = reward_delivery;
	}
	public String getReward_delivery_fee() {
		return reward_delivery_fee;
	}
	public void setReward_delivery_fee(String reward_delivery_fee) {
		this.reward_delivery_fee = reward_delivery_fee;
	}
	public String getReward_delivery_date() {
		return reward_delivery_date;
	}
	public void setReward_delivery_date(String reward_delivery_date) {
		this.reward_delivery_date = reward_delivery_date;
	}
	@Override
	public String toString() {
		return "RewardVO [reward_idx=" + reward_idx + ", project_idx=" + project_idx + ", reward_name=" + reward_name
				+ ", reward_amount=" + reward_amount + ", reward_content=" + reward_content + ", reward_option="
				+ reward_option + ", reward_quantity=" + reward_quantity + ", reward_delivery=" + reward_delivery
				+ ", reward_delivery_fee=" + reward_delivery_fee + ", reward_delivery_date=" + reward_delivery_date
				+ "]";
	}
	
	
	
}
