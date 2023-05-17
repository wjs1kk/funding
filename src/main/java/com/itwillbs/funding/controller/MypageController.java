package com.itwillbs.funding.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.funding.service.MemberService;
import com.itwillbs.funding.service.MypageService;
import com.itwillbs.funding.vo.MemberVO;

@Controller
public class MypageController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private MypageService mypageService;
	
	
	//0516수정 로그인정보 가져오기
	@GetMapping("mypage/supporter")
	public String mypage(HttpSession session, Model model) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		model.addAttribute("member", mypageService.selectUser(member_idx));
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
	
//	0516수정 회원정보수정
	@GetMapping("mypage/myInfo")
	public String myInfo(HttpSession session, Model model) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		model.addAttribute("member", mypageService.selectUser(member_idx));
		return "mypage/myInfo"; 
	}
	@PostMapping("mypage/myInfoPro")
	public String myInfoPro(Model model, HttpServletRequest request, HttpSession session, MemberVO memberVO, 
			 				@RequestParam("newPassword") String newPassword, @RequestParam("newPassword2") String newPassword2) {
		Integer member_idx = (Integer)session.getAttribute("member_idx");
		model.addAttribute("member", mypageService.selectUser(member_idx));
		
	    if (!newPassword.equals(newPassword2)) {
	        model.addAttribute("msg", "비밀번호가 일치하지 않습니다.");
	        return "fail_back";
	    }
	    
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String securePasswd = passwordEncoder.encode(newPassword);
		memberVO.setMember_passwd(securePasswd);
		memberVO.setMember_idx(member_idx);
	
		int updateCount = mypageService.updateUser(memberVO);
		
		if (updateCount > 0) {
			model.addAttribute("msg", "회원 정보 수정 완료!");
			model.addAttribute("target", "mypage/myInfo");
	        return "redirect:/mypage/myInfo";
		} else {
			model.addAttribute("msg", "회원 정보 수정 실패!");
			return "fail_back";
		}
	}

//	0516 정보수정 전 비밀번호 확인
	@GetMapping("mypage/checkInfo")
	public String checkInfo() {
		return "mypage/checkInfo"; 
	}
	@PostMapping("mypage/checkInfoPro")
	public String checkInfoPro(HttpSession session, Model model, @RequestParam("password") String password) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		String member_passwd = mypageService.selectPasswd(member_idx);
		if(member_passwd == null || !passwordEncoder.matches(password, member_passwd)) {
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다!");
			return "fail_back";
		} else {
			return "redirect:/mypage/myInfo";
		}
	}
	
//	0517 추가! 팔로잉 매핑
	@GetMapping("mypage/follow")
	public String follow() {
		return "mypage/follow";
	}
//	0517 추가! 펀딩참여내역 매핑
	@GetMapping("mypage/history")
	public String history() {
		return "mypage/history";
	}
	
}
