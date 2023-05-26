package com.itwillbs.funding.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.funding.mapper.MemberMapper;
import com.itwillbs.funding.mapper.ProjectCreateMapper;
import com.itwillbs.funding.vo.MakerVO;
import com.itwillbs.funding.vo.MemberVO;
import com.itwillbs.funding.vo.ProjectVO;
import com.itwillbs.funding.vo.RewardVO;

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
	
	// 05-17 김동욱 프로젝트 스토리 작성 업데이트(project_summary, project_content, project_image)
	public int projectStoryUpdate(ProjectVO project) {
		return mapper.projectStoryUpdate(project);
	}
	// 05-18 김동욱 프로젝트 추가하면서 리워드 리스트 출력
	public List<RewardVO> getProjectReward(Map reward) {
		return mapper.getProjectReward(reward);
	}
	// 05-18 김동욱 프로젝트 리워드 추가
	public int projectRewardAdd(Map reward) {
		return mapper.projectRewardAdd(reward);
	}
	// 05-18 김동욱 AJAX 리워드 수정 정보 가져오기
	public RewardVO getRewardDetail(int reward_idx) {
		return mapper.getRewardDetail(reward_idx);
	}
	//05-19 강정운 요금제 선택 업데이트
	public int planUpdate(ProjectVO project) {
		return mapper.projectPlanUpdate(project);
	}
	//05-22 강정운 프로젝트 정보 업데이트
	public int InfoUpdate(ProjectVO project) {
		return mapper.InfoUpdate(project);
	}
	//05-23 강정운 기본정보 업데이트
	public int projectBaseInfoUpdate(ProjectVO project) {
		return mapper.projectBaseInfoUpdate(project);
	}	
	//05-23 강정운 기본정보 파일업데이트
	public int projectBaseInfoFileUpdate(ProjectVO project) {
		return mapper.projectBaseInfoFileUpdate(project);
	}

	public int projectInfoFileUpdate(ProjectVO project) {
		return mapper.projectInfoFileUpdate(project);
	}

	
	// 05-19 김동욱 AJAX 리워드 정보 수정하기
	public int rewardModify(RewardVO reward) {
		return mapper.rewardModify(reward);
	}
	
	// 05-19 김동욱 AJAX 리워드 삭제하기
	public int rewardDelete(int reward_idx) {
		return mapper.rewardDelete(reward_idx);
	}
	// 05-22 김동욱 기존 등록된 이미지 가져오기
	public String getImages(int project_idx) {
		return mapper.getImages(project_idx);
	}
	// 05-22 김동욱 AJAX 이미지 추가
	public int projectAddImages(ProjectVO project) {
		return mapper.projectAddImages(project);
	}
	// 05-22 김동욱 AJAX 프로젝트 스토리 정보 가져오기
	public ProjectVO getProjectStory(int project_idx) {
		return mapper.getProjectStory(project_idx);
	}
	
	// 05-25 김동욱 등록된 메이커 리스트 가져오기
	public List<MakerVO> getMakerList(int member_idx) {
		return mapper.getMakerList(member_idx);
	}

	// 05-25 김동욱 메이커 정보 등록하기
	public int makerInfoInsert(MakerVO makerInfo) {
		return mapper.makerInfoInsert(makerInfo);
	}

	// 05-25 김동욱 등록된 메이커 정보 가져오기
	public MakerVO getMakerInfo(int maker_idx) {
		return mapper.getMakerInfo(maker_idx);
	}

	// 05-25 김동욱 메이커 정보 수정
	public int makerInfoUpdate(MakerVO makerInfo) {
		return mapper.makerInfoUpdate(makerInfo);
	}
	
	// 05-25 김동욱 maker정보를 클릭하면 프로젝트 테이블에 maker_idx 업데이트
	public int projectMakerIdxUpdate(int maker_idx, int project_idx) {
		return mapper.projectMakerIdxUpdate(maker_idx, project_idx);
	}

	// 05-26 김동욱 해당 프로젝트에 등록된 메이커 정보 가져오기
	public MakerVO myProjectMakerInfo(int project_idx) {
		return mapper.myProjectMakerInfo(project_idx);
	}
	
	// 05-26 김동욱 메이커 정보 삭제
	public int deleteMakerInfo(int maker_idx) {
		return mapper.deleteMakerInfo(maker_idx);
	}
	// 05-26 김동욱 프로젝트 플랜 정보 가져오기
	public String getProjectPlan(int project_idx) {
		return mapper.getProjectPlan(project_idx);
	}
		
}
