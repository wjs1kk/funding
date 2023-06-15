package com.itwillbs.ifund.vo;

public class CouponVO {
	private Integer coupon_idx;
	private String coupon_name;
	private String coupon_code;
	private String coupon_start;
	private String coupon_end;
	private String coupon_percent;
	private String coupon_isadmin;
	private int member_idx;
	private int maker_idx;
	public Integer getCoupon_idx() {
		return coupon_idx;
	}
	public void setCoupon_idx(Integer coupon_idx) {
		this.coupon_idx = coupon_idx;
	}
	public String getCoupon_name() {
		return coupon_name;
	}
	public void setCoupon_name(String coupon_name) {
		this.coupon_name = coupon_name;
	}
	public String getCoupon_code() {
		return coupon_code;
	}
	public void setCoupon_code(String coupon_code) {
		this.coupon_code = coupon_code;
	}
	public String getCoupon_start() {
		return coupon_start;
	}
	public void setCoupon_start(String coupon_start) {
		this.coupon_start = coupon_start;
	}
	public String getCoupon_end() {
		return coupon_end;
	}
	public void setCoupon_end(String coupon_end) {
		this.coupon_end = coupon_end;
	}
	public String getCoupon_percent() {
		return coupon_percent;
	}
	public void setCoupon_percent(String coupon_percent) {
		this.coupon_percent = coupon_percent;
	}
	public String getCoupon_isadmin() {
		return coupon_isadmin;
	}
	public void setCoupon_isadmin(String coupon_isadmin) {
		this.coupon_isadmin = coupon_isadmin;
	}
	public int getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(int member_idx) {
		this.member_idx = member_idx;
	}
	public int getMaker_idx() {
		return maker_idx;
	}
	public void setMaker_idx(int maker_idx) {
		this.maker_idx = maker_idx;
	}
	@Override
	public String toString() {
		return "CouponVO [coupon_idx=" + coupon_idx + ", coupon_name=" + coupon_name + ", coupon_code=" + coupon_code
				+ ", coupon_start=" + coupon_start + ", coupon_end=" + coupon_end + ", coupon_percent=" + coupon_percent
				+ ", coupon_isadmin=" + coupon_isadmin + ", member_idx=" + member_idx + ", maker_idx=" + maker_idx
				+ "]";
	}
	
	
	
}