package com.itwillbs.funding.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.StringJoiner;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.funding.service.ProjectCreateService;
import com.itwillbs.funding.vo.ProjectVO;
import com.itwillbs.funding.vo.RewardVO;

@Controller
public class ProjectCreateController {
	
	//05-16 김동욱 projectCreateService 추가
	@Autowired
	private ProjectCreateService projectCreateService;
	
	@GetMapping("intro")
	public String intro(HttpSession session) {
		if(session.getAttribute("member_idx") == null) {
			return "redirect:/login";
		}
		return "projectcreate/intro";
	}
	@GetMapping("project/main")
	public String create_funding() {
		
		return "projectcreate/create_funding";
	}
	@GetMapping("project/plan")
	public String create_funding_plan_select() {
		return "projectcreate/create_funding_plan_select";
	}
//	프로젝트 정보
	@GetMapping("project/screening")
	public String create_funding_project_info() {
		return "projectcreate/create_funding_project_info";
	}
	@GetMapping("project/makerInfo")
	public String create_funding_maker_Info() {
		return "projectcreate/create_funding_maker_Info";
	}
	@GetMapping("project/contractInfo")
	public String create_funding_contract_Info() {
		return "projectcreate/create_funding_contract_Info";
	}
	@GetMapping("project/story")
	public String create_funding_project_story() {
		return "projectcreate/create_funding_project_story";
	}
	@GetMapping("project/policy")
	public String create_funding_project_policy() {
		return "projectcreate/create_funding_project_policy";
	}
	@GetMapping("project/baseinfo")
	public String create_funding_project_baseInfo() {
		return "projectcreate/create_funding_project_baseInfo";
	}
	// 05-16 김동욱 리워드 설계 페이지 추가
	@GetMapping("project/reward")
	public String create_funding_project_reward() {
		return "projectcreate/create_funding_project_reward";
	}
	//05-16 김동욱 top.jsp에서 프로젝트 만들기 버튼 누를 시 새로운 프로젝트 생성
	@GetMapping("projectCreate")
	public String createFundingProject(HttpSession session) {
		int member_idx = Integer.parseInt(session.getAttribute("member_idx").toString());
		System.out.println("member_idx : " + member_idx);
		int insertCount = projectCreateService.createFundingProject(member_idx);
		return "redirect:/intro";
	}
	// 05-17 김동욱 마이페이지에서 프로젝트 생성을 누르면 경로가 달라 프로젝트 생성이 안돼서 프로젝트 생성과 같은 코드에 경로만 추가
	@GetMapping("mypage/projectCreate")
	public String myPagecreateFundingProject(HttpSession session) {
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
		
		System.out.println(project);
		System.out.println(files);
		
		String getImages = projectCreateService.getImages(project.getProject_idx());
		
		String uploadDir = "/resources/images/project_images";
		String saveDir = session.getServletContext().getRealPath(uploadDir);
		
		// Files 클래스의 createDirectories() 메서드를 호출하여 Path 객체가 관리하는 경로 없으면 생성
		// => 거쳐가는 경로들 중 없는 경로는 모두 생성
		System.out.println("실제 업로드 경로 : " + saveDir);
		try {
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
	@PostMapping("project/getProjectImages")
	@ResponseBody
	public String getProjectImages(int project_idx) {
		String porjectImages = projectCreateService.getImages(project_idx);
		String[] projectImagesArr = porjectImages.split("\\|");
		
		List<String> imagesList = new ArrayList<String>();
		for(String projectImages : projectImagesArr) {
			System.out.println(projectImages);
			imagesList.add(projectImages);
		}
		
		System.out.println(porjectImages);
		JSONArray jsonImagesList = new JSONArray(imagesList);
		return jsonImagesList.toString();
	}
	
	
	// 05-22 김동욱 AJAX 프로젝트 이미지 지우기
	@PostMapping("project/deleteProjectImage")
	@ResponseBody
	public void deleteProjectImage(ProjectVO project, String deleteImage) {
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
	
}
