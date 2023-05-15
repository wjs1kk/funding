<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<title>기본정보설정 : 와디즈 MY 정보설정</title>
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="../resources/css/myinfo.css">
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="../resources/css/mypage.css">
</head>
<body>
	<div id="page-container">
		<div class="black-bg-wrap" style="display: none;"></div>

		<!-- S : #accountWrap -->
		<div id="accountWrap">
			<!-- S : #newContainer -->
			<div id="newContainer">
				<!-- account-wrap -->
				<div class="account-wrap">
					<h2>기본 정보 설정</h2>
					<form id="saveForm">
						<div class="email-input-wrap">
							<input type="text" name="nickName" class="input-text" maxlength="20" placeholder="닉네임" value="익명의 서포터 22"> 
							<input type="text" name="realName" class="input-text disable hide"
								maxlength="20" placeholder="이름" value="" disabled="" style="display: none;">
							<div class="input-btn-wrap">
								<div class="input" style="width: 218px;">
									<input type="email" id="userName" name="userName"
										class="disable input-text" placeholder="이메일 계정" value="lfodmik@gmail.com" disabled="">
								</div>
								<div id="emailChangeBtn" class="emailAuthBtn btn" data-status="change">
									<a href="#" onclick="return false;"> <span>변경</span> </a>
								</div>
								<div id="emailCheckBtn" class="emailAuthBtn btn" style="display: none;" data-status="check">
									<a href="#" onclick="return false;"> <span>인증하기</span> </a>
								</div>
								<div id="emailRetryBtn" class="emailAuthBtn btn" style="display: none;" data-status="retry">
									<a href="#" onclick="return false;"> <span>재전송</span></a>
								</div>
							</div>
							<div id="emailConfirmArea" class="input-btn-wrap" style="display: none;">
								<div class="input">
									<input type="text" id="emailAuthCode" class="input-text" placeholder="인증번호"> 
									<input type="hidden" id="emailConfirmId" value="">
									<time class="limit_time" style="position: relative; top: -39px; left: 85%; text-align: right;">
										<span id="emailMs_timer" style="color: #50e3c2; font-size: 13px;"></span>
									</time>
								</div>
								<div id="emailConfirmBtn" class="emailAuthBtn btn" data-status="confirm">
									<a href="#" onclick="return false;"> <span>인증완료</span>
									</a>
								</div>
							</div>
							<p id="emailCheckNumberError" class="error-text emailMsg">
								인증번호를 잘못 입력하셨습니다. 다시 입력해주세요.</p>
							<p id="emailTimeOutTokenError" class="error-text emailMsg">
								기간이 만료된 인증번호입니다. 다시 입력해주세요.</p>
							<p id="emailTimeOutError" class="error-text emailMsg">
								시간이 종료되었습니다. 다시 인증해주세요.</p>
							<p id="emailSuccessNumberCheckMsg" class="error-text emailMsg" style="color: #50e3c2;">
								인증이 완료되었습니다.</p>
							<p id="emailError" class="error-text emailMsg">
								이메일 형식이 올바르지 않습니다.</p>
							<p id="emailJoinedError" class="error-text emailMsg">
								이미 회원가입된 계정입니다. 다른 이메일을 입력해주세요.</p>
							<p id="emailDropOutError" class="error-text emailMsg">
								90일 이내에 탈퇴한 이력이 있는 계정은 사용하실 수 없습니다. 다른 이메일을 입력해주세요.</p>

							<div class="input-btn-wrap">
								<div class="input" style="width: 218px;">
									<input id="mobileNumber" name="mobileNumber" type="tel" class=" input-text" placeholder="휴대폰 번호" value="">
								</div>
								<div id="mobileCheckBtn" class="mobileAuthBtn btn" data-status="check">
									<a href="#" onclick="return false;"> <span>인증하기</span></a>
								</div>
								<div id="mobileChangeBtn" class="mobileAuthBtn btn" style="display: none;" data-status="change">
									<a href="#" onclick="return false;"> <span>변경</span></a>
								</div>
								<div id="mobileRetryBtn" class="mobileAuthBtn btn" style="display: none;" data-status="retry">
									<a href="#" onclick="return false;"> <span>재전송</span></a>
								</div>
							</div>
							<div id="mobileConfirmArea" class="input-btn-wrap" style="display: none;">
								<div class="input">
									<input type="text" id="authCode" class="input-text" placeholder="인증번호"> 
									<input type="hidden" id="confirmId" value="">
									<time class="limit_time" style="position: relative; top: -39px; left: 85%; text-align: right;">
										<span id="smsMs_timer" style="color: #50e3c2; font-size: 13px;"></span>
									</time>
								</div>
								<div id="confirmMobileBtn" class="mobileAuthBtn btn" data-status="confirm">
									<a href="#" onclick="return false;"> <span>인증완료</span>
									</a>
								</div>
							</div>
							<p id="mobileNumberError" class="checkMobileError error-text mobileMsg">
								유효한 전화번호를 입력해주세요.</p>
							<p id="mobileCheckNumberError" class="error-text mobileMsg">
								인증번호를 잘못 입력하셨습니다. 다시 입력해주세요.</p>
							<p id="mobileTimeOutError" class="error-text mobileMsg">
								시간이 종료되었습니다. 다시 인증해주세요.</p>
							<p id="mobileSuccessNumberCheckMsg" class="error-text mobileMsg" style="color: #50e3c2;">
								인증이 완료되었습니다.</p>
							<div class="email-input-wrap">
		                        <input type="password" id="newPassword" name="newPassword" class="input-text" placeholder="새 비밀번호" maxlength="17">
		                        <p id="passwordError" class="pwd-text">영문, 숫자, 특수문자 (!@#$%^&amp;*+=-)를 모두 조합한 8자 이상</p>
		                        <input type="password" id="newPasswordConfirm" name="newPasswordConfirm" class="input-text" placeholder="새 비밀번호 확인" maxlength="17">
		                        <p class="error-text">비밀번호가 같지 않습니다.</p>
                   			 </div>
							<div class="email-input-wrap small">
								<div class="btn-wrap">
									<button type="button" id="saveBtn" class="wz button primary block btn-block-mint">확인</button>
								</div>
							</div>
							
							<div class="my-info" style="text-align: end">
                       			 <h3><a href="/web/waccount/wAccountDropOutUser">회원 탈퇴</a></h3>
                    		</div>
							
						</div>
						<input type="hidden" id="validEmailFirstCheck" value="Y">
						<input type="hidden" id="validEmail" value="1">
					</form>
				</div>
				<!-- //account-wrap -->
			</div>
			<!-- E : #newContainer -->
		</div>

	</div>
</body>
</html>