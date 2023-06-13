package com.itwillbs.ifund.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.ifund.mapper.FundingMapper;
import com.itwillbs.ifund.vo.ProjectListVO;
import com.itwillbs.ifund.vo.RewardVO;


@Service
public class FundingService {
	@Autowired
	private FundingMapper mapper;
//	모든 프로젝트 detail 검색
//	public List<ProjectListVO> selectFundingProject(){
//		return mapper.selectFundingProject() != null ? mapper.selectFundingProject() : null;
//	}
	public List<RewardVO> selectReward(int project_idx){
		return mapper.selectReward(project_idx);
	}
	public Map<String, String> selectProject() {
		return mapper.selectProject();
	}
	public List<ProjectListVO> selectFundingProject(String category, String order) {
		return mapper.selectFundingProject(category, order);
	}
	public List<ProjectListVO> selectPreorderProject(String category, String order) {
		return mapper.selectPreorderProject(category, order);
	}
	public List categoryList() {
		return mapper.categoryList();
	}
	public List selectComingsoonProject(String category, String order) {
		return mapper.selectComingsoonProject(category, order);
	}
	public Map<String, Object> fundingDetail(int project_idx) {
		return mapper.fundingDetail(project_idx);
	}
	// 06-09 김동욱 결제할 리워드 가져오기
	public Map getPayReward(int reward_idx) {
		return mapper.getPayReward(reward_idx);
	}
	// 06-09 김동욱 포인트 가져오기
	public int getMyPoint(int member_idx) {
		return mapper.getMyPoint(member_idx);
	}
	// 06-09 김동욱 사용가능한 쿠폰리스트 가져오기
	public List getMyCouponList(int member_idx) {
		return mapper.getMyCouponList(member_idx);
	}
	// 06-10 김동욱 펀딩 결제하기
	public int payment(Map map) {
		return mapper.payment(map);
	}
	// 06-10 김동욱 리워드 팔린 수량 만큼 플러스 업데이트
	public int rewardSellUpdate(int reward_idx, int reward_quantity) {
		return mapper.rewardSellUpdate(reward_idx, reward_quantity);
	}
	// 06-10 김동욱 사용한 쿠폰 N으로 업데이트
	public int couponUsedUpdate(int coupon_idx) {
		return mapper.couponUsedUpdate(coupon_idx);
	}
	// 06-10 김동욱 포인트 사용하기
	public int usingPoint(int member_idx, int point) {
		return mapper.usingPoint(member_idx, point);
	}
	
	// 06-10 김동욱 프로젝트 디테일 총금액 업데이트
	public int projectDetailAmountUpdate(int project_idx, int total_amount, int member_idx) {
		// 06-11 김동욱 결제 금액의 5프로 포인트 적립
		mapper.pointSaving(total_amount * 0.05, member_idx);
		return mapper.projectDetailAmountUpdate(project_idx, total_amount);
	}
	// 2023-06-13 박경은 - 주목할 만한 프로젝트
	public List<ProjectListVO> selectAttentionProject() {
		return mapper.selectAttentionProject();
	}
	// 2023-06-13 박경은 - 실시간 랭킹
	public List<ProjectListVO> selectRankingProject() {
		return mapper.selectRankingProject();
	}
	// 2023-06-13 박경은 - 얼리버드
	public List<ProjectListVO> selectEarlybirdProject() {
		return mapper.selectEarlybirdProject();
	}
	
	// 06-11 김동욱 포인트 적립
}
