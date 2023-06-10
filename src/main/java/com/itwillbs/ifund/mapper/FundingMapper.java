package com.itwillbs.ifund.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.ifund.vo.ProjectListVO;
import com.itwillbs.ifund.vo.RewardVO;


public interface FundingMapper {
	public List<RewardVO> selectReward(int project_idx);
	public Map<String, String> selectProject();
	public List<ProjectListVO> selectFundingProject(@Param("category") String category, @Param("order") String order);
	public List<ProjectListVO> selectPreorderProject(@Param("category") String category, @Param("order") String order);
	public List categoryList();
	public List selectComingsoonProject(@Param("category") String category, @Param("order") String order);
	public Map<String, Object> fundingDetail(int project_idx);
	// 06-09 김동욱 결제할 리워드 가져오기
	public Map getPayReward(int reward_idx);
	// 06-09 김동욱 포인트 가져오기
	public int getMyPoint(int member_idx);
	// 06-09 김동욱 사용가능한 쿠폰리스트 가져오기
	public List getMyCouponList(int member_idx);
}
