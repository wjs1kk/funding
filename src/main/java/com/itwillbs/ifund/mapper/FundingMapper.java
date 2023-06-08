package com.itwillbs.ifund.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.ifund.vo.ProjectListVO;
import com.itwillbs.ifund.vo.RewardVO;


public interface FundingMapper {
//	public List<ProjectListVO> selectFundingProject();
	public Map<String, Object> selectFundingDetail(int project_idx);
	public Map<String, Object> selectMaker(int member_idx);
	public List<RewardVO> selectReward(int project_idx);
	public Map<String, String> selectProject();
	public List<ProjectListVO> selectFundingProject(@Param("category") String category, @Param("order") String order);
	public List<ProjectListVO> selectPreorderProject(@Param("category") String category, @Param("order") String order);
	public List categoryList();
	public List selectComingsoonProject(@Param("category") String category, @Param("order") String order);
	public List selectFunding(int project_idx);
}
