package com.itwillbs.funding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {
//	@Autowired
//	private MemberService memberService;
	
	@GetMapping("mypage/supporter")
	public String mypage() {
		return "mypage/mypage";
	}
	@GetMapping("mypage/maker")
	public String mypage2() {
		return "mypage/mypage2";
	}
	@GetMapping("supporter")
	public String suppoter() {
		return "mypage";
	}
	@GetMapping("maker")
	public String maker() {
		return "mypage2";
	}
	@GetMapping("mypage/coupon")
	public String mypage_coupon() {
		return "mypage/coupon";
	}
	@GetMapping("mypage/point")
	public String mypage_point() {
		return "mypage/point";
	}
	@GetMapping("mypage/myinfo")
	public String mypage_myinfo() {
		return "mypage/myInfo";
	}
//	서포터 문의
	@GetMapping("mypage/supinquiry")
	public String sup_inquiry() {
		return "mypage/sup_inquiry";
	}
	@GetMapping("mypage/makerinquiry")
	public String maker_inquiry() {
		return "mypage/maker_inquiry";
	}
	@GetMapping("mypage/wish")
	public String like() {
		return "mypage/wish";
	}
	@GetMapping("mypage/myInfo")
	public String myInfo() {
		return "mypage/myInfo"; 
	}
	@GetMapping("mypage/follow")
	public String follow() {
		return "mypage/follow"; 
	}
}
