package com.itwillbs.ifund.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.ifund.vo.*;


public interface FundingMapper {
	public List<RewardVO> selectReward(int project_idx);
	public Map<String, String> selectProject();
	public List<ProjectListVO> selectFundingProject(@Param("category") String category, @Param("order") String order, @Param("selectbox") String selectbox);
	public List<ProjectListVO> selectPreorderProject(@Param("category") String category, @Param("order") String order, @Param("selectbox") String selectbox);
	public List categoryList();
	public List selectComingsoonProject(@Param("category") String category, @Param("order") String order);
	public Map<String, Object> fundingDetail(int project_idx);
	public Map<String, Object> fundingDetail();
	// 06-09 김동욱 결제할 리워드 가져오기
	public Map getPayReward(int reward_idx);
	// 06-09 김동욱 포인트 가져오기
	public int getMyPoint(int member_idx);
	// 06-09 김동욱 사용가능한 쿠폰리스트 가져오기
	public List getMyCouponList(int member_idx);
	// 06-10 김동욱 펀딩 결제하기
	public int payment(Map map);
	// 06-10 김동욱 리워드 팔린 수량 만큼 플러스 업데이트
	public int rewardSellUpdate(@Param("reward_idx") int reward_idx, @Param("reward_quantity") int reward_quantity);
	// 06-10 김동욱 사용한 쿠폰 N으로 업데이트
	public int couponUsedUpdate(int coupon_idx);
	// 06-10 김동욱 포인트 사용하기
	public int usingPoint(@Param("member_idx") int member_idx, @Param("point") int point);
	// 06-10 김동욱 프로젝트 디테일 총금액 업데이트
	public int projectDetailAmountUpdate(@Param("project_idx") int project_idx, @Param("total_amount") int total_amount);
	// 06-11 김동욱 결제 금액의 5프로 포인트 적립
	public void pointSaving(@Param("point") double point, @Param("member_idx") int member_idx);
	public int insertInquiry(@Param("inquiry_subject") String inquiry_subject, @Param("inquiry_content") String inquiry_content);
	public int insertInquiry(InquiryVO inquiry);
	// 2023-06-13 박경은 - 메인 오픈예정 프로젝트
	public List<ProjectListVO> selectOpenProject();
	
//	찜하기관련
	public int insertWish(@Param("project_idx") int project_idx, @Param("member_idx") int member_idx);
	public int cancelWish(@Param("project_idx") int project_idx);
	public List<String> selectWish(int member_idx);
//	찜하기관련 끗
//	06/13
	public int countWish(int project_idx);
	// 2023-06-13 박경은 - 오픈예정 프로젝트
	public List selectAttentionProject(ProjectListVO projectList);
	// 2023-06-13 박경은 - 실시간 랭킹
	public List selectRankingProject(ProjectListVO projectList);
	// 2023-06-13 박경은 - 실시간 랭킹2
	public List selectRankingProject2(ProjectListVO projectList);
	// 2023-06-13 박경은 - 얼리버드
	public List selectEarlybirdProject(ProjectListVO projectList, RewardVO reward);
	// 2023-06-13 박경은 - 오늘 오픈
	public List selectTodayOpenProject(ProjectListVO projectList);
	public void updateFunding(ProjectVO project);
}
