package com.itwillbs.funding.vo;

public class PointVO {
	private int point_idx;
	private String member_idx;
	private String point_content;
	private String member_point;
	private String point_used;
	private String point_save;
	
	
	public PointVO() {}
	public PointVO(int point_idx, String member_idx, String point_content, String member_point, String point_used,
			String point_save) {
		super();
		this.point_idx = point_idx;
		this.member_idx = member_idx;
		this.point_content = point_content;
		this.member_point = member_point;
		this.point_used = point_used;
		this.point_save = point_save;
	}
	public int getPoint_idx() {
		return point_idx;
	}
	public void setPoint_idx(int point_idx) {
		this.point_idx = point_idx;
	}
	public String getMember_idx() {
		return member_idx;
	}
	public void setMember_idx(String member_idx) {
		this.member_idx = member_idx;
	}
	public String getPoint_content() {
		return point_content;
	}
	public void setPoint_content(String point_content) {
		this.point_content = point_content;
	}
	public String getMember_point() {
		return member_point;
	}
	public void setMember_point(String member_point) {
		this.member_point = member_point;
	}
	public String getPoint_used() {
		return point_used;
	}
	public void setPoint_used(String point_used) {
		this.point_used = point_used;
	}
	public String getPoint_save() {
		return point_save;
	}
	public void setPoint_save(String point_save) {
		this.point_save = point_save;
	}
	@Override
	public String toString() {
		return "PointVO [point_idx=" + point_idx + ", member_idx=" + member_idx + ", point_content=" + point_content
				+ ", member_point=" + member_point + ", point_used=" + point_used + ", point_save=" + point_save + "]";
	}
	
	
	
	
	
	

	
}