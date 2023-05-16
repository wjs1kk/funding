package com.itwillbs.funding.controller;

import java.util.List;import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.funding.service.MemberService;
import com.itwillbs.funding.service.ProjectCreateService;
import com.itwillbs.funding.vo.MemberVO;
import com.itwillbs.funding.vo.ProjectCreateVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private ProjectCreateService projectCreateService;
	
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	
	@PostMapping("loginPro")
	public String loginPro(String member_email, String member_passwd, HttpSession session, Model model) {

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String passwd = memberService.selectPasswd(member_email);
		if (passwd == null || !passwordEncoder.matches(member_passwd, passwd)) {
			model.addAttribute("msg", "로그인 실패!");
			return "fail_back";
		}
		//관리자 로그인한 사람이 관리자 권한이 있는 지 확인
		String isAdmin =  memberService.isAdmin(member_email);
		// sesiion이 관리자권한 확인 후 세션 세팅
		if(isAdmin.equals("1")) {
			session.setAttribute("isAdmin", isAdmin);
		}
		MemberVO member = memberService.selectUser(member_email);
		session.setAttribute("member_idx", member.getMember_idx());
		return "redirect:/";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session, HttpServletResponse response) {
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("signup")
	public String signup() {
		return "member/signup";
	}
	
	@PostMapping("signupPro")
	public String joinPro(MemberVO member,Model model) {
		if(memberService.selectUser(member.getMember_email()) != null) {
			model.addAttribute("msg", "이미 가입한 이메일입니다");
			return "fail_back";
		}
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String securePasswd = passwordEncoder.encode(member.getMember_passwd());
		member.setMember_passwd(securePasswd);
		if (memberService.insertUser(member) == 0 ) {
			return "signup";
		}
		return "redirect:/login";
	}
	
	@GetMapping("mypage/supporter")
	public String mypage() {
		return "mypage/mypage";
	}
	//05-16 김동욱 메이커 마이페이지에서 생성된 프로젝트 리스트 출력 기능 추가
	@GetMapping("mypage/maker")
	public String mypage2(HttpSession session, Model model) {
		int member_idx = Integer.parseInt(session.getAttribute("member_idx").toString());
		List<ProjectCreateVO> projectList = projectCreateService.getProjectList(member_idx);
		System.out.println(projectList);
		model.addAttribute("projectList", projectList);
		return "mypage/mypage2";
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
}
