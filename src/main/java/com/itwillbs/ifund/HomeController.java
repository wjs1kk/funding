package com.itwillbs.ifund;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwillbs.ifund.service.FundingService;
import com.itwillbs.ifund.service.MainService;
import com.itwillbs.ifund.vo.ProjectListVO;

@Controller
public class HomeController {
	@Autowired
	private FundingService fundingService;
	@Autowired
	private MainService mainService;
	
	// 2023-06-13 박경은 - 최근 본 목록
	@GetMapping("/")
	public String home(Model model, HttpServletRequest request, HttpServletResponse response) {
		List<ProjectListVO> attentionList = fundingService.selectAttentionProject();
		model.addAttribute("attentionList", attentionList);
		
		List<ProjectListVO> rankingList = fundingService.selectRankingProject();
		model.addAttribute("rankingList", rankingList);
		
		List<ProjectListVO> earlybirdList = fundingService.selectEarlybirdProject();
		model.addAttribute("earlybirdList", earlybirdList);
		
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
//			필요없는 쿠키 삭제
			if(goodsCookie.size() == 7) {
				for(int i = 0 ; i<cookies.length; i++) {
					if(cookies[i].getName().startsWith("goods")) {
						cookies[i].setPath("/");
						cookies[i].setValue(null);
						cookies[i].setMaxAge(0);			
						response.addCookie(cookies[i]);
						break;
					}
				}
			}
			
		}
		if(goodsCookie != null ) {
			if(goodsCookie.size() >=6) {
				for (int i = goodsCookie.size() -6; i < goodsCookie.size(); i++) {
					cookieList.add(goodsCookie.get(i));
				}
			}
			else {
				for (int i : goodsCookie) {
					cookieList.add(i);
				}
			}
		}
		ArrayList goodsProject = new ArrayList();
		for(int i : cookieList) {
			goodsProject.add(mainService.selectProject(i));
		}
		Collections.reverse(goodsProject);
		model.addAttribute("goodsProject", goodsProject);
		
//		최근 본 프로젝트 관련 끝
		return "main";
	}
}
