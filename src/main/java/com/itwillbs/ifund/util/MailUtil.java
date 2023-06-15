package com.itwillbs.ifund.util;

import org.apache.commons.mail.*;

// 메일 보낼 클래스
public class MailUtil {
	// 비밀번호 찾기 이메일 인증
	public static void sendMail(String email, String subject, String msg) throws Exception {
		System.out.println(email + ", " + subject + ", " + msg);
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com"; // SMTP 서버명
		String hostSMTPid = "qwez0498"; // 아이디
		String hostSMTPpwd = "xoduddl12!"; // 비밀번호

		// 보내는 사람
		String fromEmail = "qwez0498@naver.com";
		String fromName = "아이펀드";

		// email 전송
		try {
			HtmlEmail mail = new HtmlEmail();
			mail.setDebug(true);
			mail.setCharset(charSet);
			mail.setSSLOnConnect(true); // SSL 사용 (TLS가 없는 경우 SSL 사용)
			mail.setHostName(hostSMTP);
			mail.setSmtpPort(587); // SMTP 포트 번호
			mail.setAuthentication(hostSMTPid, hostSMTPpwd);
			mail.setStartTLSEnabled(true); // TLS 사용
			mail.addTo(email);
			mail.setFrom(fromEmail, fromName, charSet);
			mail.setSubject(subject);
			mail.setHtmlMsg(msg);
			mail.send();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 회원가입 시 이메일 인증
	public static void sendEmail(String email, String subject, String msg) throws Exception {
		System.out.println(email + ", " + subject + ", " + msg);
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com"; // SMTP 서버명
		String hostSMTPid = "qwez0498"; // 아이디
		String hostSMTPpwd = "xoduddl12!"; // 비밀번호
		
		// 보내는 사람
		String fromEmail = "ifund@ifund.com";
		String fromName = "아이펀드";
		
		// email 전송
		try {
			HtmlEmail mail = new HtmlEmail();
			mail.setDebug(true);
			mail.setCharset(charSet);
			mail.setSSLOnConnect(true); // SSL 사용 (TLS가 없는 경우 SSL 사용)
			mail.setHostName(hostSMTP);
			mail.setSmtpPort(587); // SMTP 포트 번호
			mail.setAuthentication(hostSMTPid, hostSMTPpwd);
			mail.setStartTLSEnabled(true); // TLS 사용
			mail.addTo(email);
			mail.setFrom(fromEmail, fromName, charSet);
			mail.setSubject(subject);
			mail.setHtmlMsg(msg);
			mail.send();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
