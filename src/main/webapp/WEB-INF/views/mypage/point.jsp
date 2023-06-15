<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="ko" class="show-footer">
<head>
<title>아이펀드 - 포인트</title>

<link rel="stylesheet" href="../resources/css/point.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">

<c:if test="true">
	<link rel="stylesheet" href="https://static.wadiz.kr/account/main.0e433016.css">
</c:if>
</head>
<body>
<div id="page-container">

	<div class="black-bg-wrap" style="display: none;"></div>
	<jsp:include page="../inc/top.jsp"></jsp:include>
	


	<div id="wadizContainer">
		<div id="mypageWrap">
			<div class="mybenefit-wrap">
				<h2 class="mypage-top-title short">포인트</h2>
				<div class="mypage-project short ">
					<div class="usable-point">
						<p>현재 사용가능 포인트 <em>${member_point} P</em> </p>
					</div>
					<div class="point-list">
						<table id="emptyProjectText" >
							<tr>
								<th>포인트 내용</th>
								<th>사용 포인트</th>
								<th>적립 포인트</th>
								<th>남은 포인트</th>
							</tr>
						    <c:choose>
								<c:when test="${empty point }">
									<tr>
										<td colspan="4">포인트 사용 내역이 존재하지 않습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${point}" var="point">
										<tr>
											<td>${point.point_content}</td>
									        <td>${point.point_used}</td>
									        <td>${point.point_save}</td>
									        <td>${point.member_point}</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</table>
					</div>
<!-- 						<p id="emptyProjectText" style="display: block">포인트 거래 내역이 없습니다.</p> -->
						<div class="bottom-notice">
							<h4>포인트 이용안내</h4>
							<p> 1. 적립하신 포인트는 리워드 펀딩 참여시 결제금액에서 차감 사용할 수 있습니다. (펀딩 서비스 서포터 이용약관 동의 시)<br> 
								2. 1 Point 당 1 원과 동일한 가치로 사용할 수 있습니다.<br> 
								3. 유효기간 내 사용하지 않은 잔여 포인트는 유효기간 종료일의 익일에 소멸됩니다.<br>
								<br> 
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