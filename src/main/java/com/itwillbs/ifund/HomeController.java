package com.itwillbs.ifund;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.ifund.service.FundingService;
import com.itwillbs.ifund.service.MainService;
import com.itwillbs.ifund.vo.*;
import com.itwillbs.ifund.service.MainService;

@Controller
public class HomeController {
	@Autowired
	private FundingService fundingService;
	@Autowired
	private MainService mainService;
	
	// 2023-06-13 박경은 - 최근 본 목록
	@GetMapping("/")
	public String home(Model model, HttpServletRequest request, HttpServletResponse response, ProjectListVO projectList, RewardVO reward, ProjectVO project) {
		// 디바이스 판별
		
		Device device = DeviceUtils.getCurrentDevice(request);
		
//		List<ProjectListVO> projectOpneList = fundingService.selectOpenProject();
//		model.addAttribute("projectOpneList", projectOpneList);
		List list = mainService.slide();
		model.addAttribute("list", list);
		System.out.println(list);
		
		// 주목할만한 : 달성 퍼센트 높은 순
		List attentionList = fundingService.selectAttentionProject(projectList);
		model.addAttribute("attentionList", attentionList);
		
		// 실시간랭킹 : 쌓인 가격 순 펀딩
		List rankingList = fundingService.selectRankingProject(projectList);
		model.addAttribute("rankingList", rankingList);
		
		// 실시간랭킹 : 쌓인 가격 순 공동구매
		List rankingList2 = fundingService.selectRankingProject2(projectList);
		model.addAttribute("rankingList2", rankingList2);
		
//		06/13 최근 본 프로젝트 관련
		ArrayList<Integer> cookieList = new ArrayList<Integer>();
		Cookie[] cookies = request.getCookies();
		ArrayList<Integer> goodsCookie = new ArrayList<Integer>();
		
		if(cookies != null) {
			for(int i = 0 ; i<cookies.length; i++) {
				if(cookies[i].getName().startsWith("goods")) {
					goodsCookie.add(Integer.parseInt(cookies[i].getValue()));
				}
			}			
		}
//		필요없는 쿠키 삭제
		if(goodsCookie.size() >= 7) {
			int count = goodsCookie.size() - 6;
			for(int i = 0 ; i<cookies.length; i++) {
				if(cookies[i].getName().startsWith("goods")) {
					cookies[i].setPath("/");
					cookies[i].setValue(null);
					cookies[i].setMaxAge(0);			
					response.addCookie(cookies[i]);
					System.out.println(goodsCookie.size());
					goodsCookie.remove(i);
					count--;					
				}
				if(count == 0) {
					break;
				}
			}
		}

//		ArrayList<Map> goodsProject = new ArrayList<>();
//		for(int i : goodsCookie) {
//			Map Project = mainService.selectProject(i);
//			Project.replace("project_category", mainService.selectCategory(String.valueOf(Project.get("project_category"))));
//			goodsProject.add(Project );
//			System.out.println(Project);
//			
//		}
//		Collections.reverse(goodsProject);
//		model.addAttribute("goodsProject", goodsProject);
		
//		최근 본 프로젝트 관련 끝
		
		// 얼리버드 : 오픈 전
		List earlybirdList = fundingService.selectEarlybirdProject(projectList, reward);
		model.addAttribute("earlybirdList", earlybirdList);
		
		// 오늘 오픈
		List todayOpenList = fundingService.selectTodayOpenProject(projectList);
		model.addAttribute("todayOpenList", todayOpenList);
		
		
		if(device != null) {
			if(device.isNormal()) { // 일반 디바이스 PC
				System.out.println("@@@@@ PC접속 @@@@@");
			}else if(device.isMobile()) { // 모바일 디바이스
				System.out.println("@@@@@@@@@@ 모바일 접속 @@@@@@@@@");
				return "m_main";
			}else if(device.isTablet()) {
				System.out.println("@@@@@@@@@@@@@@@@ 태블릿 접속 @@@@@@@@@@@@@@@@");
			}
		}
		
		
		return "main";
	}
}
