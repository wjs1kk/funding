package com.itwillbs.funding.mapper;

import java.util.List;
import java.util.Map;

import com.itwillbs.funding.vo.ProjectVO;
import com.itwillbs.funding.vo.RewardVO;

public interface ProjectCreateMapper {
	// 05-16 김동욱 top.jsp에서 프로젝트 만들기 버튼 누를 시 새로운 프로젝트 생성
	int createFundingProject(int member_idx);
	// 05-16 김동욱 메이커 마이페이지에서 자신이 생성한 프로젝트 리스트 출력 기능 추가
	List<ProjectVO> getProjectList(int member_idx);
	// 05-17 김동욱 프로젝트 스토리 작성 업데이트(project_summary, project_content, project_image)
	int projectStoryUpdate(ProjectVO project);
	// 05-17 김동욱 프로젝트 리워드 추가
	int projectRewardAdd(Map reward);
	// 05-17 김동욱 프로젝트 추가하면서 리워드 리스트 출력
	List<RewardVO> getProjectReward(Map reward);
	// 05-18 김동욱 리워드 상세 정보 가져오기
	RewardVO getRewardDetail(int reward_idx);
	// 05-19 김동욱 리워드 정보 수정하기
	int rewardModify(RewardVO reward);
	// 05-19 김동욱 AJAX 리워드 삭제하기
	int rewardDelete(int reward_idx);
	// 05-22 김동욱 기존 등록된 이미지 가져오기
	String getImages(int project_idx);
	// 05-22 김동욱 AJAX 이미지 추가
	int projectAddImages(ProjectVO project);
	// 05-22 김동욱 AJAX 프로젝트 스토리 정보 가져오기
	ProjectVO getProjectStory(int project_idx);
}