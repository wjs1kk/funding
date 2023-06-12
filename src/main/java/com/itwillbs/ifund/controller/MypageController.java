package com.itwillbs.ifund.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.ifund.service.MemberService;
import com.itwillbs.ifund.service.MypageService;
import com.itwillbs.ifund.service.ProjectCreateService;
import com.itwillbs.ifund.vo.CouponVO;
import com.itwillbs.ifund.vo.InquiryVO;
import com.itwillbs.ifund.vo.MakerVO;
import com.itwillbs.ifund.vo.MemberVO;
import com.itwillbs.ifund.vo.PointVO;
import com.itwillbs.ifund.vo.ProjectVO;

@Controller
public class MypageController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private MypageService mypageService;
	@Autowired
	private ProjectCreateService projectCreateService;

	// 0516수정 로그인정보 가져오기
	@GetMapping("mypage/supporter")
	public String mypage(HttpSession session, Model model) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		model.addAttribute("member", mypageService.selectUser(member_idx));
		List<PointVO> point = mypageService.selectPoint(member_idx);
		model.addAttribute("point", point);
		String member_point = point.get(0).getMember_point();
		model.addAttribute("member_point", member_point);
		return "mypage/mypage";
	}

	@GetMapping("mypage/maker")
	public String mypage2(HttpSession session, Model model) {
		int member_idx = Integer.parseInt(session.getAttribute("member_idx").toString());
		List<ProjectVO> projectList = projectCreateService.getProjectList(member_idx);
		model.addAttribute("projectList", projectList);
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

//	0609 김애리 수정 - 발급받은 쿠폰 리스트
	@GetMapping("mypage/coupon")
	public String coupon(HttpSession session, Model model) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		List<CouponVO> myCoupon = mypageService.myCoupon(member_idx);
		model.addAttribute("myCoupon", myCoupon);
		System.out.println(myCoupon);

		return "mypage/coupon";
	}
	
//	0607 김애리 수정 - 쿠폰존 쿠폰리스트
	@GetMapping("mypage/couponzone")
	public String couponzone(HttpSession session, Model model) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		model.addAttribute("maker", mypageService.selectMaker(member_idx));

		List<CouponVO> coupon = mypageService.selectCoupon(member_idx);
		model.addAttribute("coupon", coupon);
		System.out.println(coupon);

		return "mypage/couponzone";
	}

//	0609 김애리 수정 - 메이커 쿠폰 신청
	@GetMapping("mypage/maker_coupon")
	public String maker_coupon(HttpSession session, Model model) {
		Integer member_idx = (Integer)session.getAttribute("member_idx");
		List<MakerVO> makerList = mypageService.selectMaker(member_idx);
		model.addAttribute("makerList", makerList);
		
		return "mypage/maker_coupon";
	}

	@PostMapping("mypage/couponPro")
	public String couponPro(HttpServletRequest request, CouponVO couponVO, HttpSession session, Model model) {
		Integer member_idx = (Integer)session.getAttribute("member_idx");
		Random random = new Random();
		String couponCode = String.format("%06d", random.nextInt(1000000));
		couponVO.setCoupon_code(couponCode);
		
		int insertCount = mypageService.insertCoupon(couponVO);
		if(insertCount > 0) {
			model.addAttribute("msg", "쿠폰 발급 신청 완료");
			model.addAttribute("target", "maker_coupon");
			return "mypage/maker_coupon";
		}  else {
			model.addAttribute("msg", "쿠폰 발급 신청 실패");
			return "fail_back";
		}
	}
	
	
//	0609 김애리 수정 - 쿠폰발급
	@SuppressWarnings("unused")
	@GetMapping("mypage/coupon_down")
	public String coupon_down( Model model, HttpSession session, @RequestParam String coupon_idx) {
		Integer member_idx = (Integer)session.getAttribute("member_idx");
		if(member_idx == null){
			model.addAttribute("msg", "로그인 필수!");
			return "fail_back";
		}
		else {			
//			이미 발급받은 쿠폰인지 확인
			Integer checkIdx = mypageService.checkCoupon(coupon_idx, member_idx);
			if(checkIdx == null) {
//					//발급					
					int downCount = mypageService.downCoupon(coupon_idx, member_idx);
					
					if(downCount > 0) {
						model.addAttribute("msg", "등록 완료!");							
						model.addAttribute("target", "couponzone");
						return "success";
					} else{
						model.addAttribute("msg", "등록 실패!");
						return "fail_back";
					}
				}else {
					model.addAttribute("msg", "이미 발급 받으신 쿠폰입니다");
					return "fail_back";
			}
		}											
	}


//	0518수정 - 포인트 내역
	@GetMapping("mypage/point")
	public String mypage_point(HttpSession session, Model model) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		List<PointVO> point = mypageService.selectPoint(member_idx);
		model.addAttribute("point", point);
		System.out.println(point);

		String member_point = point.get(0).getMember_point();
		model.addAttribute("member_point", member_point);
		System.out.println(member_idx);

		return "mypage/point";
	}
	
//	0609 김애리 추가 - 가입시 포인트 적립
	@GetMapping("mypage/join_point")
	public String join_point(HttpSession session, Model model, PointVO pointVO, MemberVO memberVO) {
		String member_email = memberVO.getMember_email();
		int insertCount =  mypageService.joinPoint(member_email);
		
		return "mypage/login";
	}
	

//	서포터 문의
	@GetMapping("mypage/supinquiry")
	public String sup_inquiry(HttpSession session, Model model, 
			InquiryVO inquiryVO, @RequestParam(defaultValue = "1") int pageNum) {
		int listLimit = 10;
		int startRow = (pageNum - 1) * listLimit;
		
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		List<String> maker = mypageService.selectMakerIdx(member_idx);
		model.addAttribute("maker", maker);
		System.out.println(maker);

		List<InquiryVO> inquiryList = mypageService.selectSupInquiry(maker, listLimit, startRow);
		model.addAttribute("inquiryList", inquiryList);
		System.out.println(inquiryList);
		return "mypage/sup_inquiry";
	}

	

//	0609 김애리 추가 - 메이커 문의 (수정중)
	@GetMapping("mypage/makerinquiry")
	public String maker_inquiry(HttpSession session, Model model, 
			InquiryVO inquiryVO, @RequestParam(defaultValue = "1") int pageNum) {
		int listLimit = 10;
		int startRow = (pageNum - 1) * listLimit;
		
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		List<InquiryVO> myInquiry = mypageService.myInquiry(member_idx, listLimit, startRow);
		model.addAttribute("myInquiry", myInquiry);
		Integer myInquiryCount = mypageService.myInquiryCount(member_idx);
		model.addAttribute("myInquiryCount", myInquiryCount);
		System.out.println(myInquiry != null);
		List maker = mypageService.selectMakerIdx(member_idx);
		model.addAttribute("maker", maker);
		
//		model.addAttribute("member", mypageService.selectUser(member_idx));
//		model.addAttribute("maker", mypageService.selectMakerName(Integer.parseInt(maker)));

		
		// 페이징
		int pageListLimit = 5;
		int maxPage = myInquiryCount / listLimit + (myInquiryCount % listLimit > 0 ? 1 : 0);
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		int endPage = startPage + pageListLimit - 1;
		if(endPage > maxPage) {
			endPage = maxPage;
		}

		return "mypage/maker_inquiry";
		
	}

	@GetMapping("mypage/inquiry_form")
	public String inquiry_form() {
		return "mypage/inquiry_form";
	}
	@GetMapping("mypage/inquiry_view")
	public String inquiry_view(HttpSession session, Model model, InquiryVO inquiryVO, InquiryVO inquiryVO2, String inq_idx) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		List<InquiryVO> inquiryList = mypageService.selectInquiry(member_idx);
		model.addAttribute("inquiryList", inquiryList);
		
		inquiryVO = mypageService.getInquiry(inq_idx);
		inquiryVO2 = mypageService.getInquiry(inq_idx + 1);
		model.addAttribute("inquiryVO", inquiryVO);
		model.addAttribute("inquiryVO2", inquiryVO2);

		return "mypage/inquiry_view";
	}	
	
	@GetMapping("mypage/sup_inquiry_view")
	public String sup_inquiry_view(HttpSession session, Model model, InquiryVO inquiryVO, InquiryVO inquiryVO2, String inq_idx) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		List<InquiryVO> inquiryList = mypageService.selectInquiry(member_idx);
		model.addAttribute("inquiryList", inquiryList);
		
		inquiryVO = mypageService.getInquiry(inq_idx);
		inquiryVO2 = mypageService.getInquiry(inq_idx + 1);
		model.addAttribute("inquiryVO", inquiryVO);
		model.addAttribute("inquiryVO2", inquiryVO2);
		
		return "mypage/sup_inquiry_view";
	}	
	
	@GetMapping("mypage/wish")
	public String wish(HttpSession session, Model model) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		List<ProjectVO> wish = mypageService.selectWish(member_idx);
		model.addAttribute("wish", wish);
		System.out.println(wish);

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
			MultipartFile image, String newPassword, String newPassword2) {

		System.out.println(image);

		Integer member_idx = (Integer) session.getAttribute("member_idx");
		model.addAttribute("member", mypageService.selectUser(member_idx));

		if (!newPassword.equals(newPassword2)) {
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다.");
			return "fail_back";
		}

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String securePasswd = passwordEncoder.encode(newPassword);
		memberVO.setMember_passwd(securePasswd);
		memberVO.setMember_idx(member_idx);

		// 프로핑사진 등록
		if (image != null) {
			String uploadDir = "/resources/images/profile";
			String saveDir = session.getServletContext().getRealPath(uploadDir);
//			MultipartFile mFile = memberVO.getFile();
			
			try {
				// Files 클래스의 createDirectories() 메서드를 호출하여 Path 객체가 관리하는 경로 없으면 생성
				// => 거쳐가는 경로들 중 없는 경로는 모두 생성
				Path path = Paths.get(saveDir);
				Files.createDirectories(path);
			} catch (IOException e1) {
				e1.printStackTrace();
			}

			String originalFileName = image.getOriginalFilename();
			String uuid = UUID.randomUUID().toString();
			memberVO.setMember_image(uuid.substring(0, 8) + "_" + originalFileName);
			System.out.println("실제 업로드 될 파일명 : " + memberVO.getMember_image());

//			memberVO.setMember_image(mFile.getOriginalFilename());
			System.out.println(saveDir);
			try {
				image.transferTo(new File(saveDir, uuid.substring(0, 8)+ "_" + image.getOriginalFilename()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		int updateCount = mypageService.updateUser(memberVO);

		if (updateCount > 0) {
			return "redirect:/mypage/myInfo";
		} else {
			model.addAttribute("msg", "회원 정보 수정 실패!");
			return "fail_back";
		}
	}

	// 2023-06-05 박경은 - 휴대폰 인증
	@PostMapping("mypage/message")
	public String checkMessage(Model model, MemberVO member) {
		model.addAttribute("member_phone", member.getMember_phone());
		// 난수
		Random rand = new Random();
		String numStr = "";
		for (int i = 0; i < 6; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			numStr += ran;
		}

		NaverCloud.sendSMS(member.getMember_phone(), numStr);
		return "redirect:/mypage/myInfo";

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
		if (member_passwd == null || !passwordEncoder.matches(password, member_passwd)) {
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다!");
			return "fail_back";
		} else {
			return "redirect:/mypage/myInfo";
		}
	}

//	0516 정보수정 전 비밀번호 확인
	@GetMapping("mypage/maker_checkInfo")
	public String maker_checkInfo() {
		return "mypage/maker_checkInfo";
	}

	@PostMapping("mypage/maker_checkInfo")
	public String maker_checkInfoPro(HttpSession session, Model model, @RequestParam("password") String password) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		String member_passwd = mypageService.selectPasswd(member_idx);
		if (member_passwd == null || !passwordEncoder.matches(password, member_passwd)) {
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

//	0522 수정! 펀딩참여내역 매핑
	@GetMapping("mypage/history")
	public String history(HttpSession session, Model model) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		List<ProjectVO> history = mypageService.selectHistory(member_idx);
		model.addAttribute("history", history);
		System.out.println(history);

		return "mypage/history";
	}

	@GetMapping("mypage/history2")
	public String history2() {
		return "mypage/history2";
	}

	@GetMapping("mypage/deleteMember")
	public String deleteMember(HttpSession session, Model model) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		int deleteCount = mypageService.deleteMember(member_idx);

		if (deleteCount > 0) {
			model.addAttribute("msg", "회원 탈퇴 완료!");
			session.invalidate();
			return "redirect:/";
		} else {
			System.out.println(deleteCount);
			System.out.println(member_idx);
			model.addAttribute("msg", "회원 탈퇴 실패!");
			return "fail_back";
		}

	}

	@PostMapping("mypage/updateProfile")
	public String updateProfile(MemberVO memberVO, HttpSession session, Model model,
			@RequestParam("member_image") MultipartFile memberImage) {
		String uploadDir = "/resources/images/profile"; // 프로젝트 상의 업로드 경로
		String saveDir = session.getServletContext().getRealPath(uploadDir);

		String originalFilename = memberImage.getOriginalFilename();
		String filePath = saveDir + File.separator + originalFilename;

		memberVO.setMember_image(originalFilename.split("\\.")[0]);
		mypageService.updateProfile(memberVO);

		try {
			// 이미지 파일 업로드
			memberImage.transferTo(new File(filePath));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/myInfo";
	}
}
