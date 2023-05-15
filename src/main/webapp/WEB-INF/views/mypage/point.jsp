<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="ko" class="show-footer">
<head>
<title>와디즈 - 포인트</title>

<link rel="stylesheet" href="../resources/css/point.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">

<c:if test="true">
	<link rel="stylesheet" href="https://static.wadiz.kr/account/main.0e433016.css">
</c:if>

</head>
<body>
<div id="page-container">

	<div class="black-bg-wrap" style="display: none;"></div>
	<form id="forwardForm" method="get">
		<input type="hidden" id="returnURL" name="returnURL">
	</form>
	<input type="hidden" id="sessionLoginCheck" value="true">

	<div id="wadizContainer">
		<div id="mypageWrap">
			<div class="mybenefit-wrap">
				<h2 class="mypage-top-title short">포인트</h2>
				<div class="mypage-project short ">
					<p class="point-guide">포인트 적립, 사용, 소멸 내역입니다.</p>
					<div class="usable-point">
						<p>현재 사용가능 포인트 <em>0 p</em></p>
					</div>
					<div class="point-list">
						<p id="emptyProjectText" style="display: block">포인트 거래 내역이 없습니다.</p>
						<div class="bottom-notice">
							<h4>포인트 이용안내</h4>
							<p> 1. 적립하신 포인트는 리워드 펀딩 참여시 결제금액에서 차감 사용할 수 있습니다. (펀딩 서비스 서포터 이용약관 동의 시)<br> 
								2. 1 Point 당 1 원과 동일한 가치로 사용할 수 있습니다.<br> 
								3. 유효기간 내 사용하지 않은 잔여 포인트는 유효기간 종료일의 익일에 소멸됩니다.<br>
								<br> 
								<a href="javascript:void(0)"
									onclick="wdzLink.open('https://help.wadiz.kr/ko/articles/1138368-%ED%8E%80%EB%94%A9-%ED%8F%AC%EC%9D%B8%ED%8A%B8-%EC%82%AC%EC%9A%A9%EB%B0%A9%EB%B2%95%EC%9D%84-%EC%95%88%EB%82%B4%EB%93%9C%EB%A6%BD%EB%8B%88%EB%8B%A4');">포인트
									이용 자세히 보기 <i class="wadizicon wa-chevron-right"></i>
								</a>
							</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- // #wadizContainer -->


</div>

</body>
</html>