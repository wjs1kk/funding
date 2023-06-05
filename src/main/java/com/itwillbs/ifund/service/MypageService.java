package com.itwillbs.ifund.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.ifund.mapper.MypageMapper;
import com.itwillbs.ifund.vo.CouponUsedVO;
import com.itwillbs.ifund.vo.CouponVO;
import com.itwillbs.ifund.vo.InquiryVO;
import com.itwillbs.ifund.vo.MakerVO;
import com.itwillbs.ifund.vo.MemberVO;
import com.itwillbs.ifund.vo.PointVO;
import com.itwillbs.ifund.vo.ProjectVO;

@Service
public class MypageService {
	@Autowired
	private MypageMapper mapper;
	
//	0516수정 
	public MemberVO selectUser(Integer member_idx) {
		return mapper.selectUser(member_idx)!= null ? mapper.selectUser(member_idx) : null;
	}
	public String selectPasswd(Integer member_idx) {
		return mapper.selectPasswd(member_idx);
	}
	public int updateUser(MemberVO memberVO) {
		System.out.println(memberVO);
		return mapper.updateUser(memberVO);
	}
	public List<PointVO> selectPoint(Integer member_idx) {
		return mapper.selectPoint(member_idx);
	}
	public int deleteMember(Integer member_idx) {
		return mapper.deleteMember(member_idx);
	}
	public List<ProjectVO> selectWish(Integer member_idx) {
		return mapper.selectWish(member_idx);
	}
	public List<ProjectVO> selectHistory(Integer member_idx) {
		return mapper.selectHistory(member_idx);
	}
	public int updateProfile(MemberVO memberVO) {
		return mapper.updateProfile(memberVO);
	}
	public List<InquiryVO> sendInquiry(Integer member_idx) {
		return mapper.sendInquiry(member_idx);
	}
	public List<InquiryVO> receiveInquiry(Integer member_idx) {
		return mapper.receiveInquiry(member_idx);
	}
	public List<InquiryVO> selectInquiry(Integer member_idx) {
		return mapper.selectInquiry(member_idx);
	}
	public List<CouponVO> selectCoupon(Integer member_idx) {
		return mapper.selectCoupon(member_idx);
	}
	public int insertCoupon(CouponVO couponVO) {
		return mapper.insertCoupon(couponVO);
	}
	public MakerVO selectMaker(Integer member_idx) {
		return mapper.selectMaker(member_idx);
	}
	public Integer checkCoupon(int coupon_idx, Integer member_idx) {
		return mapper.checkCoupon(coupon_idx, member_idx);
	}
	public int downCoupon(int coupon_idx, Integer member_idx) {
		return mapper.downCoupon(coupon_idx, member_idx);
	}
	public List<CouponUsedVO> myCoupon(Integer member_idx) {
		return mapper.myCoupon(member_idx);
	}

}
