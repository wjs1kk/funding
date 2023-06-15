package com.itwillbs.ifund.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.itwillbs.ifund.vo.AccountDetailVO;
import com.itwillbs.ifund.vo.AccountVO;
import com.itwillbs.ifund.vo.ResponseTokenVO;

public interface BankMapper {
	
	// 토큰 정보 저장
	int insertToken(@Param("member_idx") int member_idx, @Param("token") ResponseTokenVO responseToken);

	// 계좌 인증 상태 변경
	int updateAccountAuthStatus(int member_idx);

	AccountVO selectAccount(int member_idx);

	AccountDetailVO selectAccountDetail(Map<String, String> map);

}
