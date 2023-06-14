<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko" class="">
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/main/css/wishes.065b7ca5.chunk.css">	
<script src="../resources/js/jquery-3.6.4.js"></script>
<title>찜하기</title>

	<!-- 찜하기 취소 -->
<script type="text/javascript">
	function wish_cancel(project_idx){
		var form={
				project_idx:project_idx
		};
		
		$.ajax({
            type : 'post', 
            url : "${pageContext.request.contextPath}/mypage/mypage_wish_cancel", 
            cache : false, 
            processData: false, 
            contentType : 'application/json; charset=utf-8', 
            data: JSON.stringify(form), 
            success: function(result) {
            	
            	location.reload();
                alert('해당 상품을 찜 취소 하셨습니다.');
            },
            error : function(e) {
                alert('찜 취소 할 수 없습니다.');
                location.reload(); // 실패시 새로고침하기
            }
        })
	}
</script>
<!-- 찜하기 취소 끗 -->
<body>
	<div id="page-container">
		<main id="main-app">
			<jsp:include page="../inc/top.jsp"></jsp:include>
			<div class="MainWrapper_content__GZkTa">
				<section>
					<div class="App_titleBox__GffUu">
						<h2 class="App_title__2iUXo">찜하기</h2>
					</div>
					<div class="App_content__lI9Y7 App_hasContent__2eWnq">
						<div class="App_inner__29LAc">
							<h2 class="BlindText_textHidden__ovQb4">찜한 목록</h2>
							<ul
								class="ProjectCardList_container__2Q0Js App_projectCardList__1KfbT">
								<c:choose>
									<c:when test="${empty wish }">
										<tr>
											<td colspan="4">찜하기 내역이 존재하지 않습니다.</td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach items="${wish}" var="wish">

											<li class="ProjectCardList_cardList__Eh497">
												<div
													class="ProjectCard_container__1jpWF App_projectCard__2z3D2">
													
														<div class="ProjectCard_thumbnailBox__3nf2n">
															<div aria-hidden="true"
																class="ProjectCard_projectCardImage__1wSoK CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																style="background-image: url(../resources/images/project_thumbnail/${wish.project_thumbnail};); border-radius: 8px;"></div>
														</div>
														<div class="ProjectCard_infoBox__3ILIU">
															<div class="ProjectInfo_container__aMXhM">
																<em class="ProjectInfo_state__3kvLA"> 
																	<span class="ProjectInfo_unitPercent__1gnFw">
																		<fmt:formatNumber value="${(wish.project_detail_amount/wish.project_target)}" type="percent" />달성 중이에요
																	</span>
																</em>
																<div class="ProjectInfo_alignRight__27mRq">
																	<span class="Badge_container__9G9PS Badge_visible__3LNXv ProjectInfo_badge__1JkM6">
																		<span class="Badge_badge__ovUKI Badge_label__2Rft2 Badge_sm__1OBNp Badge_primary__tTdjx Badge_tertiary__3uYKh">
																			<script type="text/javascript">
																				var project_end_date = new Date("${wish.project_end_date}");
																				var now = new Date();
																				var diff = project_end_date - now;
																				var diffDay = Math.ceil(diff/(1000*60*60*24));
																				document.write(diffDay)
																			</script> 일 남음
																		</span>
																	</span>
																</div>
															</div>
															<strong class="ProjectCard_title__3ZLcD">${ wish.project_title}</strong>
															<div class="PreorderMainCard_subText__1LB5l">
																<span class="PreorderMainCard_makerName__2Ufj1">${wish.maker_name }</span>
															</div>
														</div>
														<div class="CardSpinner_container__1cKRs">
															<div class="CardSpinner_loader__2-LrZ" style="width: 32px; height: 32px;">
																<svg viewBox="25 25 50 50" aria-label="Loading">
														<g class="Loader_circular__2dy3E">
														<circle class="Loader_path__2uhmv" cx="50" cy="50" r="20"
																		fill="none" stroke-width="4" stroke-miterlimit="10"></circle></g></svg>
															</div>
														</div>
													</a>
													<button onclick="wish_cancel(${wish.project_idx})"
														class="WishButton_button__1ZqbG WishButton_interaction__2FCel"
														aria-label="찜하기 버튼" aria-pressed="true">
														<svg viewBox="0 0 32 32" focusable="false"
															role="presentation" class="withIcon_icon__3VTbq"
															aria-hidden="true">
												<path
																d="M22.16 4h-.007a8.142 8.142 0 0 0-6.145 2.79A8.198 8.198 0 0 0 9.76 3.998a7.36 7.36 0 0 0-7.359 7.446c0 5.116 4.64 9.276 11.6 15.596l2 1.76 2-1.76c6.96-6.32 11.6-10.48 11.6-15.6v-.08A7.36 7.36 0 0 0 22.241 4h-.085z"></path></svg>
													</button>
												</div>
											</li>

										</c:forEach>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</div>
				</section>
			</div>
		</main>
		<jsp:include page="../inc/footer.jsp"></jsp:include>
	</div>
</body>
</html>