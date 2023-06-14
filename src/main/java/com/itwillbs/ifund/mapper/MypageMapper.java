package com.itwillbs.ifund.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.ifund.vo.CouponVO;
import com.itwillbs.ifund.vo.InquiryVO;
import com.itwillbs.ifund.vo.MakerVO;
import com.itwillbs.ifund.vo.MemberVO;
import com.itwillbs.ifund.vo.PaymentVO;
import com.itwillbs.ifund.vo.PointVO;
import com.itwillbs.ifund.vo.ProjectListVO;
import com.itwillbs.ifund.vo.ProjectVO;

public interface MypageMapper {
	//0516수정
	public MemberVO selectUser(Integer member_idx);
	public String selectPasswd(Integer member_idx);
	public int updateUser(MemberVO memberVO);
	public List<PointVO> selectPoint(Integer member_idx);
	public int deleteMember(Integer member_idx);
	public List<ProjectListVO> selectWish(Integer member_idx);
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
	List myInquiry(@Param("member_idx") Integer member_idx, @Param("maker_idx") Integer maker_idx, @Param("listLimit") int listLimit, @Param("startRow") int startRow);
	public Integer myInquiryCount(Integer member_idx);
	List<InquiryVO> supInquiry(@Param("member_idx") Integer member_idx, @Param("listLimit") int listLimit, @Param("startRow") int startRow);
	public String inqMaker(Integer member_idx);
	public List<InquiryVO> selectSupInquiry(@Param("maker") List<String> maker, @Param("listLimit") int listLimit, @Param("startRow") int startRow);
	public List selectMakerIdx(Integer member_idx);
	public Map<String, Object> selectMakerName(String maker);
	public int countCoupon(Integer member_idx);
	public int countPayment(Integer member_idx);
	
//	0613 김애리 추가 - 참여한 펀딩내역
	public List selectPayment(Integer member_idx);
	public Map<Object, Object> selectPaymentMap(@Param("member_idx") Integer member_idx, @Param("payment_idx") int payment_idx);
	
	
	List SupInquiry(@Param("member_idx") Integer member_idx, @Param("maker_idx") List maker_idx, @Param("listLimit") int listLimit, @Param("startRow") int startRow);
	public Integer SupInquiryCount(List maker_idx);
	public void updateProgress(InquiryVO inquiryVO);
	public int insertReply(InquiryVO inquiryVO);
	

}
