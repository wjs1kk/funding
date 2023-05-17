package com.itwillbs.funding.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.funding.mapper.MemberMapper;
import com.itwillbs.funding.mapper.ProjectCreateMapper;
import com.itwillbs.funding.vo.MemberVO;
import com.itwillbs.funding.vo.ProjectVO;

@Service
public class ProjectCreateService {
	@Autowired
	private ProjectCreateMapper mapper;
	
	// 05-16 김동욱 top.jsp에서 프로젝트 만들기 버튼 누를 시 새로운 프로젝트 생성
	public int createFundingProject(int member_idx) {
		return mapper.createFundingProject(member_idx);
	}

	// 05-16 김동욱 메이커 마이페이지에서 자신이 생성한 프로젝트 리스트 출력 기능 추가
	public List<ProjectVO> getProjectList(int member_idx) {
		return mapper.getProjectList(member_idx);
	}
	
}
