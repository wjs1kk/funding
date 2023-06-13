package com.itwillbs.ifund.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.ifund.mapper.MemberMapper;
import com.itwillbs.ifund.mapper.ProjectCreateMapper;
import com.itwillbs.ifund.vo.CalculateVO;
import com.itwillbs.ifund.vo.MakerVO;
import com.itwillbs.ifund.vo.MemberVO;
import com.itwillbs.ifund.vo.ProjectVO;
import com.itwillbs.ifund.vo.RewardVO;

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

	// 05-26 강정운 정책 업데이트
	public int projectPolicyUpdate(ProjectVO project) {
		return mapper.projectPolicyUpdate(project);
	}
	
	// 05-26 김동욱 메이커 정보 삭제
	public int deleteMakerInfo(int maker_idx) {
		return mapper.deleteMakerInfo(maker_idx);
	}
	// 05-26 김동욱 프로젝트 플랜 정보 가져오기
	public String getProjectPlan(int project_idx) {
		return mapper.getProjectPlan(project_idx);
	}
	
	// 05-27 김동욱 AJAX 메이커명 중복 체크
	public String makerNameDuplicateCheck(String maker_name) {
		return mapper.makerNameDuplicateCheck(maker_name);
	}

	// 05-27 김동욱 삭제했던 메이커 정보를 프로젝트 테이블에서 null로 업데이트
	public int deleteProjeckMaker(int maker_idx) {
		return mapper.deleteProjeckMaker(maker_idx);
	}

	// 05-29 김동욱 프로젝트 테이블에서 각 테이블이 업데이트가 되었는 지 체크용
	public Map projectUpdateCheck(int project_idx) {
		return mapper.projectUpdateCheck(project_idx);
	}
	
	// 05-30 김동욱 대표자 및 정산 정보 INSERT
	public int repInfoInsert(Map repInfo) {
		return mapper.repInfoInsert(repInfo);
	}
	
	// 05-30 김동욱 대표자 및 정산 정보 불러오기
	public Map getMyRepresentativeInfo(int member_idx) {
		return mapper.getMyRepresentativeInfo(member_idx);
	}

	// 05-30 김동욱 프로젝트 approve 0으로 업데이트(제출하기)
	public int projectApproveSubmit(int project_idx) {
		return mapper.projectApproveSubmit(project_idx);
	}
	
	// 05-30 김동욱 프로젝트에 메이커 정보를 등록하고 제출을 한번이라도 했었던 프로젝트의 갯수 가져오기
	public int approveProjectCount(int maker_idx) {
		return mapper.approveProjectCount(maker_idx);
	}
	
	// 05-30 김동욱 프로젝트에 메이커 정보를 등록하고 제출을 한번이라도 했었던 프로젝트의 갯수 가져오기(오버로딩)
	public int approveProjectCount(int maker_idx, int project_idx) {
		return mapper.approveProjectCount(maker_idx, project_idx);
	}
	
	// 06-04 김동욱 해당 프로젝트가 자신의 세션값과 동일한 지 확인
	public int myProjectCheck(Integer member_idx, int project_idx) {
		return mapper.myProjectCheck(member_idx, project_idx);
	}

	// 06-02 강정운 프로젝트 제작시 생성된 프로젝트로 이동
	public int projectStart() {
		return mapper.projectStart();		
	}
	// 06-09 강정운 정산내역서
	public Map showFeeCalculate(int project_idx) {
		return mapper.showFeeCalculate(project_idx);
	}
	// 06-12 강정운 정산신청
	public int calculateApply(CalculateVO cal) {
		return mapper.calculateApply(cal);
	}

	public Integer applyCheck(int project_idx) {
		return mapper.applyCheck(project_idx);
	}

	public int memberIdxSearch(int project_idx) {
		return mapper.memberIdxSearch(project_idx);
	}
	// 06-12 김동욱 해당 프로젝트 결제내역 가져오기
	public List getMyPaymentList(int project_idx) {
		return mapper.getMyPaymentList(project_idx);
	}
	
	// 06-12 김동욱 운송장 번호 입력
	public void trackingNumberUpdate(int payment_idx, String tracking_number) {
		mapper.trackingNumberUpdate(payment_idx, tracking_number);
	}
	
	// 06-13 김동욱 프로젝트 현황 통계 정보 가져오기
	public Map myProjectStatus(int project_idx) {
		return mapper.myProjectStatus(project_idx);
	}
	
	// 06-13 김동욱 해당 프로젝트 수정신청
	public void projectModifyApply(int project_idx, String updateStatus) {
		mapper.projectModifyApply(project_idx, updateStatus);
	}

		
}
