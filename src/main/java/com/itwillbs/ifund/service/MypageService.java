package com.itwillbs.ifund.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.ifund.mapper.MypageMapper;
import com.itwillbs.ifund.vo.CouponVO;
import com.itwillbs.ifund.vo.InquiryVO;
import com.itwillbs.ifund.vo.MakerVO;
import com.itwillbs.ifund.vo.MemberVO;
import com.itwillbs.ifund.vo.PointVO;
import com.itwillbs.ifund.vo.ProjectListVO;
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
	public List<ProjectListVO> selectWish(Integer member_idx) {
		return mapper.selectWish(member_idx) != null ? mapper.selectWish(member_idx) : null;
	}
	public List<ProjectVO> selectHistory(Integer member_idx) {
		return mapper.selectHistory(member_idx);
	}
	public int updateProfile(MemberVO memberVO) {
		return mapper.updateProfile(memberVO);
	}
	public List<CouponVO> selectCoupon(Integer member_idx) {
		return mapper.selectCoupon(member_idx);
	}
	public int insertCoupon(CouponVO couponVO) {
		return mapper.insertCoupon(couponVO);
	}
	public List<MakerVO> selectMaker(Integer member_idx) {
		return mapper.selectMaker(member_idx);
	}
	public Integer checkCoupon(String coupon_idx, Integer member_idx) {
		return mapper.checkCoupon(coupon_idx, member_idx);
	}
	public int downCoupon(String coupon_idx, Integer member_idx) {
	    return mapper.downCoupon(coupon_idx, member_idx);
	}
	public List<CouponVO> myCoupon(Integer member_idx) {
		return mapper.myCoupon(member_idx);
	}
	public int joinPoint(String member_email) {
	    return mapper.joinPoint(member_email);
	}
	
//	0609 김애리 추가 - 문의내역 조회
	public List<InquiryVO> selectInquiry(Integer member_idx) {
		return mapper.selectInquiry(member_idx);
	}
	public List myInquiry(Integer member_idx, Integer maker_idx, int listLimit, int startRow) {
		return mapper.myInquiry(member_idx, maker_idx, listLimit, startRow);
	}
	public Integer myInquiryCount(Integer member_idx) {
		return mapper.myInquiryCount(member_idx);
	}
	public InquiryVO getInquiry(String inq_idx) {
		return mapper.getInquiry(inq_idx);
	}
	
	
//	0612 김애리 추가 - 메이커문의
	public List<InquiryVO> supInquiry(Integer member_idx, int listLimit, int startRow) {
		return mapper.supInquiry(member_idx, listLimit, startRow);
	}
	public List<InquiryVO> selectSupInquiry(List<String> maker, int listLimit, int startRow) {
		return mapper.selectSupInquiry(maker, listLimit, startRow);
	}
	public List selectMakerIdx(Integer member_idx) {
		return mapper.selectMakerIdx(member_idx);
	}
	public Map<String, Object> selectMakerName(String maker) {
		return mapper.selectMakerName(maker);
	}
	
//	0613 김애리 추가 - 보유 쿠폰 갯수
	public int countCoupon(Integer member_idx) {
		return mapper.countCoupon(member_idx);
	}
	public int countPayment(Integer member_idx) {
		return mapper.countPayment(member_idx);
	}
	
//	0613 김애리 추가 - 참여한 펀딩 내역
	public List selectPayment(Integer member_idx) {
		return mapper.selectPayment(member_idx);
	}
	public Map<Object, Object> selectPaymentMap(Integer member_idx, int payment_idx) {
		return mapper.selectPaymentMap(member_idx, payment_idx);
	}
	
//	0614 김애리 추가 - 서포터문의
	public List SupInquiry(Integer member_idx, List maker_idx, int listLimit, int startRow) {
		return mapper.SupInquiry(member_idx, maker_idx, listLimit, startRow);
	}
	public Integer SupInquiryCount(List maker_idx) {
		return mapper.SupInquiryCount(maker_idx);
	}
	public int insertReply(InquiryVO inquiryVO) {
		mapper.updateProgress(inquiryVO);
		return mapper.insertReply(inquiryVO);
	}
	public int countProject(int member_idx) {
		return mapper.countProject(member_idx);
	}
	
	// 2023-06-14 박경은 - 휴대폰 인증완료
	public int updateSmsAuth(int member_idx) {
		return mapper.updateSmsAuth(member_idx);
	}
	
}
