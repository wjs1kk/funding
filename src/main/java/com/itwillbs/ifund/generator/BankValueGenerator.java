package com.itwillbs.ifund.generator;

import java.security.SecureRandom;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class BankValueGenerator {
	
	@Value("${client_use_code}")
	private String client_use_code; // 이용기관코드
	
	// 거래 고유번호 자동생성
	public String getBankTranId() {
		String bank_tran_id = "";
		String uuid = UUID.randomUUID().toString();
//		System.out.println("UUID: " + uuid.split("-")[4].substring(0,9).toUpperCase());
		
//		System.out.println("UUID: " + uuid.split("-")[4].substring(uuid.length() - 9).toUpperCase());
		
//		bank_tran_id = client_use_code + "U" + uuid.substring(uuid.length() - 9).toUpperCase();
		// 난수
		SecureRandom sr = new SecureRandom();
		
		int rNum = sr.nextInt(1000000000);
//		System.out.println("SecureRandom.nextInt : " + rNum);
//		System.out.println("SecureRandom(format()) : " + String.format("%09d", rNum));
		
		// 거래번호 생성
		bank_tran_id = client_use_code + "U" + String.format("%09d", rNum);
		System.out.println("bank_tran_id" + bank_tran_id);
		
		return bank_tran_id;
	}
	
	// 거래시간 현재 시스템 시각 기준으로 설정
	public String getTranDTime() {
		LocalDateTime localDateTime = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
		String now = localDateTime.format(formatter);
		System.out.println("now : " + now);
		return now;
	}
}
