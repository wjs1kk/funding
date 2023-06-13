package com.itwillbs.ifund.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.itwillbs.ifund.vo.MemberVO;
import com.itwillbs.ifund.vo.ProjectListVO;
import com.itwillbs.ifund.service.FundingService;
import com.itwillbs.ifund.service.MypageService;
import com.itwillbs.ifund.vo.RewardVO;

@Controller
public class FundingController {
	@Autowired
	private FundingService fundingService;
	
	@Autowired
	private MypageService mypageService;
	
	@GetMapping("funding")
	public String funding(Model model, @RequestParam(defaultValue = "전체") String category, @RequestParam(defaultValue = "") String order) {
		List<ProjectListVO> projectDetailList = fundingService.selectFundingProject(category, order);
		model.addAttribute("projectDetailList", projectDetailList);
		
		List categoryList = fundingService.categoryList();
		model.addAttribute("categoryList", categoryList);
		return "funding/funding";
	}
	@GetMapping("detail")
	public String funding_detail(Model model, String num, HttpServletResponse response) {
		List<RewardVO> selectReward = fundingService.selectReward(Integer.parseInt(num));
		Map<String, Object> fundingDetail = fundingService.fundingDetail(Integer.parseInt(num));
		
		model.addAttribute("selectReward", selectReward);
		model.addAttribute("fundingDetail", fundingDetail);
		
//		06/13
//		최근본 프로젝트 관련
		Cookie cookie = new Cookie("goods"+num,num);
		cookie.setPath("/");
		cookie.setMaxAge(60 * 60 * 24);
		response.addCookie(cookie);
//		최근본 프로젝트 관련 끝
		
		System.out.println(fundingDetail);

		return "funding/funding_detail";
	}
	@GetMapping("comingsoon")
	public String comingsoon(Model model, @RequestParam(defaultValue = "") String category, @RequestParam(defaultValue = "") String order) {
		List comingsoonProject = fundingService.selectComingsoonProject(category, order);
		List categoryList = fundingService.categoryList();
		
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("comingsoon", comingsoonProject);
		return "funding/comingsoon";
	}
	@GetMapping("rewardSelect")
	public String rewardSelect(Model model, String num) {
		List<RewardVO> selectReward = fundingService.selectReward(Integer.parseInt(num));
		System.out.println(selectReward);
		model.addAttribute("selectReward", selectReward);
		return "funding/rewardSelect";
	}
	// 06-09 김동욱 결제페이지에 갈 때 리워드 정보 다시 가져와서 출력
	@PostMapping("payment")
	public String payment(@RequestParam Map map, Model model, HttpSession session) {
		String uuid = UUID.randomUUID().toString();
		
		if(session.getAttribute("member_idx") == null) {
			model.addAttribute("msg", "로그인 후 이용 가능합니다.");
			model.addAttribute("target", "login");
			return "success";
		}
		int member_idx = (Integer)session.getAttribute("member_idx");
		
		String[] reward_idx = ((String)map.get("reward_idx")).split(", ");
		String[] reward_quantity = ((String)map.get("reward_quantity")).split(", ");
		
		List rewardList = new ArrayList();
		
		for(int i = 0; i < reward_idx.length; i++) {
			Map rewardMap = fundingService.getPayReward(Integer.parseInt(reward_idx[i]));
			rewardMap.put("rewardQuantity", Integer.parseInt(reward_quantity[i]));
			rewardList.add(rewardMap);
		}
		
		// 내 포인트 가져오기
		int myPoint = fundingService.getMyPoint(member_idx);
		
		// 사용 가능한 쿠폰 리스트 가져오기
		List myCouponList = fundingService.getMyCouponList(member_idx);
		
		// 내 정보 가져오기
		MemberVO myInfo = mypageService.selectUser(member_idx);
		
		model.addAttribute("map", map);
		model.addAttribute("rewardList", rewardList);
		model.addAttribute("myCouponList", myCouponList);
		model.addAttribute("myPoint", myPoint);
		model.addAttribute("myInfo", myInfo);
		model.addAttribute("uuid", uuid.substring(0, 8));
		
		return "funding/payment";
	}
	@GetMapping("preorder")
	public String preorder(Model model, @RequestParam(defaultValue = "") String category, @RequestParam(defaultValue = "") String order) {
		List<ProjectListVO> projectPreorderList = fundingService.selectPreorderProject(category, order);
		System.out.println(category + ", " + order);
		model.addAttribute("projectPreorderList", projectPreorderList);
		
		List categoryList = fundingService.categoryList();
		model.addAttribute("categoryList", categoryList);
		
		return "funding/preorder";
	}
	
	// 06-10 김동욱 결제하기
	@PostMapping("paymentPro")
	@ResponseBody
	public void paymentPro(@RequestParam Map map, HttpSession session) {
		int member_idx = (Integer)session.getAttribute("member_idx");
		map.put("member_idx", member_idx);
		
		System.out.println(map);
		
		String[] reward_idx = map.get("reward_idx").toString().split(", ");
		String[] reward_quantity = map.get("reward_quantity").toString().split(", ");
		for(int i = 0; i < reward_idx.length; i++) {
			// 06-10 김동욱 리워드 팔린 수량 만큼 플러스 업데이트
			int updateCount = fundingService.rewardSellUpdate(Integer.parseInt(reward_idx[i]) , Integer.parseInt(reward_quantity[i]));
		}
		
		int coupon_idx = Integer.parseInt(map.get("coupon_idx").toString()) ;
		
		// 06-10 김동욱 사용한 쿠폰 N으로 업데이트
		if(coupon_idx != 0) {
			int couponUsedUpdateCount = fundingService.couponUsedUpdate(coupon_idx);
			System.out.println("couponUsedUpdateCount : " + couponUsedUpdateCount);
		}
		
		// 06-10 김동욱 펀딩 결제하기
		int insertCount = fundingService.payment(map);
		
		int point = Integer.parseInt(map.get("used_point_amount").toString());
		if(point != 0) {
			// 06-10 김동욱 포인트 사용하기
			int pointUpdateCount = fundingService.usingPoint(member_idx, point);
		}
		
		int project_idx = Integer.parseInt(map.get("project_idx").toString());
		int total_amount = Integer.parseInt(map.get("total_amount").toString());
		// 06-10 김동욱 프로젝트 디테일 총금액 업데이트 및 결제 금액 5% 포인트 적립
		int projectDetailUpdateCount = fundingService.projectDetailAmountUpdate(project_idx, total_amount, member_idx);
		
	}
	
}
