package com.itwillbs.funding.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.funding.vo.MakerVO;
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

	//05-19 강정운 요금제 선택 업데이트
	int projectPlanUpdate(ProjectVO project);
	//05-22 강정운 프로젝트 정보 업데이트
	int InfoUpdate(ProjectVO project);
	//05-23 강정운 기본정보 업데이트
	int projectBaseInfoUpdate(ProjectVO project);
	//05-23 강정운 기본정보 파일업데이트	
	int projectBaseInfoFileUpdate(ProjectVO project);
	
	int projectInfoFileUpdate(ProjectVO project);


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
	// 05-25 김동욱 등록된 메이커 리스트 가져오기
	List<MakerVO> getMakerList(int member_idx);
	// 05-25 김동욱 메이커 등록하기
	int makerInfoInsert(MakerVO makerInfo);
	// 05-25 김동욱 등록된 메이커 정보 가져오기
	MakerVO getMakerInfo(int maker_idx);
	// 05-25 김동욱 메이커 정보 수정
	int makerInfoUpdate(MakerVO makerInfo);
	// 05-25 김동욱 maker정보를 클릭하면 프로젝트 테이블에 maker_idx 업데이트
	int projectMakerIdxUpdate(@Param("maker_idx") int maker_idx, @Param("project_idx") int project_idx);
	// 05-26 김동욱 해당 프로젝트에 등록된 메이커 정보 가져오기
	MakerVO myProjectMakerInfo(int project_idx);
	// 05-26 김동욱 메이커 정보 삭제
	int deleteMakerInfo(int maker_idx);
	// 05-26 김동욱 프로젝트 플랜 정보 가져오기
	String getProjectPlan(int project_idx);
	// 05-27 김동욱 AJAX 메이커명 중복 체크
	String makerNameDuplicateCheck(String maker_name);
	// 05-27 김동욱 삭제했던 메이커 정보를 프로젝트 테이블에서 null로 업데이트
	int deleteProjeckMaker(int maker_idx);
	// 05-29 김동욱 프로젝트 테이블에서 각 테이블이 업데이트가 되었는 지 체크용
	Map projectUpdateCheck(int project_idx);
}
