<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko" class="scroll-top scroll-apex">
<head>
<title>아이디 찾기 - IFund</title>
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/wui.css?c6d769d8">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/css/vendor.6da506ac.chunk.css">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/common.css?4df0e3de">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/layout.css?784fc256">
<link
	href="https://cdn.wadiz.kr/resources/static/css/wlayout.css?v=20230613"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://static.wadiz.kr/account/main.0ed32797.css">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/floating-buttons/main.98b034d0.css">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<script src="resources/js/jquery-3.6.4.js"></script>
</head>
<script>
	$(function() {
		$(".findId").click(function() {
			$("#findPasswdd").hide();
			$(this).addClass('active');
			$('.findPasswd').removeClass('active');
			$("#findIdd").show();
		})
		
		$(".findPasswd").click(function() {
			$("#findIdd").hide();
			$(this).addClass('active');
			$('.findId').removeClass('active');
			$("#findPasswdd").show();
		})
	});
</script>
<script>
	// 이메일 정규 표현식
	var regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
	var email = '';
	
	$(function() {
		$("#btnIsJoinedEmail").click(function() {
			email = $("#userEmail").val();
			if(!regex.exec(email)){
				alert("이메일 형식을 올바르게 입력해주세요! \n ex) abc123@naver.com");
				return false;
			} 
			
			$("#inputedEmail").text(email);
			
			$("#findIdd").hide();
			$("#findIddd").show();
		});
	});
</script>
<script>
	$(function() {
		$("#btnIsJoinedEmail").click(function() {
			$.ajax({
				type: "POST",
				url: "findUser",
				data: {
					member_email: $("#userEmail").val(),
					},
				success: function(findUser) {

					if(findUser.member_email == $("#userEmail").val()) {
						$("#correctEmail").show();
						$("#goToLogin").show();
						
					} else {
						$("#incorrectEmail").show();
					}
				}
			});
		});
	});
</script>
<body>
	<div id="wz-header">
		<div class="web-header">
			<div class="web-header-large">
				<header class="header-wrapper web-header-simple">
					<div class="header-container">
						<h1 class="">
							<a href="/ifund/"><span class="label">IFund</span></a>
						</h1>
						<ul class="gnb-large">
							<li class="login"><a href="login" class="item"><span>로그인</span></a></li>
							<li class="signup"><a href="signup" class="item"><span>회원가입</span></a></li>
						</ul>
					</div>
				</header>
			</div>
		</div>
	</div>
	<div class="account-find">
		<div class="page-header">
			<h2 class="wz text display1">아이디∙비밀번호 찾기</h2>
			<div class="tab-list">
				<ul>
					<li class="findId active"><a>아이디 찾기</a></li>
					<li class="findPasswd"><a>비밀번호 찾기</a></li>
				</ul>
			</div>
		</div>
		<div class="page-body" id="findIdd">
			<div class="wz container id-check"
				style="min-height: calc(100vh - 187px);">
				<p class="wz text body1">
					IFund는 이메일을 아이디로 사용합니다.<br>소유하고 계신 계정을 입력해보세요.<br>가입여부를
					확인해드립니다.
				</p>
				<form class="wz form" id="form-findId" onsubmit="">
					<div class="label-hidden field">
						<div class="wz input">
							<input id="userEmail" class="" type="email" value="" placeholder="이메일 계정" style="width: 400px; height: 40px; font-size: 17px; padding: 5px">
						</div>
					</div>
					<div align="right">
						<button id="btnIsJoinedEmail" class="wz primary block button"
							type="button" style="font-size: medium; padding-top: 10px">확인</button>
					</div>
				</form>
			</div>
		</div>
		<div class="page-body" id="findPasswdd" style="display: none;">
			<div class="wz container pw-check"
				style="min-height: calc(100vh - 187px);">
				<p class="wz text body1">
					가입하셨던 이메일 계정을 입력하시면,<br>비밀번호를 새로 만들 수 있는 링크를 이메일로<br>발송해드립니다.
				</p>
				<form class="wz form" onsubmit="">
					<input type="hidden" id="findType" value="FIND_PASSWORD">
					<div class="label-hidden field">
						<div class="wz input">
							<input id="userName" type="email" placeholder="이메일 계정"
								style="width: 400px; height: 40px; font-size: 17px; padding: 5px">
						</div>
					</div>
					<div align="right">
						<button id="BtnSendlink" class="wz primary block button"
							type="button" onclick=""
							style="font-size: medium; padding-top: 10px">링크 발송</button>
					</div>
					<button id="BtnReSendlink" class="wz block button" type="button"
						onclick="" style="display: none">링크 재발송</button>
				</form>
			</div>
		</div>
		<div class="page-body">
			<div class="wz container id-result" style="display: none;" id="findIddd">
				<div class="isJoin-email-wrap">
					<p id="inputedEmail" class="wz text headline2" style="font-size: 20px; font-weight: bold;"></p>
					<div id="correctEmail" style="display: none;">
						<p id="joinedEmail" class="wz text body1">회원으로 등록된 이메일 아이디입니다.<br>해당 이메일로 로그인하고 Ifund를 이용하세요!</p>
						<div class="inner-container" align="right">
							<a id="goToLogin" class="wz primary block button"
								href="login" style="display: none;">로그인</a>
						</div>
					</div>
					<div id="incorrectEmail" style="display: none;">
						<span id="notJoinedEmail" class="wz text body1">해당 이메일은 Ifund에 등록되어 있지 않은 계정입니다.</span>
						<a id="goToJoin" class="wz primary block button"
							href="signup"
							style="display: inline-block;">회원가입</a> 
						<a id="btn-recheck" class="wz block button" onclick="location.href='findId'">다시 확인</a>
					</div>					
				</div>
			</div>
		</div>
		<jsp:include page="../inc/footer.jsp"></jsp:include>
	</div>
</body>
</html>