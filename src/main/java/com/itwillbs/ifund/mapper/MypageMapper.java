package com.itwillbs.ifund.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.ifund.vo.CouponUsedVO;
import com.itwillbs.ifund.vo.CouponVO;
import com.itwillbs.ifund.vo.InquiryVO;
import com.itwillbs.ifund.vo.MakerVO;
import com.itwillbs.ifund.vo.MemberVO;
import com.itwillbs.ifund.vo.PointVO;
import com.itwillbs.ifund.vo.ProjectVO;

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
	public List<CouponVO> selectCoupon(Integer member_idx);
	public int insertCoupon(CouponVO couponVO);
	public List<MakerVO> selectMaker(Integer member_idx);
	public Integer checkCoupon(@Param("coupon_idx") String coupon_idx, @Param("member_idx") Integer member_idx);
	public int downCoupon(@Param("coupon_idx") String coupon_idx, @Param("member_idx") Integer member_idx);
	public List<CouponVO> myCoupon(Integer member_idx);
	public int joinPoint(String member_email);
//	0609 김애리 추가 - 문의내역
	public List<InquiryVO> selectInquiry(Integer member_idx);
	public InquiryVO getInquiry(@Param("inq_idx") String inq_idx);
	public String inqMaker(Integer member_idx);
	// 2023-06-14 박경은 - 휴대폰 인증완료
	public int updateSmsAuth(int member_idx);
}
