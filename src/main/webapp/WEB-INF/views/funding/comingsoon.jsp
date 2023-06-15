<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://static.wadiz.kr/main/main.c1266dc7.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/0.9e265a0e.chunk.css">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/layout.css?97a6eedb">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/Welcome-coupon~comingsoon-main~earlybird-app~equity-main~iplicense~main-page~my-wadiz~planned-app~pr~9c6fdc35.25425818.chunk.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/comingsoon-main.4000c0a3.chunk.css">
<script src="resources/js/jquery-3.6.4.js"></script>
</head>
<script>
	// 카테고리, 필터링 기능
 	document.addEventListener("DOMContentLoaded", function() {
 		var item = document.getElementsByClassName("OrderSelectDesktop_sortItem__12TKi");
 		
 		var categoryItem = document.getElementsByClassName("ImageTab_tab__3siCY");
 		
 		var category = "";
 		var order = ""; 
 		
 		for(let categories of categoryItem) {
 			categories.addEventListener("click", function() {
 				category = $(this).val()
 				location.href = "comingsoon?category=" + category + "&order=" + "${param.order}";
 			});
 		}
 		
 		for(let items of item) {
 			items.addEventListener("click", function() {
 				order = $(this).text();
				location.href = "comingsoon?category=" + "${param.category}" + "&order=" + order;
			});
		}
	});
</script>
<script>
	//슬라이드 3초간 유지 후 다음 화면으로 넘어감
	$(document).ready(function() {
		$(".slick-slide").hide(); //화면 로딩 후 모두 숨김
		$(".slick-slide").eq(0).show(); // 0번 표시
		
		setInterval(next, 2000); // 2초마다 next()호출
	
	});
	
	function next() {
		$(".slick-slide").hide();
		var allSlide = $(".slick-slide");
		var currentIndex = 0;
	
		$(".slick-slide").each(function(index, item) {
			if ($(this).hasClass("slick-active")) {
				currentIndex = index;
			}
	
		});
	
		var newIndex = 0;
	
		if (currentIndex >= allSlide.length - 1) {
			//현재 슬라이드 index가 마지막 순서면 0번째로 보냄
			newIndex = 0;
		} else {
			//현재 슬라이드의 index에서 한 칸 만큼 앞으로 간 index 지정
			newIndex = currentIndex + 1;
		}
	
		$(".slick-slide").removeClass("slick-active");
		$(".slick-slide").eq(newIndex).addClass("slick-active");
		$(".slick-slide").eq(newIndex).show();
	
	}
	
	function prev() {
		$(".slick-slide").hide(); //모든 div 숨김
		var allSlide = $(".slick-slide"); //모든 div 객체를 변수에 저장
		var currentIndex = 0; //현재 나타난 슬라이드의 인덱스 변수
	
		//반복문으로 현재 active클래스를 가진 div를 찾아 index 저장
		$(".slick-slide").each(function(index, item) {
			if ($(this).hasClass("slick-active")) {
				currentIndex = index;
			}
		});
	
		//새롭게 나타낼 div의 index
		var newIndex = 0;
	
		if (currentIndex <= 0) {
			newIndex = allSlide.length - 1;
		} else {
			newIndex = currentIndex - 1;
		}
	
		$(".slick-slide").removeClass("slick-active");
		$(".slick-slide").eq(newIndex).addClass("slick-active");
		$(".slick-slide").eq(newIndex).show();
	}
</script>
<body style="overflow: auto;">
	<div id="page-container">

		<main id="main-app">

			<!-- top.jsp -->
			<jsp:include page="../inc/top.jsp"></jsp:include>

			<div class="MainWrapper_content__GZkTa">
				<div class="KeyVisualBanner_container__37DZf">
					<div class="slick-slider slick-initialized" dir="ltr">
						<!-- 팝 슬라이드 -->
						<div class="slick-list">
							<!-- top.jsp 아래 팝 슬라이드 -->
									<c:forEach items="${list }" var="slide" varStatus="status">
										<div 
											class="slick-slide slick-active slick-current" tabindex="-1"
											aria-hidden="false" style="outline: none; width: 1900px;">
												
											<div>
												<div>
													<a	href="detail?num=${slide.project_idx }"
														class="VisualSlide_container__2NDvY" data-promo-acid="-1"													
														style="background-image: url('${pageContext.request.contextPath }/resources/images/project_thumbnail/${slide.project_thumbnail }') ; background-size: contain">
														<div class="VisualSlide_wrap__32Lj4">
															<div class="VisualSlide_text__2SIqN">
																<p class="VisualSlide_title__3USGy" >${slide.project_title }
																</p>
																<p class="VisualSlide_badge__3nqfs">
																<c:choose>
																	<c:when test="${slide.project_type eq 1}">펀딩</c:when>
																	<c:otherwise>공동구매</c:otherwise>
																</c:choose>
																 </p>
															</div>
														</div>
													</a>
												</div>
											</div>
										</div>
									</c:forEach>	
						</div>
					</div>
					<div class="KeyVisualBanner_wrap__10qJJ">
						<div class="KeyVisualBanner_arrows__d8zts">
							<button
								class="Button_button__2FuOU Button_tertiaryGrey__3jJV7 Button_text__2-UCU Button_lg__1Dftp KeyVisualBanner_button__3fHEC"
								type="button" onclick="prev()">
								<span><span class="Button_children__ilFun"><svg
											viewBox="0 0 40 40" focusable="false" role="presentation"
											class="withIcon_icon__3VTbq" aria-hidden="true"
											style="width: 24px; height: 24px;">
											<path d="M12 20L25 7l1.4 1.4L14.8 20l11.6 11.6L25 33 12 20z"></path></svg></span></span>
							</button>
							<button
								class="Button_button__2FuOU Button_tertiaryGrey__3jJV7 Button_text__2-UCU Button_lg__1Dftp KeyVisualBanner_button__3fHEC"
								type="button" onclick="next()">
								<span><span class="Button_children__ilFun"><svg
											viewBox="0 0 40 40" focusable="false" role="presentation"
											class="withIcon_icon__3VTbq" aria-hidden="true"
											style="width: 24px; height: 24px;">
											<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg></span></span>
							</button>
						</div>
					</div>
				</div>
				<div class="Main_categoryMargin__1RWGF"></div>

				<!-- 전체, 테크가전, 패션잡화, 홈리빙 등 아이콘 -->
				<div class="CategoryTab_container__1XTA0 undefined"
					style="top: 0px;">
					<div class="TabsMobile_tabRoot__1KBCT">
						<ul	class="TabsMobile_tabs__39ewt TabsMobile_hideScrollbar__3v5I5">
							<li data-index="0"><button
									class="ImageTab_tab__3siCY ImageTab_first__2C8Ry ${param.category eq '00' ? 'ImageTab_active__BGdXu' : ''}" value="00"
									data-ga-category="오픈예정(홈)_카테고리" data-ga-action="클릭"
									data-ga-label="전체">
									<div class="ImageTab_thumbnailContainer__3Polb">
										<div class="ImageTab_thumbnailPlaceholder__3mluI">
											<div class="ImageTab_thumbnail__3mZWA"></div>
										</div>
									</div>
									<div class="ImageTab_labelContainer__2apP3">
										<span class="ImageTab_label__SvWW9">전체</span>
									</div>
								</button></li>
							<c:forEach items="${categoryList }" var="category">
							<li data-index="${category.category_cd }"><button
									class="ImageTab_tab__3siCY ${param.category eq category.category_cd? 'ImageTab_active__BGdXu' : '' }" value="${category.category_cd }">
									<div class="ImageTab_thumbnailContainer__3Polb">
										<div class="ImageTab_thumbnailPlaceholder__3mluI">
											<div class="ImageTab_thumbnail__3mZWA"
												style="background-image: url(&quot;https://cdn3.wadiz.kr/category/icon/category_${category.category_image}&quot;);"></div>
										</div>
									</div>
									<div class="ImageTab_labelContainer__2apP3">
										<span class="ImageTab_label__SvWW9">${category.category_name }</span>
									</div>
								</button></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="Main_categoryMargin__1RWGF"></div>
				<!-- 오픈예정 리스트 -->
				<div class="Main_container__2oIVn">
					<div class="Main_category__3sabq">
						<p class="Main_categoryName__3YilF"></p>
						<div class="Main_filterWrap__2l__0">
							<ul class="OrderSelectDesktop_sortContainer__1YLsr">
								<li class="OrderSelectDesktop_sortItem__12TKi ${param.order eq '오픈임박순'? 'OrderSelectDesktop_active__YTP2K' : '' }"
									data-ga-category="오픈예정(홈)_정렬" data-ga-action="클릭"
									data-ga-label="오픈임박순">오픈임박순</li>
								<li class="OrderSelectDesktop_sortItem__12TKi ${param.order eq '최신순'? 'OrderSelectDesktop_active__YTP2K' : '' }"
									data-ga-category="오픈예정(홈)_정렬" data-ga-action="클릭"
									data-ga-label="최신순">최신순</li>
							</ul>
						</div>
					</div>
					<div class="TableLayout_container__1_Ap4 Main_table__UHAm-"
						style="grid-template-columns: repeat(3, calc(33.3333% - 20px)); gap: 30px;">
						<!-- 오픈 예정 목록 -->
						<c:forEach items="${comingsoon }" var="comingsoon">
							<div class="Main_cardWrap__qlCoY">
								<div class="ComingsoonMainCard_root__2PH89">
									<a class="ComingsoonMainCard_item__3F1bJ"
										href="detail?num=${comingsoon.project_idx }">
										<div class="ComingsoonMainCard_thumbnailWrap__pO-gp">
											<div aria-hidden="true"
												class="CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
												style="background-image: url(resources/images/project_thumbnail/${comingsoon.project_thumbnail};); border-radius: 8px;"></div>
											<c:if test="${comingsoon.project_plan eq '2' or comingsoon.project_plan eq '3'}">
												<div class="ComingsoonMainCard_ad__2R4c0"><p>AD</p></div>
											</c:if>
										</div>
										<div class="ComingsoonMainCard_contentContainer__3Dps9">
											<div class="ComingsoonMainCard_title__3iBTH">${comingsoon.project_title }</div>
											<div class="ComingsoonMainCard_subText__3frwn">${comingsoon.maker_name }</div>
										</div>
										<div class="CardSpinner_container__1cKRs">
											<div class="CardSpinner_loader__2-LrZ"
												style="width: 32px; height: 32px;">
												<svg viewBox="25 25 50 50" aria-label="Loading">
												<g class="Loader_circular__2dy3E">
												<circle class="Loader_path__2uhmv" cx="50" cy="50" r="20"
														fill="none" stroke-width="4" stroke-miterlimit="10"></circle></g></svg>
											</div>
										</div>
									</a>
									<button aria-label="알림 신청" aria-pressed="false"
										class="Button_button__2FuOU Button_primary__2mZni Button_md__46Ai- Button_startIcon__3p6wN Button_block__1-g8w ComingNotificationButton_button__3KY6r ComingsoonMainCard_notificationButton__rRop5"
										type="button">
										<span><svg viewBox="0 0 40 40" focusable="false"
												role="presentation"
												class="withIcon_icon__3VTbq Button_icon__t6yp6"
												aria-hidden="true">
											<path fill="none" d="M0 0h40v40H0z"></path>
											<path
													d="M36.78 32l-.89-1.56a16.92 16.92 0 0 1-2.18-8.68v-7.12A12.78 12.78 0 0 0 30 5.54a13.86 13.86 0 0 0-9.91-4 14.05 14.05 0 0 0-9.95 4 12.74 12.74 0 0 0-3.76 9.1v7.14a16.92 16.92 0 0 1-2.18 8.68L3.22 32h10.91a5.58 5.58 0 0 0 .2 2.8 5.75 5.75 0 0 0 4.44 3.86 5.52 5.52 0 0 0 1 .09 5.79 5.79 0 0 0 3.71-1.36 5.7 5.7 0 0 0 2-4.38 4.88 4.88 0 0 0-.11-1zM8.37 21.78v-7.14A10.66 10.66 0 0 1 11.52 7 11.81 11.81 0 0 1 20 3.66 11.92 11.92 0 0 1 28.48 7a10.65 10.65 0 0 1 3.14 7.62v7.14a19.52 19.52 0 0 0 1.67 8.16H6.71a19.52 19.52 0 0 0 1.66-8.14zM23.42 33a3.64 3.64 0 0 1-7.11 1.13 3.41 3.41 0 0 1 0-2.14h7a3.18 3.18 0 0 1 .11 1.01z"></path></svg><span
											class="Button_children__ilFun"><span class="ComingNotificationButton_text__1hTeS">${comingsoon.project_start_date} 오픈</span></span></span>
									</button>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<jsp:include page="../inc/footer.jsp"></jsp:include>
		</main>
	</div>
</body>
</html>