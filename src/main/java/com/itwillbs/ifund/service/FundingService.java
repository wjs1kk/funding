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
}
