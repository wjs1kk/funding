package com.itwillbs.funding.mapper;

import java.util.List;

import com.itwillbs.funding.vo.CouponUsedVO;
import com.itwillbs.funding.vo.CouponVO;
import com.itwillbs.funding.vo.InquiryVO;
import com.itwillbs.funding.vo.MakerVO;
import com.itwillbs.funding.vo.MemberVO;
import com.itwillbs.funding.vo.PointVO;
import com.itwillbs.funding.vo.ProjectVO;

public interface MypageMapper {
	//0516수정
	public MemberVO selectUser(Integer member_idx);
	public String selectPasswd(Integer member_idx);
	public int updateUser(MemberVO memberVO);
	public List<PointVO> selectPoint(Integer member_idx);
	public int deleteMember(Integer member_idx);
	public List<ProjectVO> selectWish(Integer member_idx);
	public List<ProjectVO> selectHistory(Integer member_idx);
	public int updateProfile(MemberVO memberVO);
	public List<InquiryVO> sendInquiry(Integer member_idx);
	public List<InquiryVO> receiveInquiry(Integer member_idx);
	public List<InquiryVO> selectInquiry(Integer member_idx);
	public List<CouponVO> selectCoupon(Integer member_idx);
	public int insertCoupon(CouponVO couponVO);
	public MakerVO selectMaker(Integer member_idx);
	public Integer checkCoupon(int coupon_idx, Integer member_idx);
	public int downCoupon(int coupon_idx, Integer member_idx);
	public List<CouponUsedVO> myCoupon(Integer member_idx);
	
}
