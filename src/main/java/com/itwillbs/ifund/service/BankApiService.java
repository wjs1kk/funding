package com.itwillbs.ifund.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.ifund.vo.AccountDepositListResponseVO;
import com.itwillbs.ifund.vo.AccountDetailVO;
import com.itwillbs.ifund.vo.AccountWithdrawResponseVO;
import com.itwillbs.ifund.vo.ResponseTokenVO;
import com.itwillbs.ifund.vo.ResponseUserInfoVO;

@Service
public class BankApiService {
	
	@Autowired
	BankApiClient apiClient;

	// 토큰 요청
	public ResponseTokenVO requestToken(Map<String, String> authResponse) {
		// BankApiClient - requestToken() 메서드 호출 후 결과값 리턴
		return apiClient.requestToken(authResponse);
//		return null;
	}

	// 사용자 정보 조회 요청
	public ResponseUserInfoVO requestUserInfo(String access_token, String user_seq_no) {
		// BankApiClient - requestUserInfo() 메서드 호출 후 결과값 리턴
		return apiClient.requestUserInfo(access_token, user_seq_no);
	}

	// 계좌 상세정보(잔고) 조회 요청
	public AccountDetailVO requestAccountDetail(Map<String, String> map) {
		// BankApiClient - requestAccountDetail() 메서드 호출 후 결과값 리턴
		return apiClient.requestAccountDetail(map);
	}

	// 출금 이체 요청
	public AccountWithdrawResponseVO withdraw(Map<String, String> map) {
		// BankApiClient - withdraw() 메서드 호출 후 결과값 리턴
		return apiClient.withdraw(map);
	}

	// 입금 요청
	public AccountDepositListResponseVO deposit(Map<String, String> map) {
		return apiClient.deposit(map);
	}


	
	
}











