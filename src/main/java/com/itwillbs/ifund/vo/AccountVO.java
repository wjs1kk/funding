package com.itwillbs.ifund.vo;


/*
account 테이블 정의 - 인증 및 계좌 관련 기본 정보 관리
---------------------------------
아이디(member_idx) - 문자 16자, PK, FK(member 테이블의 id 참조) - ON UPDATE CASCADE, ON DELETE CASCADE
사용자번호(user_seq_no) VARCHAR(10)
접속정보(user_ci) VARCHAR(200)
엑세스토큰(access_token) VARCHAR(500)
갱신토큰(refresh_token) VARCHAR(500)
은행기관코드(bank_code_std) VARCHAR(3)
계좌번호(account_num) VARCHAR(16)
핀테크이용번호(fintech_use_num) VARCHAR(24)
현재잔고(balance_amt) INT
-------------------------------------------
CREATE TABLE account (
	member_idx INT PRIMARY KEY,
	user_seq_no VARCHAR(10),
	user_ci VARCHAR(200),
	access_token VARCHAR(500),
	refresh_token VARCHAR(500),
	bank_code_std VARCHAR(3),
	account_num VARCHAR(16),
	fintech_use_num VARCHAR(24),
	balance_amt INT,
	FOREIGN KEY (id) REFERENCES member(id) ON UPDATE CASCADE ON DELETE CASCADE
);
*/

// 인증 및 계좌 관련 기본 정보 관리

public class AccountVO {
	private String member_idx;
	private String user_seq_no;
	private String user_ci;
	private String access_token;
	private String refresh_token;
	
	private String fintech_use_num;
	private String account_alias;
	private String bank_code_std;
	private String bank_code_sub;
	private String bank_name;
	private String savings_bank_name;
	private String account_num;
	private String account_num_masked;
	private String account_seq;
	private String account_holder_name;
	private String account_holder_type;
	private String inquiry_agree_dtime;
	private String transfer_agree_yn;
	private String transfer_agree_dtime;
	private String account_state;
	
	private int balance_amt;

	public String getMember_idx() {
		return member_idx;
	}

	public void setMember_idx(String member_idx) {
		this.member_idx = member_idx;
	}

	public String getUser_seq_no() {
		return user_seq_no;
	}

	public void setUser_seq_no(String user_seq_no) {
		this.user_seq_no = user_seq_no;
	}

	public String getUser_ci() {
		return user_ci;
	}

	public void setUser_ci(String user_ci) {
		this.user_ci = user_ci;
	}

	public String getAccess_token() {
		return access_token;
	}

	public void setAccess_token(String access_token) {
		this.access_token = access_token;
	}

	public String getRefresh_token() {
		return refresh_token;
	}

	public void setRefresh_token(String refresh_token) {
		this.refresh_token = refresh_token;
	}

	public String getFintech_use_num() {
		return fintech_use_num;
	}

	public void setFintech_use_num(String fintech_use_num) {
		this.fintech_use_num = fintech_use_num;
	}

	public String getAccount_alias() {
		return account_alias;
	}

	public void setAccount_alias(String account_alias) {
		this.account_alias = account_alias;
	}

	public String getBank_code_std() {
		return bank_code_std;
	}

	public void setBank_code_std(String bank_code_std) {
		this.bank_code_std = bank_code_std;
	}

	public String getBank_code_sub() {
		return bank_code_sub;
	}

	public void setBank_code_sub(String bank_code_sub) {
		this.bank_code_sub = bank_code_sub;
	}

	public String getBank_name() {
		return bank_name;
	}

	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}

	public String getSavings_bank_name() {
		return savings_bank_name;
	}

	public void setSavings_bank_name(String savings_bank_name) {
		this.savings_bank_name = savings_bank_name;
	}

	public String getAccount_num() {
		return account_num;
	}

	public void setAccount_num(String account_num) {
		this.account_num = account_num;
	}

	public String getAccount_num_masked() {
		return account_num_masked;
	}

	public void setAccount_num_masked(String account_num_masked) {
		this.account_num_masked = account_num_masked;
	}

	public String getAccount_seq() {
		return account_seq;
	}

	public void setAccount_seq(String account_seq) {
		this.account_seq = account_seq;
	}

	public String getAccount_holder_name() {
		return account_holder_name;
	}

	public void setAccount_holder_name(String account_holder_name) {
		this.account_holder_name = account_holder_name;
	}

	public String getAccount_holder_type() {
		return account_holder_type;
	}

	public void setAccount_holder_type(String account_holder_type) {
		this.account_holder_type = account_holder_type;
	}

	public String getInquiry_agree_dtime() {
		return inquiry_agree_dtime;
	}

	public void setInquiry_agree_dtime(String inquiry_agree_dtime) {
		this.inquiry_agree_dtime = inquiry_agree_dtime;
	}

	public String getTransfer_agree_yn() {
		return transfer_agree_yn;
	}

	public void setTransfer_agree_yn(String transfer_agree_yn) {
		this.transfer_agree_yn = transfer_agree_yn;
	}

	public String getTransfer_agree_dtime() {
		return transfer_agree_dtime;
	}

	public void setTransfer_agree_dtime(String transfer_agree_dtime) {
		this.transfer_agree_dtime = transfer_agree_dtime;
	}

	public String getAccount_state() {
		return account_state;
	}

	public void setAccount_state(String account_state) {
		this.account_state = account_state;
	}

	public int getBalance_amt() {
		return balance_amt;
	}

	public void setBalance_amt(int balance_amt) {
		this.balance_amt = balance_amt;
	}

	@Override
	public String toString() {
		return "AccountVO [member_idx=" + member_idx + ", user_seq_no=" + user_seq_no + ", user_ci=" + user_ci
				+ ", access_token=" + access_token + ", refresh_token=" + refresh_token + ", fintech_use_num="
				+ fintech_use_num + ", account_alias=" + account_alias + ", bank_code_std=" + bank_code_std
				+ ", bank_code_sub=" + bank_code_sub + ", bank_name=" + bank_name + ", savings_bank_name="
				+ savings_bank_name + ", account_num=" + account_num + ", account_num_masked=" + account_num_masked
				+ ", account_seq=" + account_seq + ", account_holder_name=" + account_holder_name
				+ ", account_holder_type=" + account_holder_type + ", inquiry_agree_dtime=" + inquiry_agree_dtime
				+ ", transfer_agree_yn=" + transfer_agree_yn + ", transfer_agree_dtime=" + transfer_agree_dtime
				+ ", account_state=" + account_state + ", balance_amt=" + balance_amt + "]";
	}

	
}















