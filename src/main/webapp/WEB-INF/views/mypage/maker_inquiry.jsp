<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html lang="ko" class="show-footer scroll-top scroll-apex">
<head>
<link rel="stylesheet" href="../resources/css/mypage.css">

<title>와디즈</title>

<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/css/vendor.5f64dbd5.chunk.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/common.css?032bb938">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?3fd5c009">
<link href="https://cdn.wadiz.kr/resources/static/css/wlayout.css?v=20230502" rel="stylesheet">
<link rel="stylesheet" href="/resources/static/css/style.css">
<link rel="stylesheet" href="https://static.wadiz.kr/personal-message/main.6cbfbce5.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/floating-buttons/main.2517a310.css">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">

</head>
<body>
	<div id="page-container">
		<jsp:include page="../inc/top.jsp"></jsp:include>
	
		<div class="black-bg-wrap" style="display: none;"></div>
		<form id="forwardForm" method="get">
			<input type="hidden" id="returnURL" name="returnURL">
		</form>
		<input type="hidden" id="sessionLoginCheck" value="true">

		<div id="inbox-app">
			<div class="Inbox_contents__3iZY_">
				<h1 class="Inbox_title__3XRz2">1 : 1 문의</h1>
				
<!-- 					<section style="margin-bottom: 15px; text-align: center;"> -->
<!-- 						<p> -->
<!-- 							<a href="#test" rel="modal:open"> -->
<!-- 							<button class="Button_button__2FuOU Button_primary__2mZni Button_contained__2SIAT Button_sm__16X6h Button_startIcon__3p6wN" -->
<!-- 									  type="button" id="popButton" style="margin-left: 800px;"> -->
<!-- 								<span> -->
<!-- 									<svg viewBox="0 0 32 32" focusable="false" role="presentation" -->
<!-- 										class="withIcon_icon__3VTbq Button_icon__t6yp6 MakerInfoHeader_icon__2uRNH" -->
<!-- 										aria-hidden="true" style="width: 14px; height: 14px;"> -->
<!-- 										<path d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg> -->
<!-- 										<span class="Button_children__ilFun">i-Fund 에 문의하기</span></span> -->
<!-- 							</button> -->
<!-- 							</a> -->
<!-- 						</p> -->
<!-- 					</section> -->
				
				<div class="mypage-section on" id="mypage_section_setting" >
					<table class="tb-list" style="width: 50%; margin: 0 auto;">
						<colgroup>
							<col>
							<col style="width: 18%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col" style="width: 18%">작성일</th>
							</tr>
						</thead>
						<tbody id="notice_list">
							<c:choose>
								<c:when test="${empty sessionScope.member_idx}">
									<tr>
										<td colspan="3" class="noMailForm">로그인 후 조회 가능합니다.</td>
									</tr>
								</c:when>
								<c:when test="${empty myInquiry }">
									<tr>
										<td colspan="3" class="noMailForm">작성된 1:1문의가 없습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="myInquiry" items="${myInquiry}">
										<tr>
											<td class="tb-subj">
												<c:if test="${myInquiry.inq_re_lev > 0 }">
													<c:forEach var="i" begin="1" end="${myInquiry.inq_re_lev }">&nbsp;&nbsp;</c:forEach>
													<img src="https://static.thenounproject.com/png/88514-200.png"
														width="10px" height="10px" style="margin: 20px 5px 0 20px;">
													<a href="inquiry_view?inq_idx=${myInquiry.inq_idx}">
												</c:if> 
												<c:if test="${myInquiry.inq_re_lev < 1 }">
													<c:choose>
														<c:when test="${myInquiry.inq_progress eq '진행중'}">
															<span class="it-notice" style="background-color: #ffab00">${myInquiry.inq_progress}</span>
														</c:when>
														<c:otherwise>
															<span class="it-notice" style="background-color: #97cf2f">${myInquiry.inq_progress}</span>
														</c:otherwise>
													</c:choose>
													<a href="inquiry_view?inq_idx=${myInquiry.inq_idx}">
												</c:if> ${myInquiry.inq_subject} </a></td>
												
												<td style="">
													<c:if test="${myInquiry.inq_re_lev > 0 }">
														<c:forEach var="i" begin="1" end="${myInquiry.inq_re_lev }">&nbsp;&nbsp;</c:forEach>
														${myInquiry.maker_name}
													</c:if> 
													<c:if test="${myInquiry.inq_re_lev < 1 }">
														${member.member_name}
													</c:if>  
												</td>
											<td><fmt:formatDate pattern="yyyy-MM-dd" value="${myInquiry.inq_date}" /></td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>

						<c:choose>
						<c:when test="${empty param.pageNum }">
							<c:set var="pageNum" value="1" />
						</c:when>
						<c:otherwise>
							<c:set var="pageNum" value="${param.pageNum }" />
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test="${empty param.pageNum }">
							<c:set var="pageNum" value="1" />
						</c:when>
						<c:otherwise>
							<c:set var="pageNum" value="${param.pageNum }" />
						</c:otherwise>
					</c:choose>

				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../inc/footer.jsp"></jsp:include>
	
</body>
</html>