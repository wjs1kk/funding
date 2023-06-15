<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<html lang="ko">
<head>
<title>기본정보설정 : 아이펀드 MY 정보설정</title>
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="../resources/css/mypage.css">

<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/css/vendor.5f64dbd5.chunk.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/common.css?201f1414">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?e1e51710">
<link rel="stylesheet" href="/resources/static/css/style.css">

<link href="https://cdn.wadiz.kr/resources/static/css/wlayout.css?v=20230502" rel="stylesheet">
<link rel="stylesheet" href="/resources/static/css/account.css?v=20230502">
<link rel="stylesheet" href="/resources/static/css/waccount.css?v=20230502">
<link rel="stylesheet" href="/resources/static/css/common.css?v=20230502">
<link rel="stylesheet" href="/resources/static/css/style.css">
<link rel="Stylesheet" type="text/css" href="/resources/static/lib/cropper.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/floating-buttons/main.8755d521.css">

<script src="/resources/static/lib/cropper.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>

</head>
<body>
	<div id="page-container">
		<div class="black-bg-wrap" style="display: none;"></div>
		<jsp:include page="../inc/top.jsp"></jsp:include>

		<div id="accountWrap">
			<div id="newContainer">
				<div class="account-wrap" style="padding: 80px 20px;">
					<h2>쿠폰 신청</h2>
					<form id="saveForm" method="post" action="couponPro" enctype="multipart/form-data">
						
						<div class="email-input-wrap">
						<div class="input-btn-wrap">
								<h3>메이커 선택</h3>
							
								<div class="" style="width: 310px">
									<select id="maker_idx" class="input-text" name="maker_idx"> 
										<option value="1">메이커 선택하기</option>
										<c:forEach items="${makerList }" var="makerList">
										
							          		<option value="${makerList.maker_idx }">${makerList.maker_name }</option>
										</c:forEach>
								     </select>
								</div>
							</div>
						
							<h3>쿠폰명</h3>
							<input type="text" name="coupon_name" class="input-text"  placeholder="발급할 쿠폰명" value="" >
							<div class="input-btn-wrap">
								<h3>쿠폰 할인율</h3>
							
								<div class="" style="width: 310px">
									<select id="coupon_percent" class="input-text" name="coupon_percent"> 
										<option value="1">할인율 선택하기</option>
							          	<option value="0.1">10%</option>
										<option value="0.2">20%</option>
							         	<option value="0.3">30%</option>
										<option value="0.4">40%</option>
										<option value="0.5">50%</option>
								     </select>
								</div>
							</div>

							<div class="input-btn-wrap">
							<h3>쿠폰 시작일</h3>
								<div class="input" style="width: 308px;">
									<input class="input-text" type="date" name="coupon_start" id="member_birth" max="2023-12-31" min="1900-01-01" style="width: 100% !important;" required="">
								</div>
							</div>
							<div id="mobileConfirmArea" class="input-btn-wrap" >
							<h3>쿠폰 종료일</h3>
							
								<div class="input" style="width: 308px;">
									<input class="input-text" type="date" name="coupon_end" id="member_birth" max="2023-12-31" min="1900-01-01" style="width: 100% !important;" required="">
								</div>
							</div>
                   			 
							<div class="email-input-wrap small">
								<div class="btn-wrap">
									<button type="submit" id="saveBtn" class="wz button primary block btn-block-mint">발급 신청</button>
								</div>
							</div>
						</div>
						
						<input type="hidden" id="validEmail" value="1">
					</form>
				</div>
				<!-- //account-wrap -->
			</div>
			<!-- E : #newContainer -->
		</div>

	</div>
	<jsp:include page="../inc/footer.jsp"></jsp:include>
	
</body>
</html>