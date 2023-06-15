package com.itwillbs.ifund.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.ifund.service.FundingService;
import com.itwillbs.ifund.service.MemberService;
import com.itwillbs.ifund.service.MypageService;
import com.itwillbs.ifund.service.ProjectCreateService;
import com.itwillbs.ifund.vo.CouponVO;
import com.itwillbs.ifund.vo.InquiryVO;
import com.itwillbs.ifund.vo.MakerVO;
import com.itwillbs.ifund.vo.MemberVO;
import com.itwillbs.ifund.vo.PointVO;
import com.itwillbs.ifund.vo.ProjectListVO;
import com.itwillbs.ifund.vo.ProjectVO;

@Controller
public class MypageController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private MypageService mypageService;
	@Autowired
	private ProjectCreateService projectCreateService;
	@Autowired
	private FundingService fundingService;
	
	// 2023-06-05 박경은 - 계좌 인증 어노테이션 추가
	@Value("${client_id}")
	private String client_id;

	// 0516수정 로그인정보 가져오기
	// 2023-06-05 박경은 - 계좌 인증 model.addAttribute("client_id", client_id); 추가
	@GetMapping("mypage/supporter")
	public String mypage(HttpSession session, Model model) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		model.addAttribute("member", mypageService.selectUser(member_idx));
		List<PointVO> point = mypageService.selectPoint(member_idx);
		model.addAttribute("point", point);
		String member_point = point.get(0).getMember_point();
		model.addAttribute("member_point", member_point);
		model.addAttribute("client_id", client_id);
		
		model.addAttribute("countCoupon", mypageService.countCoupon(member_idx));
		model.addAttribute("countPayment", mypageService.countPayment(member_idx));
		model.addAttribute("countPreorder", mypageService.countPreorder(member_idx));
		
		return "mypage/mypage";
	}

	// 06-12 김동욱 마이페이지에서 마이페이지로 이동시 기존의 마이페이지 서블릿 주소로 리다이렉트
	@GetMapping("mypage/mypage/supporter")
	public String mypageSupporter2(HttpSession session, Model model) {
		return "redirect:/mypage/supporter";
	}
	
	@GetMapping("mypage/maker")
	public String mypage2(HttpSession session, Model model) {
		int member_idx = Integer.parseInt(session.getAttribute("member_idx").toString());
		List<ProjectVO> projectList = projectCreateService.getProjectList(member_idx);
		model.addAttribute("projectList", projectList);
		model.addAttribute("countProject", mypageService.countProject(member_idx));
		
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
	public String sup_inquiry(HttpSession session, Model model, InquiryVO inquiryVO, 
								@RequestParam(defaultValue = "1") int pageNum) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		model.addAttribute("member", mypageService.selectUser(member_idx));
		
		int listLimit = 10;
		int startRow = (pageNum - 1) * listLimit;
		
		List maker_idx = mypageService.selectMakerIdx(member_idx);
		model.addAttribute("maker_idx", maker_idx);
		List SupInquiry = mypageService.SupInquiry(member_idx, maker_idx, listLimit, startRow);
		model.addAttribute("SupInquiry", SupInquiry);
//		Integer SupInquiryCount = mypageService.SupInquiryCount(maker_idx);
//		model.addAttribute("SupInquiryCount", SupInquiryCount);
		System.out.println(SupInquiry != null);
		
		
		System.out.println(SupInquiry);
		System.out.println(maker_idx);
		for (Object inquiry : SupInquiry) {
		    System.out.println(inquiry);
		}
		
		// 페이징
		int pageListLimit = 5;
//		int maxPage = SupInquiryCount / listLimit + (SupInquiryCount % listLimit > 0 ? 1 : 0);
//		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
//		int endPage = startPage + pageListLimit - 1;
//		if(endPage > maxPage) {
//			endPage = maxPage;
//		}

		return "mypage/sup_inquiry";
	}

	

//	0609 김애리 추가 - 메이커 문의 (수정중)
	@GetMapping("mypage/makerinquiry")
	public String maker_inquiry(HttpSession session, Model model, 
			InquiryVO inquiryVO, @RequestParam(defaultValue = "1") int pageNum, Integer maker_idx) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		model.addAttribute("member", mypageService.selectUser(member_idx));
		
		int listLimit = 10;
		int startRow = (pageNum - 1) * listLimit;
		
		List myInquiry = mypageService.myInquiry(member_idx, maker_idx, listLimit, startRow);
		model.addAttribute("myInquiry", myInquiry);
		Integer myInquiryCount = mypageService.myInquiryCount(member_idx);
		model.addAttribute("myInquiryCount", myInquiryCount);
		System.out.println(myInquiry != null);
		List maker = mypageService.selectMakerIdx(member_idx);
		model.addAttribute("maker", maker);
		
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
	public String sup_inquiry_view(HttpSession session, Model model, InquiryVO inquiryVO, String inq_idx) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		List<InquiryVO> inquiryList = mypageService.selectInquiry(member_idx);
		model.addAttribute("inquiryList", inquiryList);
		
		inquiryVO = mypageService.getInquiry(inq_idx);
		System.out.println(inquiryVO.getMaker_idx());
		model.addAttribute("inquiryVO", inquiryVO);
		return "mypage/sup_inquiry_view";
	}	
	
	
	// 1:1 문의 답변 기능
	@PostMapping("mypage/inquiry_reply")
	public String inquiry_reply(HttpSession session, Model model, InquiryVO inquiryVO, int member_idx,
									String inq_subject, String inq_content, int maker_idx, String inq_idx, int inq_re_ref) {
		inquiryVO.setMember_idx(member_idx);
		inquiryVO.setMaker_idx(maker_idx);
		
		inquiryVO.setInq_subject(inq_subject);
		inquiryVO.setInq_content(inq_content);
		inquiryVO.setInq_re_ref(inq_re_ref);
			
		int insertCount = mypageService.insertReply(inquiryVO);
		if(insertCount > 0) {
			model.addAttribute("msg", "답변 완료");
			model.addAttribute("target", "supinquiry");
			return "success";
		}  else {
			model.addAttribute("msg", "답변 실패");
			return "fail_back";
		}
			
			
	}
	

//	0613 좋아요+찜하기 기능 추가
	@GetMapping("mypage/wish")
	public String wish(HttpSession session, Model model) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		List<ProjectListVO> wish = mypageService.selectWish(member_idx);
		model.addAttribute("wish", wish);

		return "mypage/wish";
	}
	@PostMapping("mypage/mypage_wish_cancel")
	public String mypage_wish_cancel(@RequestBody HashMap<String, Integer> map) {
		fundingService.cancelWish(map.get("project_idx"));
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
			model.addAttribute("msg", "회원 정보 수정 성공!");
			return "redirect:/mypage/supporter";
		} else {
			model.addAttribute("msg", "회원 정보 수정 실패!");
			return "fail_back";
		}
	}

	// 2023-06-05 박경은 - 휴대폰 인증
	// 2023-06-11 박경은 - 휴대폰 인증 완료 추가
	@PostMapping("mypage/message")
	@ResponseBody
	public String checkMessage(Model model, MemberVO member, HttpSession session) {
		model.addAttribute("member_phone", member.getMember_phone());
		
		// 난수
		Random rand = new Random();
		String numStr = "";
		for (int i = 0; i < 4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			numStr += ran;
		}
		
		NaverCloud.sendSMS(member.getMember_phone(), numStr);
		
		return numStr;
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

//	0522 추가! 펀딩참여내역 매핑 + 0613 수정
	@GetMapping("mypage/history")
	public String history(HttpSession session, Model model) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		List paymentList = mypageService.selectPayment(member_idx);
		model.addAttribute("paymentList", paymentList);
		System.out.println(paymentList);
		
		return "mypage/history";
	}
//	0613 추가 - 참여 펀딩 상세내역
	@GetMapping("mypage/history2")
	public String history2(HttpSession session, Model model, int payment_idx) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		model.addAttribute("member", mypageService.selectUser(member_idx));

		Map<Object, Object> paymentMap = mypageService.selectPaymentMap(member_idx, payment_idx);
		model.addAttribute("paymentMap", paymentMap);
		System.out.println(paymentMap);
		
		return "mypage/history2";
	}
	
//	회원탈퇴기능
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
	
//	0614 김애리 추가 - 프로젝트 더보기
	@GetMapping("mypage/projectList")
	public String projectList(HttpSession session, Model model) {
		int member_idx = Integer.parseInt(session.getAttribute("member_idx").toString());
		List<ProjectVO> projectList = projectCreateService.getProjectList(member_idx);
		model.addAttribute("projectList", projectList);
		model.addAttribute("countProject", mypageService.countProject(member_idx));
		
		return "mypage/projectList";
	}
	
	
	// 06-15 박경은 휴대폰 인증상태 업데이트
	@PostMapping("mypage/smsAauthStatus")
	@ResponseBody
	public void smsAauthStatus(int member_idx) {
		mypageService.updateSmsAuth(member_idx);
	}
	
	

	
//	0615 김애리 추가 - 참여한 공동구매
	@GetMapping("mypage/preorder_history")
	public String preorder_history(HttpSession session, Model model) {
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		List paymentList = mypageService.selectPreorder(member_idx);
		model.addAttribute("paymentList", paymentList);
		System.out.println(paymentList);
		
		return "mypage/history";
	}
}
