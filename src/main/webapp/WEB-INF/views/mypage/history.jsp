<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html lang="ko" class="show-footer">
<head>
<link rel="stylesheet" href="../resources/css/mypage.css">

<title>와디즈 참여 내역</title>
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/main/main.656a32fe.css">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/main/css/my-wadiz.ddf07734.chunk.css">	
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/common.css?201f1414">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?e1e51710">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/main/css/my-wadiz.ad65e8e1.chunk.css">

</head>
<body style="overflow: auto;">
	<div id="page-container">
		<jsp:include page="../inc/top.jsp"></jsp:include>
		<main id="main-app">
			<div class="MainWrapper_content__GZkTa">
				<section class="MyFundingListContainer_container__j04bM" style="padding: 0 282px 138px;">
					<h2 class="MyFundingListContainer_title__3_i7M">참여내역</h2>
					<ul class="ProjectCardList_container__2Q0Js App_projectCardList__1KfbT">
					
					<c:choose>
						<c:when test="${empty paymentList }">
							<tr>
								<td colspan="4"> 참여한 펀딩 내역이 존재하지 않습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${paymentList}" var="paymentList">
							<div>
								<div>
									<ul class="MyFundingList_myFundingList__3outv">
										<li class="MyFundingList_listItem__2C_bx" style="padding-bottom: 0">
											<a href="history2?payment_idx=${paymentList.payment_idx }">
											
												<dl class="MyFundingListItem_fundingCard__1mDVb">
													<dd>
														<p class="MyFundingListItem_status__3WM80">
															<i class="MyFundingListItem_icon__qMlG5"></i>${paymentList.project_category}
														</p>
														<p class="MyFundingListItem_title__1MJNN">${paymentList.project_title}</p>
														<p class="MyFundingListItem_maker__2m1j6" style="padding-bottom: 7px"></p>
														<p class="MyFundingListItem_fundingInfo__2_DFC"  style="padding: 0px 0px 15px">
															<em class="MyFundingListItem_fundStatus__1t2dq">펀딩기간</em>
															<em class="MyFundingListItem_comment__2zTJL">${paymentList.project_start_date} ~ ${paymentList.project_end_date}</em>
															<em class="" style="float: right">상세보기 >
															</em>
														</p>
													</dd>
												</dl>
											</a>
										</li>
									</ul>
								</div>
							</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					</ul>
				</section>
			</div>
		</main>
		<jsp:include page="../inc/footer.jsp"></jsp:include>
	</div>
</body>
</html>