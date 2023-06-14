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
				<h1 class="Inbox_title__3XRz2">서포터 문의</h1>
				<div class="mypage-section on" id="mypage_section_setting" style="">
					<table class="tb-list" style="width:50%; margin: 0 auto;">
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
<%-- 							<c:choose> --%>
<%-- 								<c:when test="${empty sessionScope.member_idxs}"> --%>
<!-- 									<tr> -->
<!-- 										<td colspan="3" class="noMailForm">로그인 후 조회 가능합니다.</td> -->
<!-- 									</tr> -->
<%-- 								</c:when> --%>
<%-- 								<c:when test="${empty SupInquiry }"> --%>
<!-- 									<tr> -->
<!-- 										<td colspan="3" class="noMailForm">작성된 1:1문의가 없습니다.</td> -->
<!-- 									</tr> -->
<%-- 								</c:when> --%>
<%-- 								<c:otherwise> --%>
									<c:forEach var="SupInquiry" items="${SupInquiry}">
										<tr>
											<td class="tb-subj">
												<c:if test="${SupInquiry.inq_re_lev > 0 }">
													<c:forEach var="i" begin="1" end="${SupInquiry.inq_re_lev }">&nbsp;&nbsp;</c:forEach>
													<img src="https://static.thenounproject.com/png/88514-200.png"
														width="10px" height="10px" style="margin: 20px 5px 0 20px;">
													<a href="sup_inquiry_view?inq_idx=${SupInquiry.inq_idx}">
												</c:if> 
												<c:if test="${SupInquiry.inq_re_lev < 1 }">
													<c:choose>
														<c:when test="${SupInquiry.inq_progress eq '진행중'}">
															<span class="it-notice" style="background-color: #ffab00">${SupInquiry.inq_progress}</span>
														</c:when>
														<c:otherwise>
															<span class="it-notice" style="background-color: #97cf2f">${SupInquiry.inq_progress}</span>
														</c:otherwise>
													</c:choose>
													<a href="sup_inquiry_view?inq_idx=${SupInquiry.inq_idx}">
												</c:if> ${SupInquiry.inq_subject} </a></td>
												
												
												<td>
													<c:if test="${SupInquiry.inq_re_lev > 0 }">
														<c:forEach var="i" begin="1" end="${SupInquiry.inq_re_lev }">&nbsp;&nbsp;</c:forEach>
														${SupInquiry.maker_name}
													</c:if> 
													<c:if test="${SupInquiry.inq_re_lev < 1 }">
														${member.member_name}
													</c:if>  
												</td>
											
<%-- 												<c:if test="${ SupInquiry.inq_re_lev eq 0 }"> --%>
													
<%-- 											   		<td>${maker.maker_name}</td> --%>
<%-- 											    </c:if> --%>
											
																						
											<td><fmt:formatDate pattern="yyyy-MM-dd" value="${SupInquiry.inq_date}" /></td>
										</tr>
									</c:forEach>
<%-- 								</c:otherwise> --%>
<%-- 							</c:choose> --%>
						</tbody>
					</table>

<!-- 					<section id="buttonArea"> -->
<!-- 						<input class="writeBtn" type="button" value="문의하기" onclick="location.href='inquiry_form'"> -->
<!-- 					</section> -->

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