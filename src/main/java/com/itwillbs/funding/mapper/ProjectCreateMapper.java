package com.itwillbs.funding.mapper;

import java.util.List;

import com.itwillbs.funding.vo.ProjectVO;

public interface ProjectCreateMapper {
	// 05-16 김동욱 top.jsp에서 프로젝트 만들기 버튼 누를 시 새로운 프로젝트 생성
	int createFundingProject(int member_idx);
	// 05-16 김동욱 메이커 마이페이지에서 자신이 생성한 프로젝트 리스트 출력 기능 추가
	List<ProjectVO> getProjectList(int member_idx);
}
