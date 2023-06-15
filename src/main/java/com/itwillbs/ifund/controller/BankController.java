package com.itwillbs.ifund.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.ifund.service.AdminService;
import com.itwillbs.ifund.service.BankApiService;
import com.itwillbs.ifund.service.BankService;
import com.itwillbs.ifund.vo.AccountDepositListResponseVO;
import com.itwillbs.ifund.vo.AccountDetailVO;
import com.itwillbs.ifund.vo.AccountWithdrawResponseVO;
import com.itwillbs.ifund.vo.ResponseTokenVO;
import com.itwillbs.ifund.vo.ResponseUserInfoVO;

@Controller
public class BankController {
	@Autowired
	private BankApiService apiService;
	
	@Autowired
	private BankService bankService;
	
	@Autowired
	private AdminService adminService;
	
	private static final Logger logger = LoggerFactory.getLogger(BankController.class);
	
	// 사용자 인증 요청에 대한 응답 처리 및 엑세스 토큰 발급 요청 후 결과 처리
	@GetMapping("/callback")
	public String responseAuthCode(
			@RequestParam Map<String, String> authResponse, HttpSession session, Model model) {
//		logger.info(authResponse.toString());
		
		// 인증 실패 시(인증 정보 존재하지 않을 경우) 오류 메세지 출력 및 인증창 닫기
		if(authResponse == null || authResponse.get("code") == null) {
			model.addAttribute("msg", "인증 오류 발생! 다시 인증하세요!");
			model.addAttribute("isClose", true); // 창 닫기 명령
			return "fail_back";
		}
		
		// 토큰 발급 요청(REST 방식 = REST API 활용)
		// BankApiService - requestToken() 메서드를 호출하여 엑세스 토큰 발급 요청
		// => 파라미터 : 사용자 인증을 통해 전달받은 정보(Map 객체)
		// => 리턴타입 : 응답되는 엑세스토큰 관련 정보를 관리할 ResponseTokenVO 타입
		ResponseTokenVO responseToken = apiService.requestToken(authResponse);
		logger.info("★★★★★ Access Token : " + responseToken);
		
		// 토큰 발급 실패 시 오류 메세지 출력 및 인증창 닫기
		if(responseToken.getAccess_token() == null) {
			model.addAttribute("msg", "토큰 발급 오류 발생! 다시 인증하세요!");
			model.addAttribute("isClose", true); // 창 닫기 명령
			return "fail_back";
		}
		
		// BankService - writeToken() 메서드를 호출하여
		// 토큰 관련 정보를 fintech3.account 테이블에 저장
		// => 파라미터 : 아이디, 토큰 정보가 저장된 ResponseTokenVO 객체
		// => 리턴타입 : int(insertCount)
		int insertCount = bankService.writeToken((Integer) session.getAttribute("member_idx"), responseToken);
		// 토큰 발급 실패 시 오류 메세지 출력 및 인증창 닫기
		if(insertCount == 0) {
			model.addAttribute("msg", "토큰 발급 오류 발생! 다시 인증하세요!");
			model.addAttribute("isClose", true); // 창 닫기 명령
			return "fail_back";
		}
		
		// 세션 객체에 엑세스토큰(access_token)과 사용자번호(user_seq_no) 저장
		session.setAttribute("access_token", responseToken.getAccess_token());
		session.setAttribute("user_seq_no", responseToken.getUser_seq_no());
		
		// model 객체에 target 속성으로 리다이렉트할 페이지 저장(bank_userInfo)
		model.addAttribute("target", "bank_userInfo");
		
		// 성공 처리를 위한 success.jsp 페이지로 포워딩
		// => isClose 속성값을 true 로 전달
		model.addAttribute("isClose", true);
		return "success";
	}
	
	// 사용자 정보 조회
	@GetMapping("/bank_userInfo")
	public String requestUserInfo(HttpSession session, Model model) {
		// 세션에 저장된 엑세스 토큰 및 사용자 번호 변수에 저장
		String access_token = (String)session.getAttribute("access_token");
		String user_seq_no =  (String)session.getAttribute("user_seq_no");
		System.out.println("access_token : " + access_token);
		System.out.println("user_seq_no : " + user_seq_no);
		
		// access_token 이 null 일 경우 "계좌 인증 필수" 메세지 출력 후 이전페이지로 돌아가기
		if(access_token == null) {
			model.addAttribute("msg", "계좌 인증 필수!");
			return "fail_back";
		}
		
		// 사용자 정보 조회(REST API 요청)		
		// BankApiService - requestUserInfo() 메서드 호출
		// => 파라미터 : 엑세스토큰, 사용자번호   리턴타입 : ResponseUserInfoVO(userInfo)
		ResponseUserInfoVO userInfo = apiService.requestUserInfo(access_token, user_seq_no);
		System.out.println(userInfo);
		
		// Model 객체에 ResponseUserInfoVO 객체 저장
		model.addAttribute("userInfo", userInfo);
		
		return "bank/bank_user_info";
	}
	
	// 계좌 상세정보 조회(2.3.1. 잔액조회 API)
	@PostMapping("bank_accountDetail")
	public String getAccountDetail(
			@RequestParam Map<String, String> map, HttpSession session, Model model) {
		// 미로그인 또는 엑세스토큰 없을 경우 "fail_back" 페이지를 통해
		// "권한이 없습니다!" 출력 후 이전페이지로 돌아가기
		if(session.getAttribute("sId") == null || session.getAttribute("access_token") == null) {
			model.addAttribute("msg", "권한이 없습니다!");
			return "fail_back";
		}
		
		// 세션 객체의 엑세스 토큰을 Map 객체에 추가
		map.put("access_token", (String)session.getAttribute("access_token"));
		logger.info("★★★★★★ bank_accountDetail : " + map);
		
		// BankApiService - requestAccountDetail() 메서드를 호출하여
		// 계좌 상세정보 조회 요청
		// => 파라미터 : Map 객체   리턴타입 : AccountDetailVO(account)
		AccountDetailVO account = apiService.requestAccountDetail(map);
		
		// 응답코드(rsp_code)가 "A0000" 가 아니면 에러 상황이므로 에러 처리
		// => "정보 조회 실패!" 출력 후 이전페이지로 돌아가기(fail_bank)
		// => 출력메세지에 응답메세지(rsp_message) 도 함께 출력
		if(account == null) {
			model.addAttribute("msg", "정보 조회 실패");
			return "fail_back";
		} else if(!account.getRsp_code().equals("A0000")) {
			model.addAttribute("msg", "정보 조회 실패 - " + account.getRsp_message());
			return "fail_back";
		}
		
		System.out.println(account);
		
		// AccountDetailVO 객체 저장
		model.addAttribute("account", account);
		model.addAttribute("account_num_masked", map.get("account_num_masked"));
		model.addAttribute("user_name", map.get("user_name"));
		
		return "bank/bank_account_detail";
		
	}

	// 2.5.1. 출금이체
	// 핀테크 이용번호(fintech_use_num) 전달받기 - Map
	@PostMapping("bank_withdraw")
	public String withdraw(
			@RequestParam Map<String, String> map, HttpSession session, Model model) {
		// 세션 객체의 엑세스토큰을 Map 객체에 추가
		map.put("access_token", (String)session.getAttribute("access_token"));
		logger.info("★★★★★★ 입금 요청 정보 : " + map);
		
		// BankApiService - withdraw() 메서드 호출하여 출금이체 요청
		// 파라미터 : Map 객체   리턴타입 : AccountWithdrawResponseVO(result)
		AccountWithdrawResponseVO result = apiService.withdraw(map);
		logger.info("★★★★★★ 출금 요청 처리 결과 : " + result);
		
		// Model 객체에 AccountWithdrawResponseVO 객체 저장(속성명 : result)
		model.addAttribute("result", result);
		// 출금계좌 핀테크 이용번호(송금요청 계좌) 저장 
		model.addAttribute("fintech_use_num", map.get("fintech_use_num"));
		
		// 만약, 응답코드(rsp_code) 가 "A0000" 이 아니면, 처리 실패이므로
		// 응답메세지(rsp_message) 를 화면에 출력 후 이전페이지로 돌아가기
		if(!result.getRsp_code().equals("A0000")) {
			model.addAttribute("msg", result.getRsp_message());
			return "fail_back";
		}
		
		return "bank/withdraw_result";
	}
	
	
	// 2.5.2. 입금이체
	// 입금 정보 전달받기 - Map
	@PostMapping("admin/bank_deposit")
	public String deposit(@RequestParam Map<String, String> map, HttpSession session, Model model 
					) {
		System.out.println("뱅크컨트롤러");
		System.out.println("2calculate_idx: " + map.get("calculate_idx") );
		System.out.println("2project_idx: " + map.get("project_idx"));
		System.out.println("2calculate_fee: " + map.get("calculate_fee"));
		
		
		map.put("access_token", (String)session.getAttribute("access_token"));
		int member_idx = Integer.parseInt(map.get("member_idx").toString());
		// 대표자 계좌 정보 가져오기
		Map representative = adminService.selectRepresentative(member_idx);
//		System.out.println(representative);
		map.put("rep_tax_account", representative.get("rep_tax_account").toString());
		map.put("rep_tax_depositor", representative.get("rep_tax_depositor").toString());
		
		// map에 put
		// 정산 성공 페이지 추가
		
		// 세션 객체의 엑세스토큰을 Map 객체에 추가
		map.put("access_token", (String)session.getAttribute("access_token"));
		logger.info("★★★★★★ 입금 요청 정보 : " + map);
		
		
		// BankApiService - deposit() 메서드 호출하여 출금이체 요청
		// 파라미터 : Map 객체   리턴타입 : AccountDepositResponseListVO(result)
		AccountDepositListResponseVO result = apiService.deposit(map);
		logger.info("★★★★★★ 입금 요청 처리 결과 : " + result);
		
		// Model 객체에 AccountDepositResponseListVO 객체 저장(속성명 : result)
		model.addAttribute("result", result);
		
		// 만약, 응답코드(rsp_code) 가 "A0000" 이 아니면, 처리 실패이므로
		// 응답메세지(rsp_message) 를 화면에 출력 후 이전페이지로 돌아가기
		if(!result.getRsp_code().equals("A0000")) {
			model.addAttribute("msg", result.getRsp_message());
			return "fail_back";
		}
		
		
		int project_idx = Integer.parseInt(map.get("project_idx").toString());
		int calculate_fee = Integer.parseInt(map.get("calculate_fee").toString());
		// 입출금 내역 db insert
		int calResult = adminService.insertAccountHistory(member_idx, project_idx, calculate_fee); 
		if(calResult > 0) {
			adminService.updateCalApprove(project_idx);
		} 
		
		return "redirect:/admin/management";
	}
	
	
}














