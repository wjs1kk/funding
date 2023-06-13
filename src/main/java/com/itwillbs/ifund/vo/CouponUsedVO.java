package com.itwillbs.ifund.vo;

public class CouponUsedVO {
	private String coupon_idx;
	private int member_idx;
	private String coupon_useable;
	
	public CouponUsedVO() {}

	public CouponUsedVO(String coupon_idx, int member_idx, String coupon_useable) {
		super();
		this.coupon_idx = coupon_idx;
		this.member_idx = member_idx;
		this.coupon_useable = coupon_useable;
	}

	public String getCoupon_idx() {
		return coupon_idx;
	}

	public void setCoupon_idx(String coupon_idx) {
		this.coupon_idx = coupon_idx;
	}

	public int getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}

	public String getCoupon_useable() {
		return coupon_useable;
	}

	public void setCoupon_useable(String coupon_useable) {
		this.coupon_useable = coupon_useable;
	}

	@Override
	public String toString() {
		return "CouponUsedVO [coupon_idx=" + coupon_idx + ", member_idx=" + member_idx + ", coupon_useable="
				+ coupon_useable + "]";
	}
	

	
	
	
	
	
}