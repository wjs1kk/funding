package com.itwillbs.ifund.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.ifund.mapper.BankMapper;
import com.itwillbs.ifund.vo.AccountVO;
import com.itwillbs.ifund.vo.ResponseTokenVO;

@Service
public class BankService {
	@Autowired
	private BankMapper mapper;
	
	// 토큰 정보 저장
	public int writeToken(int member_idx, ResponseTokenVO responseToken) {
		// 토큰 정보 저장 요청
		int insertCount = mapper.insertToken(member_idx, responseToken);
		if(insertCount > 0) { // 토큰 정보 저장 성공 시
			// 계좌 인증 상태 변경 요청
			return mapper.updateAccountAuthStatus(member_idx); 
		} else {
			return 0;
		}
	}

	public AccountVO getAccountVO(int member_idx) {
		return mapper.selectAccount(member_idx);
	}


	
	
}















