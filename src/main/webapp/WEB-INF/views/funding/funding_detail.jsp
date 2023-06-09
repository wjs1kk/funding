<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/layout.css?97a6eedb">
<link rel="stylesheet"
	href="https://static.wadiz.kr/main/main.c1266dc7.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/reward-story.1b2d2b3c.chunk.css">
<!-- <script src="/node_modules/readmore-js/readmore.min.js"></script> -->
<script src="resources/js/jquery-3.6.4.js"></script>

<!-- slick-slide 사용 -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<title>Insert title here</title>
</head>
<script>
	$(function(){
		$('.slick-slider').slick({
			slide: 'div',		//슬라이드 되어야 할 태그 ex) div, li 
			infinite : true, 	//무한 반복 옵션	 
			slidesToShow : 4,		// 한 화면에 보여질 컨텐츠 개수
			slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
			speed : 100,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
			arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
			dots : true, 		// 스크롤바 아래 점으로 페이지네이션 여부
			autoplay : true,			// 자동 스크롤 사용 여부
			autoplaySpeed : 2000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
			pauseOnHover : false,		// 슬라이드 이동 시 마우스 호버하면 슬라이더 멈추게 설정
			vertical : false,		// 세로 방향 슬라이드 옵션
			prevArrow : '<button type="button" class="RewardImageSlider_slickArrow__1KoIJ RewardImageSlider_slickPrev__358my">Previous</button>',		// 이전 화살표 모양 설정
			nextArrow : '<button type="button" class="RewardImageSlider_slickArrow__1KoIJ RewardImageSlider_slickNext__382fX">Next</button>',		// 다음 화살표 모양 설정
			dotsClass : "slick-dots", 	//아래 나오는 페이지네이션(점) css class 지정
			draggable : true, 	//드래그 가능 여부 
		});
	});
</script>
<body style="margin-bottom: 49px !important; overflow: auto;" class="">
	<div id="page-container">
		<main id="main-app">
			<!-- top.jsp -->
			<jsp:include page="../inc/top.jsp"></jsp:include>
			<div class="MainWrapper_content__GZkTa">
				<div class="RewardDetailDesktop_container__dnnWt">
					<div class="RewardDetailDesktop_header__23GTQ">
						<div class="Tabs_container__3W2T2">
							<ul class="Tabs_tabs__2Zild">
								<li class="Tabs_tab__uDNaK Tabs_active__18kjj">
								<a>스토리</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="RewardDetailDesktop_contentWrapper__1VOHp">
						<div class="RewardDetailDesktop_content__1zkws">
							<div class="RewardDetailDesktop_left__19XHX">
								<div class="RewardImageSlider_container__17EBj">
									<div class="RewardImageSlider_slickList__2wKh0">
										<div class="slick-slider slick-initialized" dir="ltr">
											<button type="button" class="RewardImageSlider_slickArrow__1KoIJ RewardImageSlider_slickPrev__358my">Previous</button>
											<div class="slick-list" style="height: 386px;">
												<div class="slick-track"
													style="width: 5472px; opacity: 1; transform: translate3d(-608px, 0px, 0px);">
													<div data-index="-1" tabindex="-1"
														class="slick-slide slick-cloned" aria-hidden="true"
														style="width: 608px;">
														<div>
															<div class="RewardImageSlider_slickListItem__kkFdd"
																tabindex="-1"
																style="width: 100%; display: inline-block;">
																<div
																	class="RewardImageSlider_slickBackgroundImage__MBaH9"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0418/20230418152326633_199429.jpg/wadiz/format/jpg/quality/80/&quot;);"></div>
															</div>
														</div>
													</div>
													<div data-index="0"
														class="slick-slide slick-active slick-current"
														tabindex="-1" aria-hidden="false"
														style="outline: none; width: 608px;">
														<div>
															<div class="RewardImageSlider_slickListItem__kkFdd"
																tabindex="-1"
																style="width: 100%; display: inline-block;">
																<div
																	class="RewardImageSlider_slickBackgroundImage__MBaH9"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0418/20230418152301555_199429.jpg/wadiz/format/jpg/quality/80/&quot;);"></div>
															</div>
														</div>
													</div>
													<div data-index="1" class="slick-slide" tabindex="-1"
														aria-hidden="true" style="outline: none; width: 608px;">
														<div>
															<div class="RewardImageSlider_slickListItem__kkFdd"
																tabindex="-1"
																style="width: 100%; display: inline-block;">
																<div
																	class="RewardImageSlider_slickBackgroundImage__MBaH9"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0418/20230418152320037_199429.jpg/wadiz/format/jpg/quality/80/&quot;);"></div>
															</div>
														</div>
													</div>
													<div data-index="2" class="slick-slide" tabindex="-1"
														aria-hidden="true" style="outline: none; width: 608px;">
														<div>
															<div class="RewardImageSlider_slickListItem__kkFdd"
																tabindex="-1"
																style="width: 100%; display: inline-block;">
																<div
																	class="RewardImageSlider_slickBackgroundImage__MBaH9"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0418/20230418152323446_199429.jpg/wadiz/format/jpg/quality/80/&quot;);"></div>
															</div>
														</div>
													</div>
													<div data-index="3" class="slick-slide" tabindex="-1"
														aria-hidden="true" style="outline: none; width: 608px;">
														<div>
															<div class="RewardImageSlider_slickListItem__kkFdd"
																tabindex="-1"
																style="width: 100%; display: inline-block;">
																<div
																	class="RewardImageSlider_slickBackgroundImage__MBaH9"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0418/20230418152326633_199429.jpg/wadiz/format/jpg/quality/80/&quot;);"></div>
															</div>
														</div>
													</div>
													<div data-index="4" tabindex="-1"
														class="slick-slide slick-cloned" aria-hidden="true"
														style="width: 608px;">
														<div>
															<div class="RewardImageSlider_slickListItem__kkFdd"
																tabindex="-1"
																style="width: 100%; display: inline-block;">
																<div
																	class="RewardImageSlider_slickBackgroundImage__MBaH9"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0418/20230418152301555_199429.jpg/wadiz/format/jpg/quality/80/&quot;);"></div>
															</div>
														</div>
													</div>
													<div data-index="5" tabindex="-1"
														class="slick-slide slick-cloned" aria-hidden="true"
														style="width: 608px;">
														<div>
															<div class="RewardImageSlider_slickListItem__kkFdd"
																tabindex="-1"
																style="width: 100%; display: inline-block;">
																<div
																	class="RewardImageSlider_slickBackgroundImage__MBaH9"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0418/20230418152320037_199429.jpg/wadiz/format/jpg/quality/80/&quot;);"></div>
															</div>
														</div>
													</div>
													<div data-index="6" tabindex="-1"
														class="slick-slide slick-cloned" aria-hidden="true"
														style="width: 608px;">
														<div>
															<div class="RewardImageSlider_slickListItem__kkFdd"
																tabindex="-1"
																style="width: 100%; display: inline-block;">
																<div
																	class="RewardImageSlider_slickBackgroundImage__MBaH9"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0418/20230418152323446_199429.jpg/wadiz/format/jpg/quality/80/&quot;);"></div>
															</div>
														</div>
													</div>
													<div data-index="7" tabindex="-1"
														class="slick-slide slick-cloned" aria-hidden="true"
														style="width: 608px;">
														<div>
															<div class="RewardImageSlider_slickListItem__kkFdd"
																tabindex="-1"
																style="width: 100%; display: inline-block;">
																<div
																	class="RewardImageSlider_slickBackgroundImage__MBaH9"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0418/20230418152326633_199429.jpg/wadiz/format/jpg/quality/80/&quot;);"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<button type="button"
												class="RewardImageSlider_slickArrow__1KoIJ RewardImageSlider_slickNext__382fX">Next</button>
										</div>
									</div>
									<span class="RewardImageSlider_slickIndex__1OeOW">1/4</span>
								</div>
								<div class="BannerBox_container__1Vo_U">
									<div class="FundingBannerApp_container__1TVdz">
										<div class="NoticeBanner_container__39hFT">
											<div class="NoticeBanner_list__3-bAI">
												<ul class="NoticeBanner_tabs__RzdmX">
													<li
														class="NoticeBanner_tab__1YGYD NoticeBanner_selected__1SxY6"
														style="margin-right: 16px;"><i aria-hidden="true"
														class="NoticeBanner_funding__1vRG6 NoticeBanner_selected__1SxY6"></i><span
														class="NoticeBanner_title__FjAI9">펀딩</span></li>
													<li class="NoticeBanner_tab__1YGYD"
														style="margin-right: 0px;"><i aria-hidden="true"
														class="NoticeBanner_refund__2Kyin"></i><span
														class="NoticeBanner_title__FjAI9">환불</span></li>
												</ul>
											</div>
											<hr aria-hidden="true"
												class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing4__3LCSW Divider_caption2__3b6Dr NoticeBanner_divide__2xt0d">
											<div class="NoticeBanner_description__38PCq">
												와디즈 펀딩은 리워드를 단순히 구매하는 쇼핑이 아닌 <b>메이커의 새로운 제품・서비스・콘텐츠 제작
													과정을 지원</b>해요.
											</div>
										</div>
									</div>
								</div>
								<div class="Story_container__1aCSh">
									<div class="Story_header__1O0Ie">
										<p>프로젝트 스토리</p>
										<div color="basic"
											class="MessageBox_messageBox__2WX5N MessageBox_basic__1zukz Story_messageBox__3hbFg">
											<svg viewBox="0 0 40 40" focusable="false"
												role="presentation"
												class="withIcon_icon__3VTbq MessageBox_icon__1NYKB MessageBox_withoutTitle__1QzoU"
												aria-hidden="true">
												<path fill="none" d="M0 0h40v40H0z"></path>
												<path
													d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm1 28.6h-2v-13h2zm-1-15.84A1.8 1.8 0 1 1 21.8 12a1.8 1.8 0 0 1-1.8 1.76z"></path></svg>
											<div class="MessageBox_content__3Yza8">
												<div class="MessageBox_description__2Fyxq">도서산간에 해당하는
													서포터님은 배송 가능 여부를 반드시 메이커에게 문의 후 참여해 주세요.</div>
											</div>
										</div>
									</div>
									<div class="Story_expandable__hnbsV">
										<div>
											<div class="inner-contents fr-view">
												${fundingDetail.project_content }
											</div>
										</div>
									</div>
									<script>
// 									$(function () {
// 									    $('.Story_button__AG0eO').readmore({
// 									        blockCSS: 'display: block; width: 250px;',
// 									        collapsedHeight: 18,
// 									        moreLink: '<button data-ga-category="펀딩_상세" data-ga-action="클릭" data-ga-label="스토리_더보기" class="Button_button__2FuOU Button_primary__2mZni Button_lg__1Dftp Button_endIcon__1WriQ Button_block__1-g8w Story_gaElement__2z4qg" type="button"><span><span class="Button_children__ilFun">스토리 더보기</span><svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__3VTbq Button_icon__t6yp6" aria-hidden="true"><path d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path></svg></span></button>',
// 									        lessLink: '<button data-ga-category="펀딩_상세" data-ga-action="클릭" data-ga-label="스토리_접기" class="Button_button__2FuOU Button_primary__2mZni Button_lg__1Dftp Button_endIcon__1WriQ Button_block__1-g8w Story_gaElement__2z4qg" type="button"><span><span class="Button_children__ilFun">스토리 접기</span><svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__3VTbq Button_icon__t6yp6" aria-hidden="true"><path d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path></svg></span></button>'
// 									    });
// 									});
									</script>
									<div class="Story_button__AG0eO">
										<button data-ga-category="펀딩_상세" data-ga-action="클릭"
											data-ga-label="스토리_더보기"
											class="Button_button__2FuOU Button_primary__2mZni Button_lg__1Dftp Button_endIcon__1WriQ Button_block__1-g8w Story_gaElement__2z4qg"
											type="button">
											<span>
												<span class="Button_children__ilFun">스토리
													더보기
												</span>
													<svg viewBox="0 0 32 32" focusable="false"
													role="presentation"
													class="withIcon_icon__3VTbq Button_icon__t6yp6"
													aria-hidden="true">
													<path
														d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path></svg>
											</span>
										</button>	
									</div>
								</div>
								<div class="DetailPageRecommendationContainer_container__2dyco">
									<div
										class="DetailPageRecommendationContainer_recommendationWrapper__1xtuS"></div>
									<div class="CardSpinner_container__1cKRs">
										<div class="CardSpinner_loader__2-LrZ"
											style="width: 64px; height: 64px;">
											<svg viewBox="25 25 50 50" aria-label="Loading">
												<g class="Loader_circular__2dy3E">
												<circle class="Loader_path__2uhmv" cx="50" cy="50" r="20"
													fill="none" stroke-width="4" stroke-miterlimit="10"></circle></g></svg>
										</div>
									</div>
								</div>
								<div class="DetailPageRecommendationContainer_banner__z88Vw">
									<a href="/web/wcampaign/search?curatedTag=SHIP_TODAY"
										class="DetailPageRecommendationContainer_content__tX304 DetailPageRecommendationContainer_gaElement__3cHMD"
										data-ga-list="상세페이지 배너" data-ga-category="펀딩(상세)_검색유도_토스트UI"
										data-ga-action="클릭" data-ga-label="바로가기"
										data-gtm-vis-polling-id-11319722_2205="3873"><div
											class="DetailPageRecommendationContainer_title__SkLRw">오늘출발
											프로젝트는 어때요?</div>
										<div
											class="DetailPageRecommendationContainer_description__x5H5m">
											<span>지금 보러가기</span>
											<svg viewBox="0 0 40 40" focusable="false"
												role="presentation" class="withIcon_icon__3VTbq"
												aria-hidden="true" style="width: 16px; height: 16px;">
												<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
										</div></a>
									<button
										class="DetailPageRecommendationContainer_close__2T9zF DetailPageRecommendationContainer_gaElement__3cHMD"
										data-ga-category="펀딩(상세)_검색유도_토스트UI" data-ga-action="클릭"
										data-ga-label="닫기">
										<svg viewBox="0 0 40 40" focusable="false" role="presentation"
											class="withIcon_icon__3VTbq" aria-hidden="true"
											style="width: 16px; height: 16px;">
											<path
												d="M33.4 8L32 6.6l-12 12-12-12L6.6 8l12 12-12 12L8 33.4l12-12 12 12 1.4-1.4-12-12 12-12z"></path></svg>
									</button>
								</div>
								<a
									href="https://forms.monday.com/forms/68ed038446bfb74d2d7d45695b1b1f28?r=use1"
									target="_blank"
									class="FixedBanner_container__D4tLo RewardDetailDesktop_quantityPurchaseBanner__2aFKo"
									data-ga-category="펀딩_상세" data-ga-action="대량구매문의"
									data-ga-label="199429"><div
										class="FixedBanner_content__2lRtv">
										<span class="FixedBanner_icon__3ZsK7" aria-hidden="true"
											style="background-image: url(&quot;data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDIiIGhlaWdodD0iNDIiIHZpZXdCb3g9IjAgMCA0MiA0MiIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTYuMzAwMiA0LjIwMDJIMzMuNjAwMkMzNC43NTUyIDQuMjAwMiAzNS43MDAyIDUuMTQ1MiAzNS43MDAyIDYuMzAwMlYyOS40MDAyQzM1LjcwMDIgMzAuNTU1MiAzNC43NTUyIDMxLjUwMDIgMzMuNjAwMiAzMS41MDAySDYuMzAwMkM1LjE0NTIgMzEuNTAwMiA0LjIwMDIgMzAuNTU1MiA0LjIwMDIgMjkuNDAwMlY2LjMwMDJDNC4yMDAyIDUuMTQ1MiA1LjE0NTIgNC4yMDAyIDYuMzAwMiA0LjIwMDJaIiBmaWxsPSIjRkZCRDQ4Ii8+CjxwYXRoIGQ9Ik0xNi4yNzU0IDEyLjYwMDJWNC4yMDAySDIzLjYyNTRWMTIuNjAwMkgxNi4yNzU0WiIgZmlsbD0iI0ZGRDc5MSIvPgo8cGF0aCBkPSJNMzcuODAwMiAxOC45MTA2SDE2LjgwMDJDMTUuNjQ1MiAxOC45MTA2IDE0LjcwMDIgMTkuODU1NiAxNC43MDAyIDIxLjAxMDZWMzMuNjEwNkMxNC43MDAyIDM0Ljc2NTYgMTUuNjQ1MiAzNS43MTA2IDE2LjgwMDIgMzUuNzEwNkgzOS45MDAyVjIxLjAxMDZDMzkuOTAwMiAxOS44NTU2IDM4Ljk1NTIgMTguOTEwNiAzNy44MDAyIDE4LjkxMDZaIiBmaWxsPSIjMTQ1QzY0Ii8+CjxwYXRoIGQ9Ik0zOS45MDAxIDM0LjY2MDZIMzYuMDE1MVYzNS43MjExTDM4Ljk1NTEgMzguNzY2MUMzOS4xMzM2IDM4Ljg3MTEgMzkuMzU0MSAzOC44ODE2IDM5LjUzMjYgMzguNzk3NkMzOS43MjE2IDM4LjcxMzYgMzkuODU4MSAzOC41NDU2IDM5LjkwMDEgMzguMzM1NlYzNC42NjA2WiIgZmlsbD0iIzE0NUM2NCIvPgo8cGF0aCBkPSJNMjcuMyAyOC4zNjA3QzI3Ljg3OTkgMjguMzYwNyAyOC4zNSAyNy44OTA2IDI4LjM1IDI3LjMxMDdDMjguMzUgMjYuNzMwOCAyNy44Nzk5IDI2LjI2MDcgMjcuMyAyNi4yNjA3QzI2LjcyMDEgMjYuMjYwNyAyNi4yNSAyNi43MzA4IDI2LjI1IDI3LjMxMDdDMjYuMjUgMjcuODkwNiAyNi43MjAxIDI4LjM2MDcgMjcuMyAyOC4zNjA3WiIgZmlsbD0id2hpdGUiLz4KPHBhdGggZD0iTTMyLjU1IDI4LjM2MDdDMzMuMTI5OSAyOC4zNjA3IDMzLjYgMjcuODkwNiAzMy42IDI3LjMxMDdDMzMuNiAyNi43MzA4IDMzLjEyOTkgMjYuMjYwNyAzMi41NSAyNi4yNjA3QzMxLjk3MDEgMjYuMjYwNyAzMS41IDI2LjczMDggMzEuNSAyNy4zMTA3QzMxLjUgMjcuODkwNiAzMS45NzAxIDI4LjM2MDcgMzIuNTUgMjguMzYwN1oiIGZpbGw9IndoaXRlIi8+CjxwYXRoIGQ9Ik0yMi4wNSAyOC4zNjA3QzIyLjYyOTkgMjguMzYwNyAyMy4xIDI3Ljg5MDYgMjMuMSAyNy4zMTA3QzIzLjEgMjYuNzMwOCAyMi42Mjk5IDI2LjI2MDcgMjIuMDUgMjYuMjYwN0MyMS40NzAxIDI2LjI2MDcgMjEgMjYuNzMwOCAyMSAyNy4zMTA3QzIxIDI3Ljg5MDYgMjEuNDcwMSAyOC4zNjA3IDIyLjA1IDI4LjM2MDdaIiBmaWxsPSJ3aGl0ZSIvPgo8L3N2Zz4K&quot;);"></span><strong>B2B
											구매 문의</strong>
									</div> <span class="FixedBanner_arrow__2GDHk" aria-hidden="true"><svg
											viewBox="0 0 40 40" focusable="false" role="presentation"
											class="withIcon_icon__3VTbq" aria-hidden="true"
											style="width: 16px; height: 16px;">
											<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg></span></a>
							</div>
							<div class="RewardDetailDesktop_right__3gQBb">
								<div class="CommonInfo_container__1J2gi">
									<div class="BaseFundingInfo_container__sotrP">
										<div class="BaseFundingInfo_searchInfoWrapper__sb9L-">
											<div class="ProjectSearchTags_container__7YZNA">
												<a href="/web/wcampaign/search?category=289,sc004"
													class="ProjectSearchTags_category__3ofgG ProjectSearchTags_gaElement__1mZHZ"
													data-ga-category="펀딩(상세)_카테고리" data-ga-action="클릭"
													data-ga-label="푸드"><span aria-label="카테고리">푸드</span> <svg
														viewBox="0 0 40 40" focusable="false" role="presentation"
														class="withIcon_icon__3VTbq" aria-hidden="true"
														style="width: 18px; height: 18px;">
														<path
															d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg></a>
												<div class="ProjectSearchTags_hashTags__3v6i6">
													<a data-ga-category="펀딩(상세)_검색태그" data-ga-action="클릭"
														data-ga-label="다이어트"
														href="/web/wcampaign/search?keyword=다이어트"
														class="Button_button__2FuOU Button_tertiaryGrey__3jJV7 Button_contained__2SIAT Button_xs__2DWsb Button_circular__1cdcJ ProjectSearchTags_hashTagButton__fCndq ProjectSearchTags_gaElement__1mZHZ"><span><span
															class="Button_children__ilFun"><div
																	class="ProjectSearchTags_hashTag__2UMo_">
																	<span class="ProjectSearchTags_hash__IgbO9">#</span><span>${fundingDetail.project_category }</span>
																</div></span></span></a>
												</div>
											</div>
											<div class="BaseFundingInfo_share__zjWqm">
												<button type="button" aria-label="공유하기"
													style="position: relative;">
													<div
														style="position: absolute; visibility: hidden; left: -10px; top: -10px; width: 44px; height: 44px;"></div>
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation" class="withIcon_icon__3VTbq"
														aria-hidden="true" style="width: 24px; height: 24px;">
														<path
															d="M30 26a6 6 0 0 0-4.7 2.3L13.7 22a5.9 5.9 0 0 0 0-3.9l11.6-6.3a6 6 0 1 0-1-1.8l-11.6 6.3a6 6 0 1 0 0 7.4L24.3 30a6 6 0 1 0 5.7-4zM26 8a4.1 4.1 0 1 1 .1 1 4 4 0 0 1-.1-1zM8 24a4 4 0 1 1 3.9-5A4 4 0 0 1 8 24zm22 12a4 4 0 0 1-4-4 4 4 0 0 1 4-4 4 4 0 0 1 0 8z"></path></svg>
												</button>
											</div>
										</div>
										<hr
											class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr">
										<div class="BaseFundingInfo_bannerWrapper__3K4mU">
											<div class="FundingTypeBadge_container__1UZDH">
												<span class="FundingTypeBadge_funding__4BhpK">펀딩</span>
											</div>
										</div>
										<p class="BaseFundingInfo_title__1Dw42">${fundingDetail.project_titlie }</p>
										<p class="BaseFundingInfo_description__1XXyy">${fundingDetail.project_summary }</p>
										<div class="BaseFundingInfo_rateWrapper__32WcC">
											<div class="BaseFundingInfo_rate__1uMoD">
												<div class="BaseFundingInfo_infoWrapper__23LoT">
													<span class="BaseFundingInfo_achivementRate__1Cnsy">
													<fmt:formatNumber value="${fundingDetail.project_percent }" type="percent"/>
													</span><span
														class="BaseFundingInfo_successInfo__UrXp4"> 달성</span>
												</div>
												<span
													class="Badge_container__9G9PS Badge_visible__3LNXv BaseFundingInfo_remainingDay__2ooL6"><span
													class="Badge_badge__ovUKI Badge_label__2Rft2 Badge_md__1Ck0w Badge_primary__tTdjx Badge_tertiary__3uYKh">
													<script type="text/javascript">
														var project_end_date = new Date("${selectFundingDetail.project_end_date}");
														var now = new Date();
														var diff = project_end_date - now;
														var diffDay = Math.ceil(diff/(1000*60*60*24));
														document.write(diffDay)
													</script>
														일 남음</span></span>
											</div>
											<div class="BaseFundingInfo_rate__1uMoD">
												<p class="BaseFundingInfo_totalBackedAmount__1ezH_">
													<fmt:formatNumber value="${fundingDetail.project_detail_amount}" type="Number"/><span>원</span>
												</p>
												<span
													class="Badge_container__9G9PS Badge_visible__3LNXv BaseFundingInfo_remainingDay__2ooL6"><span
													class="Badge_badge__ovUKI Badge_label__2Rft2 Badge_md__1Ck0w Badge_secondary__UV-TU Badge_tertiary__3uYKh">${fundingDetail.project_detail_person }명
														참여</span></span>
											</div>
										</div>
										<div class="BaseFundingInfo_divider__3U_IP"></div>
										
									</div>
									<div class="CommonInfo_popBanner__1Y1Y_"></div>
									<div class="RewardCTA_container__1F4fy">
										<div class="RewardCTA_left__2uQx8">
											<div class="RewardCTA_buttonBox__dgJiQ">
												<button aria-label="찜하기 버튼" aria-pressed="false"
													data-ga-category="펀딩_상세" data-ga-action="찜하기_추가"
													data-ga-label=""
													class="Button_button__2FuOU Button_secondary__LNLsN Button_lg__1Dftp Button_block__1-g8w RewardCTA_wishButton__3JmIg"
													type="button">
													<span><span class="Button_children__ilFun"><div>
																<svg viewBox="0 0 32 32" focusable="false"
																	role="presentation" class="withIcon_icon__3VTbq"
																	aria-hidden="true" style="width: 24px; height: 24px;">
																	<path
																		d="M22.16 4h-.007a8.142 8.142 0 0 0-6.145 2.79A8.198 8.198 0 0 0 9.76 3.998a7.36 7.36 0 0 0-7.359 7.446c0 5.116 4.64 9.276 11.6 15.596l2 1.76 2-1.76c6.96-6.32 11.6-10.48 11.6-15.6v-.08A7.36 7.36 0 0 0 22.241 4h-.085zm-5.28 21.84l-.88.8-.88-.8h-.08C8.4 19.76 4 15.84 4 11.44l-.001-.082A5.76 5.76 0 0 1 9.928 5.6a6.542 6.542 0 0 1 4.865 2.232l.486.567h1.52l.48-.56a6.548 6.548 0 0 1 4.877-2.24l.084-.001a5.76 5.76 0 0 1 5.76 5.76l-.001.085c0 4.396-4.4 8.316-11.12 14.396z"></path></svg>
																<span class="RewardCTA_count__3Bg5y">518</span>
															</div></span></span>
												</button>
											</div>
										</div>
										<div class="RewardCTA_right__2UBW-" onclick="location.href='rewardSelect?num=${param.num}'">
											<div class="RewardCTA_buttonWrap__wNKI4">
												<button
													class="Button_button__2FuOU Button_primary__2mZni Button_contained__2SIAT Button_md__46Ai- Button_block__1-g8w RewardCTA_button__2rh9i"
													type="button">
													<span><span class="Button_children__ilFun"><p>펀딩하기</p></span></span>
												</button>
											</div>
										</div>
									</div>
									<section class="MakerInfo_container__123Tc">
										<section class="MakerInfoHeader_container__3ghbZ">
											<div class="MakerInfoHeader_profile__3WTfa">
												<div class="MakerInfoHeader_makerInfo__3f7XF">
													<a class="MakerInfoHeader_link__3S3R_"
														href="/web/maker/detail/1783696?path=reward_detail"><div
															class="Avatar_avatar__1d9Wt Avatar_xs__3q9gb MakerInfoHeader_avatar__3YTtH">
															<span class="Avatar_hasImage__2TKl6"
																style="background-image: ${pageContext.request.contextPath }/resources/images/maker_images/${fundingDetail.maker_image};"></span>
														</div>
														<div class="MakerInfoHeader_texts__2IMv2">
															<span class="MakerInfoHeader_makerName__jLMZK">
																${fundingDetail.maker_name }
															</span>
														</div>
													</a>
												</div>
												<button class="Button_button__2FuOU Button_primary__2mZni Button_contained__2SIAT Button_sm__16X6h Button_startIcon__3p6wN" 
													type="button">
													<span><svg viewBox="0 0 32 32" focusable="false"
															role="presentation"
															class="withIcon_icon__3VTbq Button_icon__t6yp6 MakerInfoHeader_icon__2uRNH"
															aria-hidden="true" style="width: 14px; height: 14px;">
															<path d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
															<span class="Button_children__ilFun">문의하기</span></span>
												</button>

											</div>
										</section>
									</section>
									<div class="RewardProjectReportContainer_container__1ssCQ">
										<div class="RewardProjectReportContainer_text__1MFwl">
											<img
												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTgiIGhlaWdodD0iMjAiIHZpZXdCb3g9IjAgMCAxOCAyMCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTguOTU1NTEgMTkuNzEzNUM4Ljg5OTYzIDE5LjcxMDEgOC44NDUyNyAxOS42OTc0IDguNzk0NTIgMTkuNjc2M0w4Ljc1MjMxIDE5LjY1NTlMOC41NjU2OCAxOS41OTA4QzguMzQ0MzEgMTkuNTA5MSA4LjA2NjU3IDE5LjM5MjkgNy43NDQ5NiAxOS4yMzgyTDcuNjE4NzYgMTkuMTc2NUM2LjY5OTQzIDE4LjcyMTIgNS43ODExOSAxOC4xMTY4IDQuOTIzNTYgMTcuMzQyN0MxLjk4MTAyIDE0LjY4NjggMC40NzM0NTcgMTAuNzYwNiAxLjE2NzA0IDUuMzc3NjhDMS4xOTc4NCA1LjEzODYxIDEuMzkzNjIgNC45NTg1NSAxLjYyODY4IDQuOTQyNTVMMS43MTU0OCA0Ljk0MjkyQzIuMDM1MzYgNC45NTEyOSAyLjQ5MTY3IDQuOTI2NzYgMy4wMzQ1MSA0Ljg0MDUzQzMuODcwNTUgNC43MDc3MyA0LjY5NzEyIDQuNDU3MTUgNS40NjU1MyA0LjA2MjRDNi43MzMyNyAzLjQxMTE0IDcuNzM1NDUgMi40MjQ2MyA4LjM4ODQ2IDEuMDM0NzVMOC40ODYyIDAuODE1OTgyTDguNDkyMTggMC43NjU4NzZDOC41Mjg4NCAwLjU1NTQ1NCA4LjY5OTg3IDAuMzc5NjQ3IDguOTI3NTEgMC4zNTM4NDVMOC45ODU1NiAwLjM1MDU4Nkg5LjAxNDQ0QzkuMjcwNjkgMC4zNTA1ODYgOS40NjgxIDAuNTM3OTE5IDkuNTA3ODIgMC43NjU4NzZMOS41MTQxMSAwLjgxNjk4Mkw5LjUyODM1IDAuODUxMTcxQzEwLjE1MDggMi4yNzYyNiAxMS4xMjYxIDMuMjk1IDEyLjM3MDYgMy45NzU1NUwxMi41MzQ1IDQuMDYyNEMxMy4zMDI5IDQuNDU3MTUgMTQuMTI5NCA0LjcwNzczIDE0Ljk2NTUgNC44NDA1M0MxNS40NTQgNC45MTgxMyAxNS44NzI1IDQuOTQ1NzcgMTYuMTg0NSA0Ljk0NDQyTDE2LjMxMTggNC45NDIwM0MxNi41NzI2IDQuOTI4OTUgMTYuNzk5NiA1LjExODY5IDE2LjgzMyA1LjM3NzY4QzE3LjUyNjUgMTAuNzYwNiAxNi4wMTkgMTQuNjg2OCAxMy4wNzY0IDE3LjM0MjdDMTIuMjE4OCAxOC4xMTY4IDExLjMwMDYgMTguNzIxMiAxMC4zODEyIDE5LjE3NjVDOS45NTc3OCAxOS4zODYzIDkuNjAyOCAxOS41MzI2IDkuMzQyMDUgMTkuNjI0MUw5LjI0NiAxOS42NTY0TDkuMjA1NDggMTkuNjc2M0M5LjE1NDczIDE5LjY5NzQgOS4xMDAzNyAxOS43MTAxIDkuMDQ0NDkgMTkuNzEzNUg4Ljk1NTUxWk04Ljk5OTkgMi4wMjU0Nkw4LjkzNzE4IDIuMTM0NTdDOC4xOTU4NyAzLjM4NTIyIDcuMTY2ODMgNC4zMTMwOCA1LjkyMjY2IDQuOTUyMjRDNS4wNTI3MSA1LjM5OTE1IDQuMTI2MDIgNS42ODAwOCAzLjE5MTQ1IDUuODI4NTNDMi44MjY3NyA1Ljg4NjQ2IDIuNDk0OTMgNS45MTk2MyAyLjIwNjIxIDUuOTM0NzZMMi4xMDgyMSA1LjkzODQ5TDIuMDk5MSA2LjAyMzA2QzEuNjEzOTcgMTAuNzIgMi45MzYgMTQuMTIxOCA1LjQ1NTI1IDE2LjQ3MjlMNS41OTM4NSAxNi42MDAxQzYuMzc5MzYgMTcuMzA5IDcuMjIxNjEgMTcuODYzNCA4LjA2Mjc5IDE4LjI4MDFDOC4yOTcyNCAxOC4zOTYyIDguNTE3NjggMTguNDk0NSA4LjcyMDMzIDE4LjU3NjFMOC45NTY2NyAxOC42NjY5TDguOTk5OSAxOC42ODJMOS4xMzEwNyAxOC42MzQyQzkuMzcyOTggMTguNTQyNiA5LjY0NDE1IDE4LjQyNTIgOS45MzcyMSAxOC4yODAxQzEwLjc3ODQgMTcuODYzNCAxMS42MjA2IDE3LjMwOSAxMi40MDYyIDE2LjYwMDFDMTQuOTY4NyAxNC4yODcxIDE2LjM0NTIgMTAuOTI3OSAxNS45MjU2IDYuMjc3OThMMTUuODkxNiA1LjkzODQ5TDE1Ljc5MzggNS45MzQ3NkMxNS41NTMyIDUuOTIyMTUgMTUuMjgyNiA1Ljg5NzAyIDE0Ljk4ODEgNS44NTU0N0wxNC44MDg2IDUuODI4NTNDMTMuODc0IDUuNjgwMDggMTIuOTQ3MyA1LjM5OTE1IDEyLjA3NzMgNC45NTIyNEMxMC44MzMyIDQuMzEzMDggOS44MDQxMyAzLjM4NTIyIDkuMDYyODIgMi4xMzQ1N0w4Ljk5OTkgMi4wMjU0NloiIGZpbGw9IiM4NjhFOTYiLz4KPHBhdGggZD0iTTkgMi4wMjUzOUw4LjkzNzI4IDIuMTM0NUM4LjE5NTk2IDMuMzg1MTYgNy4xNjY5MyA0LjMxMzAyIDUuOTIyNzYgNC45NTIxOEM1LjA1MjgxIDUuMzk5MDkgNC4xMjYxMiA1LjY4MDAyIDMuMTkxNTUgNS44Mjg0N0MyLjgyNjg3IDUuODg2NCAyLjQ5NTAzIDUuOTE5NTcgMi4yMDYzMSA1LjkzNDdMMi4xMDgzIDUuOTM4NDJMMi4wOTkyIDYuMDIzQzEuNjE0MDcgMTAuNzE5OSAyLjkzNjEgMTQuMTIxNyA1LjQ1NTM1IDE2LjQ3MjhMNS41OTM5NSAxNi42QzYuMzc5NDYgMTcuMzA5IDcuMjIxNzEgMTcuODYzNCA4LjA2Mjg5IDE4LjI4QzguMjk3MzQgMTguMzk2MSA4LjUxNzc4IDE4LjQ5NDUgOC43MjA0MyAxOC41NzYxTDguOTU2NzcgMTguNjY2OEw5IDE4LjY4MTlMOS4xMzExNyAxOC42MzQyQzkuMzczMDggMTguNTQyNSA5LjY0NDI1IDE4LjQyNTIgOS45MzczMSAxOC4yOEMxMC43Nzg1IDE3Ljg2MzQgMTEuNjIwNyAxNy4zMDkgMTIuNDA2MyAxNi42QzE0Ljk2ODggMTQuMjg3MSAxNi4zNDUzIDEwLjkyNzggMTUuOTI1NyA2LjI3NzkxTDE1Ljg5MTcgNS45Mzg0MkwxNS43OTM5IDUuOTM0N0MxNS41NTMzIDUuOTIyMDkgMTUuMjgyNyA1Ljg5Njk1IDE0Ljk4ODIgNS44NTU0TDE0LjgwODcgNS44Mjg0N0MxMy44NzQxIDUuNjgwMDIgMTIuOTQ3NCA1LjM5OTA5IDEyLjA3NzQgNC45NTIxOEMxMC44MzMzIDQuMzEzMDIgOS44MDQyMyAzLjM4NTE2IDkuMDYyOTIgMi4xMzQ1TDkgMi4wMjUzOVoiIGZpbGw9IndoaXRlIi8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNOC45NDkyMiAzLjA3ODEyQzguOTQ5MjIgMy4wNzgxMiAxMC4zOTMyIDcuMTI4ODUgMTUuMTE5MSA2Ljk5MzgyQzE1LjExOTEgNi45OTM4MiAxNS41MTI5IDE1LjUwMDMgOC45NDkyMiAxNy41MjU3VjMuMDc4MTJaIiBmaWxsPSIjRERFMkU2Ii8+CjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMTEuNzgxNyA4LjU1NzYyTDEwLjgxNTUgMTEuNjcyNkw5Ljg0MTc5IDguNTU3NjJIOC44ODk5QzguNjEzNzcgOC41NTc2MiA4LjM2ODc4IDguNzQzNSA4LjI4MjggOS4wMTgxM0w3LjQ1MzExIDExLjY3MjZMNi40ODY5NiA4LjU1NzYySDUuMTMyODFMNi43MjI2NCAxMy41NTk2SDguMDgxODlMOS4xMzQ0NSAxMC4zNTA4TDEwLjE4NjkgMTMuNTU5NkgxMS41NDYxTDEzLjEzNTkgOC41NTc2MkgxMS43ODE3WiIgZmlsbD0iIzg2OEU5NiIvPgo8L3N2Zz4K"
												alt="shild icon">프로젝트에 문제가 있나요?
										</div>
										<div class="RewardProjectReportContainer_arrow__9AEXB">
											신고하기
											<svg viewBox="0 0 40 40" focusable="false"
												role="presentation"
												class="withIcon_icon__3VTbq RewardProjectReportContainer_icon__2sKwN"
												aria-hidden="true" style="width: 16px; height: 16px;">
												<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
										</div>
									</div>
									<div class="CommonInfo_rewardsWrap__2dogH">
										<div class="Rewards_container__3UnkZ">
											<div class="Rewards_title__30Vv2">
												<p>리워드 선택</p>
												<div class="Rewards_period__Mo1m-">
													<p>진행기간</p>
													<p>${selectFundingDetail.project_start_date } ~ ${selectFundingDetail.project_end_date }</p>
												</div>
											</div>
											<div class="Rewards_listBox__182Ct">
												<div class="Rewards_list__VD-Af">

													<!-- 												리워드 카드 -->
													<c:forEach items="${selectReward }" var="selectReward">
														<div style="position: relative;">
															<div class="Reward_container__2wOvB Reward_expand__37mL_"
																onclick="location.href='rewardSelect?num=${param.num}&select=${selectReward.reward_idx }'">
																<div class="Reward_header__vFj8i">
																	<div class="Reward_headerLeft__JbqPa">
																		<div class="Reward_amount__3JffI">
																			<fmt:formatNumber value="${selectReward.reward_amount }" type="Number" />
																			원<span
																				class="Badge_container__9G9PS Badge_visible__3LNXv Reward_remainQty__1XU3v"><span
																				class="Badge_badge__ovUKI Badge_label__2Rft2 Badge_md__1Ck0w Badge_primary__tTdjx Badge_tertiary__3uYKh">현재
																					<fmt:formatNumber value="${selectReward.reward_quantity - selectReward.reward_sell}" type="Number" />개 남음!
																			</span></span>
																		</div>
																		<p class="Reward_name__36iTj">${selectReward.reward_name }</p>
																	</div>
																</div>
																<div class="Reward_divider__36X-n"></div>
																<div class="Reward_content__2w7cv">
																	<div class="Reward_innerContent__1_sHz">
																		${selectReward.reward_content }
																		<div class="Reward_subInfoContainer__2xWOx">
																			<div class="Reward_divider__36X-n"></div>
																			<div class="Reward_subInfo__1ahoF">
																				<span>배송비</span>
																				<c:choose>
																					<c:when
																						test="${selectReward.reward_delivery_fee eq '0'}">
																						<span class="Reward_infoValue__1_qLb">무료배송</span>
																					</c:when>
																					<c:otherwise>
																						<span class="Reward_infoValue__1_qLb">${selectReward.reward_delivery_fee} 원</span>
																					</c:otherwise>
																				</c:choose>

																			</div>
																			<div class="Reward_divider__36X-n"></div>
																			<div class="Reward_subInfo__1ahoF">
																				<span>발송 시작일</span> <span class="Reward_infoValue__1_qLb">${selectReward.reward_delivery_date } 예정</span>
																			</div>
																			<div class="Reward_divider__36X-n"></div>
																			<div class="Reward_subInfo__1ahoF">
																				<span>제한 수량</span><span
																					class="Reward_infoValue__1_qLb"><fmt:formatNumber
																						value="${selectReward.reward_quantity }"
																						type="Number" />개</span>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</c:forEach>
												
<!-- 												리워드 카드 -->
													<c:forEach items="${selectReward }" var="selectReward">
													<div style="position: relative;">
														<div class="Reward_container__2wOvB Reward_expand__37mL_" onclick="location.href='rewardSelect?num=${param.num}&select=${selectReward.reward_idx }'">
															<div class="Reward_header__vFj8i">
																<div class="Reward_headerLeft__JbqPa">
																	<div class="Reward_amount__3JffI">
																		<fmt:formatNumber value="${selectReward.reward_amount }" type="Number"/>원<span
																			class="Badge_container__9G9PS Badge_visible__3LNXv Reward_remainQty__1XU3v"><span
																			class="Badge_badge__ovUKI Badge_label__2Rft2 Badge_md__1Ck0w Badge_primary__tTdjx Badge_tertiary__3uYKh">현재
																				<fmt:formatNumber value="${selectReward.reward_quantity - selectReward.reward_sell}" type="Number"/>개 남음!</span></span>
																	</div>
																	<p class="Reward_name__36iTj">${selectReward.reward_name }</p>
																</div>
															</div>
															<div class="Reward_divider__36X-n"></div>
															<div class="Reward_content__2w7cv">
																<div class="Reward_innerContent__1_sHz">
																	${selectReward.reward_content }
																	<div class="Reward_subInfoContainer__2xWOx">
																		<div class="Reward_divider__36X-n"></div>
																		<div class="Reward_subInfo__1ahoF">
																			<span>배송비</span>
																				<c:choose>
																					<c:when test="${selectReward.reward_delivery_fee eq '0'}">
																						<span class="Reward_infoValue__1_qLb">무료배송</span>
																					</c:when>
																					<c:otherwise>
																						<span class="Reward_infoValue__1_qLb">${selectReward.reward_delivery_fee} 원</span>
																					</c:otherwise>
																				</c:choose>
																			
																		</div>
																		<div class="Reward_divider__36X-n"></div>
																		<div class="Reward_subInfo__1ahoF">
																			<span>발송 시작일</span>
																			<span class="Reward_infoValue__1_qLb">${selectReward.reward_delivery_date } 예정</span>
																		</div>
																		<div class="Reward_divider__36X-n"></div>
																		<div class="Reward_subInfo__1ahoF">
																			<span>제한 수량</span><span
																				class="Reward_infoValue__1_qLb"><fmt:formatNumber value="${selectReward.reward_quantity }" type="Number"/>개</span>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													</c:forEach>
<!-- 													리워드카드 끝 -->
												</div>
											</div>
										</div>
										<div class="RewardCTA_container__1F4fy">
											<div class="RewardCTA_left__2uQx8">
												<div class="RewardCTA_buttonBox__dgJiQ">
													<button aria-label="찜하기 버튼" aria-pressed="false"
														data-ga-category="펀딩_상세" data-ga-action="찜하기_추가"
														data-ga-label=""
														class="Button_button__2FuOU Button_secondary__LNLsN Button_lg__1Dftp Button_block__1-g8w RewardCTA_wishButton__3JmIg"
														type="button">
														<span><span class="Button_children__ilFun"><div>
																	<svg viewBox="0 0 32 32" focusable="false"
																		role="presentation" class="withIcon_icon__3VTbq"
																		aria-hidden="true" style="width: 24px; height: 24px;">
																		<path
																			d="M22.16 4h-.007a8.142 8.142 0 0 0-6.145 2.79A8.198 8.198 0 0 0 9.76 3.998a7.36 7.36 0 0 0-7.359 7.446c0 5.116 4.64 9.276 11.6 15.596l2 1.76 2-1.76c6.96-6.32 11.6-10.48 11.6-15.6v-.08A7.36 7.36 0 0 0 22.241 4h-.085zm-5.28 21.84l-.88.8-.88-.8h-.08C8.4 19.76 4 15.84 4 11.44l-.001-.082A5.76 5.76 0 0 1 9.928 5.6a6.542 6.542 0 0 1 4.865 2.232l.486.567h1.52l.48-.56a6.548 6.548 0 0 1 4.877-2.24l.084-.001a5.76 5.76 0 0 1 5.76 5.76l-.001.085c0 4.396-4.4 8.316-11.12 14.396z"></path></svg>
																	<span class="RewardCTA_count__3Bg5y">518</span>
																</div></span></span>
													</button>
												</div>
											</div>
											<div class="RewardCTA_right__2UBW-">
												<div class="RewardCTA_buttonWrap__wNKI4"
													onclick="location.href='rewardSelect?num=${param.num}'">
													<button
														class="Button_button__2FuOU Button_primary__2mZni Button_contained__2SIAT Button_md__46Ai- Button_block__1-g8w RewardCTA_button__2rh9i"
														type="button">
														<span><span class="Button_children__ilFun"><p>펀딩하기</p></span></span>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="../inc/footer.jsp"></jsp:include>
		</main>
	</div>

</body>
</html>