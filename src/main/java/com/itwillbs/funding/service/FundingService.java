package com.itwillbs.funding.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.funding.mapper.FundingMapper;

import com.itwillbs.funding.vo.ProjectListVO;
import com.itwillbs.funding.vo.RewardVO;


@Service
public class FundingService {
	@Autowired
	private FundingMapper mapper;
//	모든 프로젝트 detail 검색
	public List<ProjectListVO> selectFundingProject(){
		return mapper.selectFundingProject() != null ? mapper.selectFundingProject() : null;
	}
	public Map<String, Object> selectFundingDetail(int project_idx) {
		return mapper.selectFundingDetail(project_idx);
	}
	public Map<String, Object> selectMaker(int member_idx){
		return mapper.selectMaker(member_idx);
	}
	public List<RewardVO> selectReward(int project_idx){
		return mapper.selectReward(project_idx);
	}
}
