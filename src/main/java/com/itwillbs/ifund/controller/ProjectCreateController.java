package com.itwillbs.ifund.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.StringJoiner;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.ifund.service.ProjectCreateService;
import com.itwillbs.ifund.vo.AccountHistoryVO;
import com.itwillbs.ifund.vo.CalculateVO;
import com.itwillbs.ifund.vo.MakerVO;
import com.itwillbs.ifund.vo.MemberVO;
import com.itwillbs.ifund.vo.ProjectDetailVO;
import com.itwillbs.ifund.vo.ProjectVO;
import com.itwillbs.ifund.vo.RewardVO;

@Controller
public class ProjectCreateController {
	
	// 05-16 김동욱 projectCreateService 추가
	@Autowired
	private ProjectCreateService projectCreateService;
	
	// 06-04 김동욱 해당 프로젝트가 자신의 세션값과 동일한 지 확인 메서드
	private String myProjectCheck(int project_idx, HttpSession session, Model model, String target) {
		if(session.getAttribute("member_idx") == null) {
			return "redirect:/login";
		}
		int member_idx = (Integer)session.getAttribute("member_idx");
		int projectCheckCount = projectCreateService.myProjectCheck(member_idx, project_idx);
		if(projectCheckCount == 0) {
			model.addAttribute("msg", "해당 프로젝트에 대한 접근 권한이 없습니다.");
			return "fail_back";
		}
		return target;
	}
	@GetMapping("intro")
	public String intro(HttpSession session, Model model) {
		if(session.getAttribute("member_idx") == null) {
			return "redirect:/login";
		}
		int member_idx = (int) session.getAttribute("member_idx");
		String memberName = projectCreateService.memberName(member_idx);
		
		
		int projectNum = projectCreateService.projectStart();
		model.addAttribute("projectNum", projectNum);
		model.addAttribute("memberName", memberName);
		return "projectcreate/intro";
	}
	@GetMapping("project/main")
	public String create_funding(int project_idx, HttpSession session, Model model) {
		return myProjectCheck(project_idx, session, model, "projectcreate/create_funding");
	}
	@GetMapping("project/plan")
	public String create_funding_plan_select(int project_idx, HttpSession session, Model model) {
		return myProjectCheck(project_idx, session, model, "projectcreate/create_funding_plan_select");
	}
//	프로젝트 정보
	@GetMapping("project/screening")
	public String create_funding_project_info(int project_idx, HttpSession session, Model model) {
		return myProjectCheck(project_idx, session, model, "projectcreate/create_funding_project_info");
	}
	@GetMapping("project/makerInfo")
	public String create_funding_maker_Info(int project_idx, HttpSession session, Model model) {
		return myProjectCheck(project_idx, session, model, "projectcreate/create_funding_maker_Info");
	}
	@GetMapping("project/contractInfo")
	public String create_funding_contract_Info(int project_idx, HttpSession session, Model model) {
		return myProjectCheck(project_idx, session, model, "projectcreate/create_funding_contract_Info");
	}
	@GetMapping("project/story")
	public String create_funding_project_story(int project_idx, HttpSession session, Model model) {
		return myProjectCheck(project_idx, session, model, "projectcreate/create_funding_project_story");
	}
	@GetMapping("project/policy")
	public String create_funding_project_policy(int project_idx, HttpSession session, Model model) {
		return myProjectCheck(project_idx, session, model, "projectcreate/create_funding_project_policy");
	}
	@GetMapping("project/baseinfo")
	public String create_funding_project_baseInfo(int project_idx, HttpSession session, Model model) {
		return myProjectCheck(project_idx, session, model, "projectcreate/create_funding_project_baseInfo");
	}
	// 05-16 김동욱 리워드 설계 페이지 추가
	@GetMapping("project/reward")
	public String create_funding_project_reward(int project_idx, HttpSession session, Model model) {
		return myProjectCheck(project_idx, session, model, "projectcreate/create_funding_project_reward");
	}
	//05-16 김동욱 top.jsp에서 프로젝트 만들기 버튼 누를 시 새로운 프로젝트 생성
	@GetMapping("projectCreate")
	public String createFundingProject(HttpSession session,Model model) {
		if(session.getAttribute("member_idx") == null) {
			model.addAttribute("msg", "로그인 후 이용가능합니다");
			model.addAttribute("target", "login");
			return "success";
		}
		int member_idx = Integer.parseInt(session.getAttribute("member_idx").toString());
		System.out.println("member_idx : " + member_idx);
		int insertCount = projectCreateService.createFundingProject(member_idx);
		return "redirect:/intro";
	}
	// 05-17 김동욱 마이페이지에서 프로젝트 생성을 누르면 경로가 달라 프로젝트 생성이 안돼서 프로젝트 생성과 같은 코드에 경로만 추가
	@GetMapping("mypage/projectCreate")
	public String myPagecreateFundingProject(HttpSession session, Model model) {
		if(session.getAttribute("member_idx") == null) {
			model.addAttribute("msg", "로그인 후 이용가능합니다");
			model.addAttribute("target", "login");
			return "success";
		}
		
		int member_idx = Integer.parseInt(session.getAttribute("member_idx").toString());
		System.out.println("member_idx : " + member_idx);
		int insertCount = projectCreateService.createFundingProject(member_idx);
		return "redirect:/intro";
	}
	// 05-19 김동욱 프로젝트 스토리 작성 업데이트 AJAX로 변경 및 이미지 다중 파일로 변경 
	// 05-22 김동욱 프로젝트 스토리 작성 업데이트 project_summary와 project_content만 업데이트되게 변경
	@PostMapping("project/projectStoryUpdate")
	@ResponseBody
	public void projectStoryUpdate(HttpSession session, Model model, ProjectVO project) {
		int updateCouunt = projectCreateService.projectStoryUpdate(project);
	}
	
	// 05-18 김동욱 리워드 출력 AJAX
	@PostMapping("project/getProjectReward")
	@ResponseBody
	public String getProjectReward(@RequestParam Map reward) {
		System.out.println(reward);
		List rewardList = projectCreateService.getProjectReward(reward);
		System.out.println(rewardList);
		JSONArray jsonRewardList = new JSONArray(rewardList);
		System.out.println(jsonRewardList);
		
		return jsonRewardList.toString();
	}
	
	// 05-18 김동욱 리워드 추가 기능
	@PostMapping("project/projectRewardAdd")
	@ResponseBody
	public void projectRewardAdd(@RequestParam Map reward) {
		System.out.println("projectRewardAdd: " + reward);
		
		if(reward.get("reward_delivery_date") == "") {
			reward.put("reward_delivery_date", null);
		}
		int insertCount = projectCreateService.projectRewardAdd(reward);
	}
	
	// 05-18 김동욱 AJAX 리워드 수정 정보 가져오기
	@PostMapping("project/getRewardDetail")
	@ResponseBody
	public RewardVO getRewardDetail(int reward_idx) {
		System.out.println("reward_idx : " + reward_idx);
		RewardVO reward = projectCreateService.getRewardDetail(reward_idx);
		System.out.println(reward);
		return reward;
	}
	// 05-18 김동욱 AJAX 리워드 정보 수정하기
	@PostMapping("project/rewardModify")
	@ResponseBody
	public void rewardModify(RewardVO reward) {
		System.out.println(reward);
		int updateCount = projectCreateService.rewardModify(reward);
	}
	// 05-18 김동욱 AJAX 리워드 삭제하기
	@PostMapping("project/rewardDelete")
	@ResponseBody
	public void rewardDelete(int reward_idx) {
		System.out.println("reward_idx : " + reward_idx);
		int deleteCount = projectCreateService.rewardDelete(reward_idx);
	}
	// 05-22 김동욱 AJAX 이미지 추가
	// 05-23 김동욱 AJAX 이미지 추가할 때 업르도되는 파일 경로가 없으면 경로를 생성하는 코드 추가
	@PostMapping("project/imagesUpaload")
	@ResponseBody
	public void imageUpaload(ProjectVO project, MultipartFile[] files, HttpSession session) {
		
		String getImages = projectCreateService.getImages(project.getProject_idx());
		
		String uploadDir = "/resources/images/project_images";
		String saveDir = session.getServletContext().getRealPath(uploadDir);
		
		System.out.println("실제 업로드 경로 : " + saveDir);
		try {
			// Files 클래스의 createDirectories() 메서드를 호출하여 Path 객체가 관리하는 경로 없으면 생성
			// => 거쳐가는 경로들 중 없는 경로는 모두 생성
			Path path = Paths.get(saveDir);
			Files.createDirectories(path);
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		
		StringJoiner sj = new StringJoiner("|");
		
		// 기존 이미지가 null 스트링이 아니면 StringJoiner에 새로 추가
		if(!getImages.equals("")) {
			sj.add(getImages);
		}
		for(MultipartFile mf : files){
			String uuid = UUID.randomUUID().toString();
			System.out.println(uuid.substring(0, 8) + "_" + mf.getOriginalFilename());
			sj.add(uuid.substring(0, 8) + "_" + mf.getOriginalFilename());
			
			try {
				mf.transferTo(new File(saveDir, uuid.substring(0, 8) + "_" + mf.getOriginalFilename()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println(sj);
		project.setProject_images(sj.toString());
		
		int updateCount = projectCreateService.projectAddImages(project);
		System.out.println(updateCount);
		
	}
	
	// 05-22 김동욱 AJAX 프로젝트 이미지 가져오기
	// 05-26 김동욱 오타가 있어서 수정
	@PostMapping("project/getProjectImages")
	@ResponseBody
	public String getProjectImages(int project_idx) {
		String projectImages = projectCreateService.getImages(project_idx);
		String[] projectImagesArr = projectImages.split("\\|");
		List<String> imagesList = new ArrayList<String>();
		
		for(String projectImages2 : projectImagesArr) {
			System.out.println(projectImages2);
			imagesList.add(projectImages2);
		}
		JSONArray jsonImagesList = new JSONArray(imagesList);
		return jsonImagesList.toString();
	}
	
	// 05-22 김동욱 AJAX 프로젝트 이미지 지우기
	// 05-25 김동욱 이미지를 DB에서만 지우는 게 아닌 실제 업로드된 파일도 삭제되도록 수정
	@PostMapping("project/deleteProjectImage")
	@ResponseBody
	public void deleteProjectImage(ProjectVO project, String deleteImage, HttpSession session) {
		String porjectImages = projectCreateService.getImages(project.getProject_idx());
		String[] projectImagesArr = porjectImages.split("\\|");
		
		System.out.println("지울 이미지 : " + deleteImage);
		StringJoiner sj = new StringJoiner("|");
		
		for(String imageList : projectImagesArr) {
			if(!imageList.equals(deleteImage)) {
				sj.add(imageList);
			}
		}
		project.setProject_images(sj.toString());
		int updateCount = projectCreateService.projectAddImages(project);
		
		try {
			String uploadDir = "/resources/images/project_images"; // 프로젝트 상의 업로드 경로
			String saveDir = session.getServletContext().getRealPath(uploadDir); // 실제 업로드 경로
			Path path = Paths.get(saveDir + "/" + deleteImage);
			Files.deleteIfExists(path);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	// 05-22 김동욱 AJAX 프로젝트 스토리 정보 가져오기
	@PostMapping("project/getProjectStory")
	@ResponseBody
	public ProjectVO getProjectStory(int project_idx) {
		System.out.println(project_idx);
		ProjectVO project = projectCreateService.getProjectStory(project_idx);
		System.out.println(project);
		return project;
	}
	
	// 05-25 김동욱 메이커 정보 입력 및 수정
	@PostMapping("project/makerInsertUpdate")
	public String makerInsertUpdate(HttpSession session, MakerVO makerInfo, Model model, int project_idx, MultipartFile makerImage) {
		
		System.out.println(makerImage);
		
		String uuid = UUID.randomUUID().toString();
		System.out.println(uuid.substring(0, 8) + "_" + makerImage.getOriginalFilename());
		
		int member_idx = Integer.parseInt(session.getAttribute("member_idx").toString());
		makerInfo.setMember_idx(member_idx);
		
		String uploadDir = "/resources/images/maker_images"; // 프로젝트 상의 업로드 경로
		String saveDir = session.getServletContext().getRealPath(uploadDir); // 실제 업로드 경로
		System.out.println(saveDir);
		
		if(!makerImage.getOriginalFilename().equals("")) {
			makerInfo.setMaker_image(uuid.substring(0, 8) + "_" + makerImage.getOriginalFilename());
			try {
				Path path = Paths.get(saveDir);
				Files.createDirectories(path);
				makerImage.transferTo(new File(saveDir, uuid.substring(0, 8) + "_" + makerImage.getOriginalFilename()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		if(makerInfo.getMaker_idx() == 0) {
			// 메이커 정보 등록하기
			int insertCount = projectCreateService.makerInfoInsert(makerInfo);
		}else {
			// 메이커 정보 수정하기
			int updateCount = projectCreateService.makerInfoUpdate(makerInfo);
		}
		return "redirect:/project/makerInfo?project_idx=" + project_idx;
	}
	
	// 05-25 김동욱 AJAX 자신이 등록한 메이커 리스트 가져오기
	@PostMapping("project/getMakerList")
	@ResponseBody
	public String getMakerList(int member_idx) {
		List<MakerVO> myMakerList = projectCreateService.getMakerList(member_idx);
		JSONArray jsonArray = new JSONArray(myMakerList);
		return jsonArray.toString();
	}
	
	// 05-25 김동욱 AJAX maker 정보 가져오기 및 project 테이블에 maker_idx 업데이트
	// 06-01 김동욱 제출한 상태에서 메이커 정보를 클릭하면 해당 프로젝트에는 클릭된 메이커 정보가 등록되지 않게 수정
	@PostMapping("project/getMakerInfo")
	@ResponseBody
	public MakerVO getMakerInfo(int maker_idx, int project_idx) {
		System.out.println("getMakerInfo project_idx : " + project_idx);
//		int approveProjectCount = projectCreateService.approveProjectCount(maker_idx, project_idx);
//		System.out.println("getMakerInfo approveProjectCount : "+ approveProjectCount);
		Map projectMap = projectCreateService.projectUpdateCheck(project_idx);
		System.out.println(projectMap.get("project_approve_status").toString());
		
		// project_approve_status가 2와 3이 아니면 project 테이블의 maker_idx 등록
		if(!projectMap.get("project_approve_status").toString().equals("2") && !projectMap.get("project_approve_status").toString().equals("3")) {
			int updateCount = projectCreateService.projectMakerIdxUpdate(maker_idx, project_idx);
		}
		
		MakerVO myMakerInfo = projectCreateService.getMakerInfo(maker_idx);
		return myMakerInfo;
	}
	
	// 05-26 김동욱 해당 프로젝트에 등록된 메이커 정보 가져오기
	@PostMapping("project/myProjectMakerInfo")
	@ResponseBody
	public MakerVO myProjectMakerInfo(int project_idx) {
		MakerVO myProjectMakerInfo = projectCreateService.myProjectMakerInfo(project_idx);
		return myProjectMakerInfo;
	}
	
	// 05-19 강정운 요금제 저장 후
	@PostMapping("project/projectPlanUpdate")
	@ResponseBody
	public void projectPlanUpdate(ProjectVO project) {
		int updateCount = projectCreateService.planUpdate(project);
	}
	
	// 05-22 강정운 프로젝트 정보 업데이트
	@PostMapping("project/projectInfoUpdate")
	@ResponseBody
	public void projectInfoUpdate(ProjectVO project) {
		int updateCount = projectCreateService.InfoUpdate(project);
	}
	
	// 05-23 강정운 기본정보 업데이트
	@PostMapping("project/projectBaseInfoFileUpdate")
	@ResponseBody
	public void projectBaseInfoFileUpdate(ProjectVO project, MultipartFile files, HttpSession session) {
		
		String getImages = projectCreateService.getImages(project.getProject_idx());
			
		String uploadDir = "/resources/images/project_thumbnail"; // 프로젝트 상의 업로드 경로
		String saveDir = session.getServletContext().getRealPath(uploadDir); // 실제 업로드 경로
		System.out.println(saveDir);
		
		String uuid = UUID.randomUUID().toString();
		System.out.println(uuid.substring(0, 8) + "_" + files.getOriginalFilename());
		
		try {
			Path path = Paths.get(saveDir);
			Files.createDirectories(path);
			files.transferTo(new File(saveDir, uuid.substring(0, 8) + "_" + files.getOriginalFilename()));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		project.setProject_thumbnail(uuid.substring(0, 8) + "_" + files.getOriginalFilename());
		int updateCount = projectCreateService.projectBaseInfoFileUpdate(project);
	}
	
	@PostMapping("project/projectBaseInfoUpdate")
	@ResponseBody
	public void projectBaseInfoUpdate(ProjectVO project, MultipartFile files) {
		int updateCount = projectCreateService.projectBaseInfoUpdate(project);
	}
	
	// 05-22 강정운 프로젝트 정보 업데이트
	@PostMapping("project/projectInfoFileUpdate")
	@ResponseBody
	public void projectInfoFileUpdate(ProjectVO project, MultipartFile identity, MultipartFile documents) {
		project.setProject_identity(identity.getOriginalFilename());
		project.setProject_documents(documents.getOriginalFilename());
		int updateCount = projectCreateService.projectInfoFileUpdate(project);
	}
	// 05-26 강정운 정책 업데이트
	@PostMapping("project/projectPolicyUpdate")
	@ResponseBody
	public void projectPolicyUpdate(ProjectVO project) {
		int updateCount = projectCreateService.projectPolicyUpdate(project);
	}
	
	// 05-26 김동욱 메이커 정보 삭제
	// 05-27 김동욱 메이커 정보를 삭제하면 프로젝트에 등록된 메이커 정보들 모두 null로 업데이트 기능 추가
	// 06-01 김동욱 메이커 정보 삭제를 할 때 프로젝트에 사용된 메이커 정보가 제출을 했거나 승인이 되었을 때에는 삭제 불가능
	@PostMapping("project/deleteMakerInfo")
	@ResponseBody
	public int deleteMakerInfo(int maker_idx, int project_idx) {
		
		int approveProjectCount = projectCreateService.approveProjectCount(maker_idx);
		System.out.println("deleteMakerInfo approveProjectCount : " + approveProjectCount);
	
		if(approveProjectCount == 0) {
			// 메이커 테이블에서 삭제
			int deleteCount = projectCreateService.deleteMakerInfo(maker_idx);
			// 삭제했던 메이커 정보를 프로젝트 테이블에서 0으로 업데이트
			int updateCount = projectCreateService.deleteProjeckMaker(maker_idx);
		}
		
		return approveProjectCount;
	}
	
	// 05-26 김동욱 프로젝트 플랜 정보 가져오기
	@PostMapping("project/getProjectPlan")
	@ResponseBody
	public String getProjectPlan(int project_idx) {
		System.out.println(project_idx);
		String myProjectPlan = projectCreateService.getProjectPlan(project_idx);
		return myProjectPlan;
	}
	
	// 05-27 김동욱 AJAX 메이커명 중복 체크
	@PostMapping("project/makerNameDuplicateCheck")
	@ResponseBody
	public String makerNameDuplicateCheck(String maker_name) {
		String makerName = projectCreateService.makerNameDuplicateCheck(maker_name);
		if(makerName == null) {
			return "true";
		}else {
			return "false";
		}
	}
	
	// 05-29 김동욱 프로젝트 테이블에서 각 테이블이 업데이트가 되었는 지 체크용
	@PostMapping("project/projectUpdateCheck")
	@ResponseBody
	public Map projectUpdateCheck(int project_idx) {
		System.out.println(project_idx);
		Map projectMap = projectCreateService.projectUpdateCheck(project_idx);
		return projectMap;
	}
	
	// 05-30 김동욱 대표자 및 정산 정보 INSERT
	@PostMapping("project/repInfoInsert")
	@ResponseBody
	public void repInfoInsert(@RequestParam Map repInfo, HttpSession session) {
		System.out.println(repInfo);
		int member_idx = Integer.parseInt(session.getAttribute("member_idx").toString());
		repInfo.put("member_idx", member_idx);
		int insertCount = projectCreateService.repInfoInsert(repInfo);
	}
	
	// 05-30 김동욱 대표자 및 정산 정보 불러오기
	@PostMapping("project/getMyRepresentativeInfo")
	@ResponseBody
	public Map getMyRepresentativeInfo(HttpSession session) {
		int member_idx = Integer.parseInt(session.getAttribute("member_idx").toString());
		System.out.println("getMyRepresentativeInfo - member_idx : " + member_idx);
		
		Map myRepresentative = projectCreateService.getMyRepresentativeInfo(member_idx);
		System.out.println(myRepresentative);
		return myRepresentative;
	}
	
	// 05-30 김동욱 프로젝트 approve 0으로 업데이트(제출하기)
	@PostMapping("project/projectApproveSubmit")
	@ResponseBody
	public void projectApproveSubmit(int project_idx) {
		int updateCount = projectCreateService.projectApproveSubmit(project_idx);
	}
	
	@GetMapping("project/fundingProjectState")
	public String fundingProjectState(int project_idx, HttpSession session, Model model) {
		// 06-13 김동욱 프로젝트 현황 통계 정보 가져오기
		Map myProjectStatus = projectCreateService.myProjectStatus(project_idx);
		
		Double project_target = Double.parseDouble(myProjectStatus.get("project_target").toString());
		Double todayTotalAmount = Double.parseDouble(myProjectStatus.get("todayTotalAmount").toString());
		Double percent = todayTotalAmount / project_target * 100;
		int completionRate = (int) Math.floor(percent);
		
		myProjectStatus.put("completionRate", completionRate);
		
		System.out.println(todayTotalAmount / project_target * 100);
		model.addAttribute("myProjectStatus", myProjectStatus);
		
		return myProjectCheck(project_idx, session, model, "projectcreate/funding_project_state");
	}
	@GetMapping("project/projectShipmentRefund")
	public String projectShipmentRefund(int project_idx, HttpSession session, Model model) {
		return myProjectCheck(project_idx, session, model, "projectcreate/funding_project_shipmentRefund");
	}
	@GetMapping("project/projectFeeCalculate")
	public String projectFeeCalculate(int project_idx, HttpSession session, Model model) {
		return myProjectCheck(project_idx, session, model, "projectcreate/funding_project_feeCalculate");
	}
//	06-09 강정운 정산내역서
	@PostMapping("project/showFeeCalculate")
	@ResponseBody
	public Map showFeeCalculate(@RequestParam int project_idx) {
		Map List = projectCreateService.showFeeCalculate(project_idx);
		return List;
	}
	
	@PostMapping("project/memberIdxSearch")
	@ResponseBody
	public Integer memberIdxSearch(@RequestParam int project_idx) {
		Integer member = projectCreateService.memberIdxSearch(project_idx);
		System.out.println(member);
		return member;
	}
	
//	06-12 강정운 정산신청
	@PostMapping("project/calculateApply")
	@ResponseBody
	public boolean calculateApply(CalculateVO cal, AccountHistoryVO history, int project_idx, HttpServletResponse response) {
		Integer checkCount = projectCreateService.applyCheck(project_idx);
		if(checkCount != null) {
			return false;
		} else {
			
			int insertCount = projectCreateService.calculateApply(cal);
			if(insertCount > 0) {
				int historyCount = projectCreateService.accountHistory(cal, history);				
			}
			return true;
		}
	}
	
	// 06-12 김동욱 해당 프로젝트 결제내역 가져오기
	@PostMapping("project/getMyPaymentList")
	@ResponseBody
	public String getMyPaymentList(int project_idx) {
		System.out.println(project_idx);
		List paymentList = projectCreateService.getMyPaymentList(project_idx);
		JSONArray jsonPaymentList = new JSONArray(paymentList);
//		System.out.println(paymentList);
		return jsonPaymentList.toString();
		
	}
	
	// 06-12 김동욱 운송장 번호 입력
	@PostMapping("project/trackingNumberUpdate")
	@ResponseBody
	public void trackingNumberUpdate(int payment_idx, String tracking_number) {
		System.out.println(payment_idx);
		System.out.println(tracking_number);
		projectCreateService.trackingNumberUpdate(payment_idx, tracking_number);
		
	}
	// 06-13 강정운 side, top 멤버이름 표시
	@RequestMapping(value = "project/memberNameCheck", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String memberNameCheck(int project_idx) {
		System.out.println(project_idx);
		String member = projectCreateService.memberNameCheck(project_idx);
		return member;
	}
	
//	06-12 강정운 정산신청
	@PostMapping("project/dateCheck")
	@ResponseBody
	public int dateCheck(int project_idx) {
		int dateCheck = projectCreateService.dateCheck(project_idx);
		return dateCheck;
	}
	
//	06-14 강정운 프로젝트 제출하지 않았을 시 삭제가능
	@PostMapping("project/deleteProject")
	@ResponseBody
	public boolean deleteProject(int project_idx) {
		int deleteProject = projectCreateService.deleteProject(project_idx);
		if(deleteProject == 0) {
			return false;
		} else {
			return true;
		}
	}
	
	// 06-13 김동욱 해당 프로젝트 수정신청
	@PostMapping("project/projectModifyApply")
	@ResponseBody
	public void projectModifyApply(int project_idx, String updateStatus) {
		projectCreateService.projectModifyApply(project_idx, updateStatus);
		System.out.println(updateStatus);
	}
	
	@PostMapping("project/paymentCheck")
	@ResponseBody
	public String paymentCheck(int project_idx) {
		List payment = projectCreateService.getMyPaymentList(project_idx);
		JSONArray jsonArray = new JSONArray(payment);
		return jsonArray.toString();
	}
	
}
