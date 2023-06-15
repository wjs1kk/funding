<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko" class="">
<head>
<link rel="stylesheet" href="resources/css/login.css">

<title>아이펀드 로그인</title>

<link href="https://cdn.wadiz.kr/resources/static/css/wlayout.css?v=20230502" rel="stylesheet">
<link rel="stylesheet" href="https://static.wadiz.kr/account/main.0e433016.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/floating-buttons/main.5d60b4ab.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/iam/main.9c4e4e81.css">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/static/iam/css/6.f104ea79.chunk.css">

</head>

<body>
	<div id="page-container">
		<jsp:include page="../inc/top.jsp"></jsp:include>
		
		<main class="account-intro-login">
			<div class="user-sign-container">
				<div class="wz container form-container form-login">
					<h2 class="wz text display2">로그인</h2>
					<form method="post" action="loginPro">
						<div class="field">
							<div class="wz input">
								<input type="email" id="member_email" name="member_email" 
									class="input-text" placeholder="이메일 입력" title="이메일 입력">
							</div>
<!-- 							추후 이메일 형식 올바른지 판별 -->
<!-- 							<em id="emailError" class="error-text helper error">이메일 형식이 올바르지 않습니다.</em> -->
						</div>
						<div class="field">
							<div class="wz input">
								<input type="password" id="member_passwd" name="member_passwd"
									class="input-text" maxlength="20" placeholder="비밀번호 입력" title="비밀번호 입력">
							</div>
						</div>
						
						<div class="login-action">
							<p class="forgot">
								<a class="wz text" href="findId" data-event="iam.signin.goto.forgot">로그인 정보를 잊으셨나요?</a>
							</p>
						</div>
						<button type="submit" id="btnLogin" class="wz button primary block submit-button" data-event="iam.signin.submit">로그인</button>
						
					</form>
					<div id="iam-account-app">
						<div>
							<div>
							</div>
						</div>
					</div>
					<div class="bottom-message">
						<p> 아직 아이펀드 계정이 없나요?
							<a href="signup" data-return-url="" data-event="iam.signin.goto.signup">회원가입</a>
						</p>
					</div>
				</div>
			</div>
		</main>
		<jsp:include page="../inc/footer.jsp"></jsp:include>
	</div>
</body>
</html>