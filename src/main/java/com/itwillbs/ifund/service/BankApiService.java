package com.itwillbs.ifund.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.ifund.vo.AccountDetailVO;
import com.itwillbs.ifund.vo.ResponseTokenVO;
import com.itwillbs.ifund.vo.ResponseUserInfoVO;

@Service
public class BankApiService {
	
	@Autowired
	private BankApiClient apiClient;

	
	// 토큰 요청
	public ResponseTokenVO requestToken(Map<String, String> authResponse) {
		// BankApiClient - requestToken() 메서드 호출 후 결과값 리턴
		return apiClient.requestToken(authResponse);
//		return null;
	}

	public ResponseUserInfoVO requestUserInfo(String access_token, String user_seq_no) {
		return apiClient.requestUserInfo(access_token, user_seq_no);
	}

	public AccountDetailVO requestAccountDetail(Map<String, String> map) {
		return apiClient.requestAccountDetail(map);
	}
	
}











