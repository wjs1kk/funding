package com.itwillbs.funding.mapper;

import java.util.List;
import java.util.Map;

import com.itwillbs.funding.vo.ProjectListVO;
import com.itwillbs.funding.vo.RewardVO;


public interface FundingMapper {
	public List<ProjectListVO> selectFundingProject();
	public Map<String, Object> selectFundingDetail(int project_idx);
	public Map<String, Object> selectMaker(int member_idx);
	public List<RewardVO> selectReward(int project_idx);
}
