package com.itwillbs.ifund.vo;

import java.sql.Date;

public class PaymentVO {
	private int payment_idx;
	private Date payment_date;
	private int member_idx;
	private int project_idx;
	private String reward_name;
	private int reward_amount;
	private int used_point_amount;
	private int used_coupon_amount;
	private int delivery_fee;
	private int donation;
	private int total_amount;
	private String delivery_address;
	private String delivery_phone_number;
	private String tracking_number;
	
	
	public PaymentVO() {}
	public PaymentVO(int payment_idx, Date payment_date, int member_idx, int project_idx, String reward_name,
			int reward_amount, int used_point_amount, int used_coupon_amount, int delivery_fee, int donation,
			int total_amount, String delivery_address, String delivery_phone_number, String tracking_number) {
		super();
		this.payment_idx = payment_idx;
		this.payment_date = payment_date;
		this.member_idx = member_idx;
		this.project_idx = project_idx;
		this.reward_name = reward_name;
		this.reward_amount = reward_amount;
		this.used_point_amount = used_point_amount;
		this.used_coupon_amount = used_coupon_amount;
		this.delivery_fee = delivery_fee;
		this.donation = donation;
		this.total_amount = total_amount;
		this.delivery_address = delivery_address;
		this.delivery_phone_number = delivery_phone_number;
		this.tracking_number = tracking_number;
	}
	public int getPayment_idx() {
		return payment_idx;
	}
	public void setPayment_idx(int payment_idx) {
		this.payment_idx = payment_idx;
	}
	public Date getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(Date payment_date) {
		this.payment_date = payment_date;
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
	public String getReward_name() {
		return reward_name;
	}
	public void setReward_name(String reward_name) {
		this.reward_name = reward_name;
	}
	public int getReward_amount() {
		return reward_amount;
	}
	public void setReward_amount(int reward_amount) {
		this.reward_amount = reward_amount;
	}
	public int getUsed_point_amount() {
		return used_point_amount;
	}
	public void setUsed_point_amount(int used_point_amount) {
		this.used_point_amount = used_point_amount;
	}
	public int getUsed_coupon_amount() {
		return used_coupon_amount;
	}
	public void setUsed_coupon_amount(int used_coupon_amount) {
		this.used_coupon_amount = used_coupon_amount;
	}
	public int getDelivery_fee() {
		return delivery_fee;
	}
	public void setDelivery_fee(int delivery_fee) {
		this.delivery_fee = delivery_fee;
	}
	public int getDonation() {
		return donation;
	}
	public void setDonation(int donation) {
		this.donation = donation;
	}
	public int getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}
	public String getDelivery_address() {
		return delivery_address;
	}
	public void setDelivery_address(String delivery_address) {
		this.delivery_address = delivery_address;
	}
	public String getDelivery_phone_number() {
		return delivery_phone_number;
	}
	public void setDelivery_phone_number(String delivery_phone_number) {
		this.delivery_phone_number = delivery_phone_number;
	}
	public String getTracking_number() {
		return tracking_number;
	}
	public void setTracking_number(String tracking_number) {
		this.tracking_number = tracking_number;
	}
	
	@Override
	public String toString() {
		return "PaymentVO [payment_idx=" + payment_idx + ", payment_date=" + payment_date + ", member_idx=" + member_idx
				+ ", project_idx=" + project_idx + ", reward_name=" + reward_name + ", reward_amount=" + reward_amount
				+ ", used_point_amount=" + used_point_amount + ", used_coupon_amount=" + used_coupon_amount
				+ ", delivery_fee=" + delivery_fee + ", donation=" + donation + ", total_amount=" + total_amount
				+ ", delivery_address=" + delivery_address + ", delivery_phone_number=" + delivery_phone_number
				+ ", tracking_number=" + tracking_number + "]";
	}
	
	
	
	
	

	
}