<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="ko" class="">
<head>

<link rel="stylesheet" href="resources/css/login.css">

<title>와디즈 회원가입</title>


<!-- <script type="text/javascript" src="https://static.wadiz.kr/static/web/polyfill.js?b0c96ec4"></script> -->
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/iam/main.9c4e4e81.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/static/iam/css/0.80b0693c.chunk.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/static/iam/css/5.edb71960.chunk.css">
<script src="resources/js/jquery-3.6.4.js"></script>
</head>
<script>
	var regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
	var email = '';
	var emailDiv = '';

	$(function() {
		$("#emailButton").click(function() {
			email = $("#member_email").val();
			emailDiv = $("#message").val();
			
			if (!regex.exec(email)) {
				alert("이메일 형식을 올바르게 입력해주세요! \n ex) abc123@naver.com");
				return false;
			}
			$.ajax({
				type: "POST",
				url: "emailConfirm",
				data: {
					member_email : $("#member_email").val(),
				},
				success: function(member) {
					if(member.member_email == $("#member_email").val()) {
						alert("이메일이 이미 존재합니다.");
					} else {
						$("#emailDiv").show();
						$("#messageConfirm").click(function() {
							$.ajax({
								type: "POST",
								url: "messageConfirm",
								success: function(messageConfirm) {
									if(messageConfirm == $("#message").val()) {
										alert("인증 완료");
									} else {
										alert("확인 바람");
									}
								}
							});
						});
					}
				}
			});
		});
	});
</script>
<body>
	<div id="page-container">
		<jsp:include page="../inc/top.jsp"></jsp:include>
		<main id="iam-account-app">
			<main class="SignUpIntroApp_signUpIntro__2v2wv">
				<form method="post" action="signupPro">
					<div
						class="AccountContainer_container__PwFiE SignUpIntroApp_signUpIntroEmailContainer__3sN5d">
						<h3 class="SignUpIntroApp_simpleSignUpTitle__3aC7M">이메일 간편가입</h3>
						<div class="EmailSignUpFormContainer_formField__1vy9Q">
							<div class="EmailAuthField_emailAuthField__2E9P2">
								<label class="EmailAuthField_fieldLabel__1jS_Z">이메일</label>
								<div class="EmailAuthField_inputFieldContainer__1BgHY" style="padding-bottom: 10px;">
									<div class="EmailAuthField_inputField__y3EHZ">
										<input id="member_email" name="member_email"
											placeholder="이메일 계정" type="email"
											class="Input_input__1bbbo Input_md__1Nsby"
											aria-invalid="false">
									</div>
									<button id="emailButton"
										class="Button_button__3MO4n Button_primary__29fd0 Button_contained__1kfgl Button_md__3TvVa"
										style="width: 94px; padding: unset;" type="button">
										<span> <span class="Button_children__raEW4">인증번호 발송</span></span>
									</button>
								</div>
								<div id="emailDiv" style="display: none;" class="EmailAuthField_emailAuthField__2E9P2">
									<div class="EmailAuthField_inputFieldContainer__1BgHY">
										<div class="EmailAuthField_inputField__y3EHZ">
											<input id="message" name="member_email"
												placeholder="인증번호 입력" type="email"
												class="Input_input__1bbbo Input_md__1Nsby"
												aria-invalid="false">
										</div>
										<button id="messageConfirm"
											class="Button_button__3MO4n Button_primary__29fd0 Button_contained__1kfgl Button_md__3TvVa"
											style="width: 94px; padding: inherit;" type="button">
											<span><span class="Button_children__raEW4">인증하기</span></span>
										</button>
									</div>
								</div>
							</div>
							<div
								class="TextField_textField__2k9OA TextField_md__2Z-6K EmailSignUpFormContainer_formField__1vy9Q">
								<label>이름</label>
								<div class="TextField_field__3gj8N">
									<input id="member_name" name="member_name" placeholder="이름 입력"
										type="text" class="Input_input__1bbbo Input_md__1Nsby"
										aria-invalid="false">
								</div>
							</div>
							<div
								class="TextField_textField__2k9OA TextField_md__2Z-6K TextField_right__3aUp8 EmailSignUpFormContainer_formField__1vy9Q">
								<label>비밀번호</label>
								<div class="TextField_field__3gj8N">
									<input id="member_passwd" name="member_passwd"
										placeholder="비밀번호 입력" type="password"
										class="Input_input__1bbbo Input_md__1Nsby">
								</div>
							</div>
							<div
								class="TextField_textField__2k9OA TextField_md__2Z-6K TextField_right__3aUp8">
								<div class="TextField_field__3gj8N">
									<input name="verifyPassword" disabled="" placeholder="비밀번호 확인"
										type="password" class="Input_input__1bbbo Input_md__1Nsby">
								</div>
							</div>
							<div
								class="SignUpAllCheckTermsCheckbox_termsAllCheckWrapper__2f6i3 EmailSignUpFormContainer_formField__1vy9Q">
								<label for="termsUpdateRequestCheckBox"
									class="Checkbox_checkbox__10cSJ Checkbox_md__39fd8 SignUpAllCheckTermsCheckbox_termsAllCheck__PauIo">
									<input id="termsUpdateRequestCheckBox" type="checkbox"
									class="Checkbox_input__UIZH_"> <span
									class="Checkbox_icon__GLNHN" aria-hidden="true"> <svg
											viewBox="0 0 16 2" focusable="false" role="presentation"
											class="withIcon_icon__2KxnX Checkbox_removeIcon__10mz3"
											aria-hidden="true">
											<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg> <svg
											viewBox="0 0 48 48" focusable="false" role="presentation"
											class="withIcon_icon__2KxnX Checkbox_checkIcon__pmCQr"
											aria-hidden="true">
											<path
												d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span>
									<span class="Checkbox_content__3AASl"></span>
								</label> <label for="termsUpdateRequestCheckBox"
									class="SignUpAllCheckTermsCheckbox_termsAllCheckLabel__3TxCG">
									<p class="SignUpAllCheckTermsCheckbox_checkboxLabel__28Tow">전체동의</p>
									<p
										class="SignUpAllCheckTermsCheckbox_checkboxDescription__2X16H">회원·서비스(필수),
										스타트업찾기 서비스 (선택), 이벤트·혜택알림 동의(선택), 만 14세 이상(필수)</p>
								</label>
								<button
									class="Button_button__3MO4n Button_text__2zg08 Button_iconOnly__1yhFC iconButton SignUpAllCheckTermsCheckbox_termsMoreButton__wal9S"
									type="button">
									<span> <span class="Button_children__raEW4"> <svg
												viewBox="0 0 32 32" focusable="false" role="presentation"
												class="withIcon_icon__2KxnX" aria-hidden="true">
												<path
													d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path></svg></span></span>
								</button>
							</div>
							<div></div>
							<button
								class="Button_button__3MO4n Button_primary__29fd0 Button_contained__1kfgl Button_lg__D7OVb Button_block__3npc4  EmailSignUpFormContainer_signUpSubmitButton__3cZeI">
								<span><span class="Button_children__raEW4">완료</span></span>
							</button>
							<div>
								<button
									class="Button_button__3MO4n Button_lg__D7OVb Button_block__3npc4 SNSButtonList_kakaoButton__2lTDs SNSButtonList_spacer__38ac5"
									type="button">
									<span> <span class="Button_children__raEW4"> <svg
												viewBox="0 0 32 32" focusable="false" role="presentation"
												class="withIcon_icon__2KxnX SNSButtonList_kakaoIcon__1s6gw"
												aria-hidden="true">
												<path
													d="M16 4.64c-6.96 0-12.64 4.48-12.64 10.08 0 3.52 2.32 6.64 5.76 8.48l-.96 4.96 5.44-3.6 2.4.16c6.96 0 12.64-4.48 12.64-10.08S22.96 4.56 16 4.64z"></path></svg>
											카카오로 시작하기
									</span></span>
								</button>
								<button
									class="Button_button__3MO4n Button_lg__D7OVb Button_block__3npc4 SNSButtonList_naverButton__1rzZ_ SNSButtonList_spacer__38ac5"
									type="button">
									<span> <span class="Button_children__raEW4"> <svg
												viewBox="0 0 32 32" focusable="false" role="presentation"
												class="withIcon_icon__2KxnX SNSButtonList_naverIcon__3TjPM"
												aria-hidden="true">
												<path
													d="M19.52 5.76v10.32L12.48 5.76H4.8v20.48h7.68V15.92l7.12 10.32h7.6V5.76z"></path></svg>
											네이버로 시작하기
									</span></span>
								</button>
							</div>
					</div>
				</form>
			</main>
		</main>
	</div>
</body>
</html>