package com.itwillbs.ifund.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.ifund.service.BankService;
import com.itwillbs.ifund.service.MemberService;
import com.itwillbs.ifund.service.MypageService;
import com.itwillbs.ifund.vo.AccountVO;
import com.itwillbs.ifund.vo.MemberVO;
import com.itwillbs.ifund.vo.PointVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private MypageService mypageService;
	@Autowired
	private BankService bankService;
	
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
		
		// 06-12 김동욱 계좌 토큰값 가져오기
		AccountVO accountVO = bankService.getAccountVO(member.getMember_idx());
		if(accountVO != null) {
			session.setAttribute("user_seq_no", accountVO.getUser_seq_no());
			session.setAttribute("access_token", accountVO.getAccess_token());
		}
		
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
	public String joinPro(MemberVO member,Model model, PointVO pointVO) {
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
		
		
		// 0607 김애리 추가 - 가입시 포인트 적립
		mypageService.joinPoint(member.getMember_email());
		
		return "redirect:/login";
	}
	
	//0615 김애리 추가 - 회원가입 이메일 중복체크
	@PostMapping("MemberEmailCheck")
	public void memberEmailCheck(@RequestParam(defaultValue = "") String member_email, HttpServletResponse response) {
		System.out.println(member_email);
		try {
			// 사용중인 member_email이 없으면 view페이지로 true 있으면 false를 보냄!
			String email = memberService.memberEmailCheck(member_email);
			System.out.println(email);
			if(email == null) {
				response.getWriter().print("true");
			}else {
				response.getWriter().print("false");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
