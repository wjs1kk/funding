package com.itwillbs.ifund.controller;

import java.net.http.*;
import java.util.*;

import javax.mail.internet.*;
import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.*;
import org.springframework.mail.javamail.*;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.*;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.*;
import org.springframework.ui.Model;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;

import com.itwillbs.ifund.service.BankService;
import com.itwillbs.ifund.service.MemberService;
import com.itwillbs.ifund.service.MypageService;
import com.itwillbs.ifund.util.*;
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
		session.setAttribute("member_name", member.getMember_name());
		
		
		System.out.println(session.getAttribute("user_seq_no"));
		System.out.println(session.getAttribute("access_token"));
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
	
	@GetMapping("findId")
	public String findId(Model model, String member_email, MemberVO member) {
		
		return "member/findId";
	}
	
	@PostMapping("findUser")
	@ResponseBody
	public Map findUser(String member_email, Model model) {
		System.out.println(member_email);
		Map findUser = memberService.findUser(member_email);
		model.addAttribute("findUser", findUser);
		return findUser;
	}
	
	@PostMapping("findPass")
	@ResponseBody
	public Map findPass(String member_email, Model model, HttpSession session) {
		try {
			String keyCode = (String)session.getAttribute("keyCode");
	        
		    session.removeAttribute("keyCode");
		        
		    String newPwd = FindUtil.getNewPwd();
		    System.out.println(newPwd);
		    
		    BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		    String securePasswd = passwordEncoder.encode(newPwd);
		    System.out.println(securePasswd);
		    
		    memberService.updatePass(member_email, securePasswd);
		        
		    String subject = "[IFund] 임시 비밀번호 발급 안내";
		        
		    String msg = "";
		    msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
		    msg += "<h3 style='color: blue;'><strong>" + member_email;
		    msg += "님</strong>의 임시 비밀번호 입니다. 로그인 후 비밀번호를 변경하세요.</h3>";
		    msg += "<p>임시 비밀번호 : <strong>" + newPwd + "</strong></p></div>";
		    
		        
			MailUtil.sendMail(member_email, subject, msg);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		Map findUser = memberService.findUser(member_email);
		model.addAttribute("data", findUser);
		
		return findUser;
	}
}