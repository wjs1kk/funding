<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="ko" class=" show-footer">
<head>
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="../resources/css/myinfo.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">

<title>비밀번호 인증</title>
</head>

<body tabindex="0" class="">
	<div id="page-container">
		<jsp:include page="../inc/top.jsp"></jsp:include>
		<div class="black-bg-wrap" style="display: none;"></div>

		<form id="forwardForm" method="get">
			<input type="hidden" id="returnURL" name="returnURL">
		</form>
		<input type="hidden" id="sessionLoginCheck" value="true">

		<div id="accountWrap">
			<!-- S : #newContainer -->
			<div id="newContainer">
				<!-- account-wrap -->
				<div class="account-wrap" style="padding: 140px 20px;">
					<h2 class="small">비밀번호 확인</h2>
					<div class="email-input-wrap">
						<form id="saveForm" method="post" action="checkInfoPro">
							<input type="password" id="password" name="password" class="input-text" placeholder="현재 비밀번호"> 
							<a style="display: block; width: 100%; text-align: right; color: #212529; margin-bottom: 60px; text-decoration: underline;"
								href="/web/waccount/find/pwd">비밀번호 찾기</a>
							<div class="email-input-wrap small">
								<div class="btn-wrap smaller">
									<button id="submitButton" type="submit" class="wz button primary block">확인</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- E : #newContainer -->
		</div>
	</div>
</body>
</html>
