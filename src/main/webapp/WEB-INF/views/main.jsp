<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" class="scroll-top scroll-apex">
<head>
<meta charset="utf-8">
<title>1팀 펀딩</title>


<link rel="stylesheet"
	href="https://static.wadiz.kr/main/main.c1266dc7.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/0.9e265a0e.chunk.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/Welcome-coupon~comingsoon-main~earlybird-app~equity-main~iplicense~main-page~my-wadiz~planned-app~pr~9c6fdc35.25425818.chunk.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/main-page.bc53c07e.chunk.css">
<link href="resources/css/main.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/wui.css?bc8acc52">
<link rel="stylesheet"
	href="https://static.wadiz.kr/main/main.3858b619.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/main-page.ca7ed471.chunk.css">
<!-- <link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?bc8acc52"> -->
<!-- <link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?16adbba1"> -->
<!-- <link rel="stylesheet" href="https://static.wadiz.kr/main/main.3858b619.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/main/css/0.9e265a0e.chunk.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/main/css/1.aab0e1b7.chunk.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/main/css/main-page.ca7ed471.chunk.css"> -->
<script src="resources/js/jquery-3.6.4.js"></script>

</head>
<script>
	// 슬라이드 3초간 유지 후 다음 화면으로 넘어감
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
			<jsp:include page="inc/top.jsp"></jsp:include>
			<div class="MainWrapper_content__GZkTa">
				<div
					class="MainPopBanner_container__2S4Yd MainPopBanner_isClose__2zb_H">
					<img src="" class="MainPopBanner_banner__UHeyX" alt="팝 배너">
				</div>
				<div>
					<div>
						<div class="KeyVisualBanner_container__37DZf">
							<div class="slick-slider slick-initialized" dir="ltr">
								<div class="slick-list">
									<!-- top.jsp 아래 팝 슬라이드 -->
									<c:forEach items="${list }" var="slide" varStatus="status">
										<div 
											class="slick-slide slick-active slick-current" tabindex="-1"
											aria-hidden="false" style="outline: none; width: 1900px;">
												
											<div>
												<div>
													<a	href=""
														class="VisualSlide_container__2NDvY" data-promo-acid="-1"													
														style="background-image: url('${pageContext.request.contextPath }/resources/images/project_thumbnail/${slide.project_thumbnail }') ; background-size: contain">
														<div class="VisualSlide_wrap__32Lj4">
															<div class="VisualSlide_text__2SIqN">
																<p class="VisualSlide_title__3USGy" >${slide.project_title }
																</p>
																<p class="VisualSlide_badge__3nqfs">
																<script type="text/javascript">
																	console.log(${slide.project_type == 1})
																	console.log(typeof ${slide.project_type})
																</script>
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

						<!-- 팝 슬라이드 아래 (취향 맞춤 프로젝트) -->
						<!-- 2023-06-11 박경은 - 메인 css 깨짐 수정  -->
						<div class="RecommendationDesktop_container__3RLMb">
							<div class="Main_wrap__2jKMu">
								<div
									class="RecommendationDesktop_innerGroup__as4jB Main_innerWrap__7-_Vm">
									<div
										class="RecommendFundingWrap_container__3LDiq RecommendationDesktop_recommendFunding__1dKi1">
										<div
											class="title_contentWrapper__1P-q0 RecommendFundingWrap_titleBox__1k7fj">
											<div class="RecommendFundingWrap_subTitle__1SaNL">
												<h2 class="RecommendFundingWrap_title__1b9i3">주목할 만한 프로젝트</h2>
												<p class="RecommendFundingWrap_description__5xAKe">지금 함께
													만드는 성공</p>
											</div>
											
										</div>
										<div class="RecommendFundingWrap_cardListGroup__1nRxw">
											<c:forEach items="${projectOpneList }" var="projectOpneList">	
											<div class="RecommendFundingWrap_card___LnVO">
												<div>
													<a
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks"
														href="/web/campaign/detail/209772?_refer_section_st=PersonalCurator_0"
														data-ec-list="홈_추천_프리오더" data-ec-id="209772"
														data-ec-name="[앵콜요청쇄도] 5일만에 37.5% 모공 쪼여버리는 오디앰플 8중임상화제"
														data-ec-position="0" data-ec-category="뷰티"
														data-ec-brand="루트리" data-ec-contenttype="PREORDER"
														data-gtm-vis-recent-on-screen-11319722_2073="393"
														data-gtm-vis-first-on-screen-11319722_2073="393"
														data-gtm-vis-total-visible-time-11319722_2073="2000"
														data-gtm-vis-recent-on-screen-11319722_2115="394"
														data-gtm-vis-first-on-screen-11319722_2115="394"
														data-gtm-vis-total-visible-time-11319722_2115="2000"
														data-gtm-vis-has-fired-11319722_2073="1"
														data-gtm-vis-has-fired-11319722_2115="1"><article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(resources/images/project_thumbnail/${projectOpneList.project_thumbnail};);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">${projectOpneList.project_title }</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">10,107%</span>뷰티
																</p>
															</div>
														</article></a>
												</div>
											</div>
											</c:forEach>
										</div>
									</div>
									<div
										class="RankingFundingWrap_container__16_A3 RecommendationDesktop_rankingFunding__2ccRd">
										<div
											class="title_contentWrapper__1P-q0 RankingFundingWrap_titleBox__16I2D">
											<h2 class="RankingFundingWrap_title__1fllE">실시간 랭킹</h2>
										</div>
										<div>
											<div class="TabContainer_tab__LuPx6">
												<div>
													<div class="TabButton_container__xc7Uw">
														<button type="button" title="REWARD"
															class="TabButton_btnTab__bibVE TabButton_active__2mzCI">펀딩/프리오더</button>
													</div>
													<div class="TabButton_container__xc7Uw">
														<button type="button" title="STORE"
															class="TabButton_btnTab__bibVE">스토어</button>
													</div>
												</div>
											</div>
											<div class="TabContainer_tabList__2IbMs">
												<ol>
												<c:forEach items="${projectOpneList }" var="projectOpneList">
													<li class="TabContainer_listItem__2nO5j"><div>
															<a
																class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP"
																href="/web/campaign/detail/110059?_refer_section_st=ranking_0"
																data-ec-list="홈_실시간랭킹_펀딩" data-ec-id="110059"
																data-ec-name="[슈가슈가룬] 오리지널 초판본 완벽 복간 + 한정 굿즈"
																data-ec-position="0" data-ec-category="출판"
																data-ec-brand="(주)학산문화사" data-ec-contenttype="REWARD"
																index="0"
																data-gtm-vis-recent-on-screen-11319722_2073="394"
																data-gtm-vis-first-on-screen-11319722_2073="394"
																data-gtm-vis-total-visible-time-11319722_2073="2000"
																data-gtm-vis-recent-on-screen-11319722_2115="394"
																data-gtm-vis-first-on-screen-11319722_2115="394"
																data-gtm-vis-total-visible-time-11319722_2115="2000"
																data-gtm-vis-has-fired-11319722_2073="1"
																data-gtm-vis-has-fired-11319722_2115="1"><article>
																	<div
																		class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
																		<div class="commons_orderText__3B9S_">1</div>
																		<em class="commons_title__1yGWm">${projectOpneList.project_title }</em>
																		<p class="commons_summary__2Ynez">
																			<span class="commons_rate__10tOH">10,512%</span>출판
																		</p>
																	</div>
																	<div
																		class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																		<div aria-hidden="true"
																			class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(resources/images/project_thumbnail/${projectOpneList.project_thumbnail};);"></div>
																	</div>
																</article></a>
														</div></li>
														</c:forEach>
												</ol>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- 스토어 추천 제품 -->
						<div class="Main_wrap__2jKMu">
							<div
								class="RecommendationStore_innerGroup__tYMzy Main_innerWrap__7-_Vm">
								<div class="RecommendationStore_container__3macz">
									<div class="RecommendationStore_header__VkYC6">
										<div class="RecommendationStore_headerText__2_8B0">
											<h2>최근 본 프로젝트</h2>
											<p class="RecommendationStore_description__3PZ1S">팬들이 인정한
												성공 펀딩 집합샵</p>
										</div>
										<div
											class="Tooltip_container__1OVpV RecommendationStore_tooltip__3MCiq" style="display: none">
											<div class="Tooltip_symbol__3cGy0"
												aria-describedby="recommendationStoreWaAiTooltip">
												<span class="AITooltip_icon__wd6n9"></span>
												<div aria-hidden="true" style="display: none;">
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3VTbq Tooltip_tooltipActive__2JjBs"
														aria-hidden="true">
															<path fill="none" d="M0 0h40v40H0z"></path>
															<path
															d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm0 29.5a1.8 1.8 0 1 1 1.8-1.79 1.8 1.8 0 0 1-1.8 1.75zm6-16.13a6.28 6.28 0 0 1-2.7 5.2l-.6.5c-1.7 1.7-1.7 2.4-1.7 4.3h-2a6.51 6.51 0 0 1 2.3-5.7L22 18a4.29 4.29 0 0 0 2-3.7 3.7 3.7 0 0 0-4-4 3.7 3.7 0 0 0-4 4h-2a5.7 5.7 0 0 1 6-6 5.7 5.7 0 0 1 6 6z"></path></svg>
												</div>
												<div aria-hidden="true" style="display: block;">
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3VTbq Tooltip_tooltip__2SdxS"
														aria-hidden="true">
															<path fill="none" d="M0 0h40v40H0z"></path>
															<path
															d="M20 39a19 19 0 1 1 19-19 19.06 19.06 0 0 1-19 19zm0-36a17 17 0 1 0 17 17A17 17 0 0 0 20 3z"></path>
															<path
															d="M24.34 10A5.75 5.75 0 0 0 20 8.33a5.7 5.7 0 0 0-6 6h2a3.7 3.7 0 0 1 4-4 3.7 3.7 0 0 1 4 4A4.29 4.29 0 0 1 22 18l-.7.6a6.51 6.51 0 0 0-2.3 5.7h2c0-1.9 0-2.6 1.7-4.3l.6-.5a6.28 6.28 0 0 0 2.7-5.2 5.73 5.73 0 0 0-1.66-4.3zM20 26.87a1.8 1.8 0 1 0 0 3.6 1.8 1.8 0 1 0 0-3.6z"></path></svg>
												</div>
											</div>
										</div>
									</div>
									<div class="RecommendationStore_cardList__1FZ5m">
										<div class="RecommendationStore_tableWrap__2rBP7">
											<div class="RecommendationStore_tableContent__yUkCF">
												<div
													class="CardTable_container__1H8Vc RecommendationStore_cardTable__-AvHK"
													style="width: calc(100% - 0px);">
													<c:forEach items="${projectOpneList }" var="projectOpneList">
													<div role="presentation"
														class="CardTable_itemContainer__v9-cW"
														style="width: calc(( 16.6667% - 16px + 2.66667px)- 0.01px); margin-left: 0px; margin-right: 8px; margin-bottom: 0px;">
														<a
															href="/web/store/detail/35?_refer_section_st=storeCurator_0"
															class="RecommendationStoreCard_item__3iMMQ"
															data-ec-list="홈_추천_스토어" data-ec-id="35"
															data-ec-name="내 손안의 스마트한 스튜디오, 저스트모바일 셔터그립2"
															data-ec-position="0" data-ec-price="59900"
															data-ec-category="테크·가전" data-ec-brand="주식회사 시티파이브"
															data-ec-contenttype="STORE"
															data-gtm-vis-first-on-screen-11319722_2073="28326"
															data-gtm-vis-first-on-screen-11319722_2115="28392"
															data-gtm-vis-recent-on-screen-11319722_2073="66766"
															data-gtm-vis-total-visible-time-11319722_2073="2000"
															data-gtm-vis-recent-on-screen-11319722_2115="66766"
															data-gtm-vis-total-visible-time-11319722_2115="2000"
															data-gtm-vis-has-fired-11319722_2073="1"
															data-gtm-vis-has-fired-11319722_2115="1"><div
																class="RecommendationStoreCard_thumbnailContainer__mghKx">
																<div
																	class="RecommendationStoreCard_thumbnailPlaceholder__3TTOS"
																	style="padding-top: calc(100% - 0px);">
																	<div aria-hidden="true"
																		class="RecommendationStoreCard_thumbnail__mis5O CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																		style="background-image: url(resources/images/project_thumbnail/${projectOpneList.project_thumbnail};);"></div>
																	<div class="RecommendationStoreCard_wadizOnly__zxtNd"></div>
																</div>
															</div>
															<div
																class="RecommendationStoreCard_contentContainer__aDF-5">
																<div class="RecommendationStoreCard_projectName__kIgBJ">${projectOpneList.project_title }</div>
																<div
																	class="RecommendationStoreCard_participantsContainer__234hX">
																	<span
																		class="RecommendationStoreCard_participants__21h4r">4,033명
																		인증</span>
																</div>
																<div class="StoreCardFooter_container__X5rH8">
																	<div class="StoreCardFooter_upperFooter__kvjJa">
																		<div
																			class="RatingScore_container__AeQ_I RatingScore_smCard02__3cJAW">
																			<div class="RatingScore_icon__rIS_k"></div>
																			<span class="RatingScore_score__2a-SN">4.5</span>
																		</div>
																		<div
																			class="ParticipantScore_container__JH3e_ ParticipantScore_hide__3hFyW">
																			<div class="ParticipantScore_peopleIcon__22zg8"></div>
																			<span class="ParticipantScore_peopleCountText__1oHUl">0명
																				참여</span>
																		</div>
																	</div>
																	<div class="StoreCardFooter_bottomFooter__MhVou">
																		<div
																			class="DeliveryBadge_container__3XB44 StoreCardFooter_badgeFooter__3H1v0"></div>
																	</div>
																</div>
															</div></a>
													</div>
													</c:forEach>
													
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>


						<!-- 회원님이 좋아할 프로젝트 -->
						<!-- 2023-06-11 박경은 - 메인 깨짐 수정 -->
						<div class="Main_wrap__2jKMu">
							<div
								class="RecommendationDesktop_innerGroup__as4jB Main_innerWrap__7-_Vm">
								<div class="LikableFundingWrap_container__3mzG6 undefined">
									<div
										class="title_contentWrapper__1P-q0 LikableFundingWrap_titleBox__31QnF">
										<h3>
											회원님이 <em>좋아할</em> 프로젝트
										</h3>
									</div>
									<div class="LikableFundingWrap_wrap__1ZPJw">
										<ul class="LikableFundingWrap_cardList__aExBc">
											<li class="LikableCard_card__kI_2A"><a
												href="/web/campaign/detail/209390?_refer_section_st=likeable_0"
												data-ec-list="홈_#좋아할 프로젝트_프리오더" data-ec-id="209390"
												data-ec-name="[2.7억 앵콜] 없어서 못먹는 트러플 후라이드 오징어 먹물&amp;치킨 한정판"
												data-ec-position="0" data-ec-category="푸드"
												data-ec-brand="대한제분(주)" data-ec-contenttype="PREORDER"
												data-gtm-vis-recent-on-screen-11319722_2115="382285"
												data-gtm-vis-first-on-screen-11319722_2115="382285"
												data-gtm-vis-total-visible-time-11319722_2115="2000"
												data-gtm-vis-recent-on-screen-11319722_2073="382285"
												data-gtm-vis-first-on-screen-11319722_2073="382285"
												data-gtm-vis-total-visible-time-11319722_2073="2000"
												data-gtm-vis-has-fired-11319722_2073="1"
												data-gtm-vis-has-fired-11319722_2115="1"><div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0425/20230425144313108_209390.jpg/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">[2.7억 앵콜] 없어서 못먹는
																	트러플 후라이드 오징어 먹물&amp;치킨 한정판</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">22529%</span>프리오더
																</p>
															</div>
														</article>
													</div></a></li>
											<li class="LikableCard_card__kI_2A"><a
												href="/web/campaign/detail/214600?_refer_section_st=likeable_1"
												data-ec-list="홈_#좋아할 프로젝트_프리오더" data-ec-id="214600"
												data-ec-name="[장마철] 내 신발 물에 안 젖게 해주세요! 휴대용 방수방탄 슈즈 커버"
												data-ec-position="1" data-ec-category="홈·리빙"
												data-ec-brand="우리민트" data-ec-contenttype="PREORDER"
												data-gtm-vis-recent-on-screen-11319722_2115="382285"
												data-gtm-vis-first-on-screen-11319722_2115="382285"
												data-gtm-vis-total-visible-time-11319722_2115="2000"
												data-gtm-vis-recent-on-screen-11319722_2073="382285"
												data-gtm-vis-first-on-screen-11319722_2073="382285"
												data-gtm-vis-total-visible-time-11319722_2073="2000"
												data-gtm-vis-has-fired-11319722_2073="1"
												data-gtm-vis-has-fired-11319722_2115="1"><div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0516/20230516141706944_214600.jpg/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">[장마철] 내 신발 물에 안 젖게
																	해주세요! 휴대용 방수방탄 슈즈 커버</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">7290%</span>프리오더
																</p>
															</div>
														</article>
													</div></a></li>
											<li class="LikableCard_card__kI_2A"><a
												href="/web/campaign/detail/210077?_refer_section_st=likeable_2"
												data-ec-list="홈_#좋아할 프로젝트_펀딩" data-ec-id="210077"
												data-ec-name="4시간만에 껍질까지 강력분쇄!냄새X  한뼘음처기 에콥미니 20만원대"
												data-ec-position="2" data-ec-category="테크·가전"
												data-ec-brand="(주)포레" data-ec-contenttype="REWARD"
												data-gtm-vis-recent-on-screen-11319722_2115="382285"
												data-gtm-vis-first-on-screen-11319722_2115="382285"
												data-gtm-vis-total-visible-time-11319722_2115="2000"
												data-gtm-vis-recent-on-screen-11319722_2073="382286"
												data-gtm-vis-first-on-screen-11319722_2073="382286"
												data-gtm-vis-total-visible-time-11319722_2073="2000"
												data-gtm-vis-has-fired-11319722_2073="1"
												data-gtm-vis-has-fired-11319722_2115="1"><div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0526/20230526161002472_210077.jpg/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">4시간만에 껍질까지
																	강력분쇄!냄새X 한뼘음처기 에콥미니 20만원대</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">23483%</span>펀딩
																</p>
															</div>
														</article>
													</div></a></li>
											<li class="LikableCard_card__kI_2A"><a
												href="/web/campaign/detail/110059?_refer_section_st=likeable_3"
												data-ec-list="홈_#좋아할 프로젝트_펀딩" data-ec-id="110059"
												data-ec-name="[슈가슈가룬] 오리지널 초판본 완벽 복간 + 한정 굿즈"
												data-ec-position="3" data-ec-category="출판"
												data-ec-brand="(주)학산문화사" data-ec-contenttype="REWARD"
												data-gtm-vis-recent-on-screen-11319722_2115="382285"
												data-gtm-vis-first-on-screen-11319722_2115="382285"
												data-gtm-vis-total-visible-time-11319722_2115="2000"
												data-gtm-vis-recent-on-screen-11319722_2073="382286"
												data-gtm-vis-first-on-screen-11319722_2073="382286"
												data-gtm-vis-total-visible-time-11319722_2073="2000"
												data-gtm-vis-has-fired-11319722_2073="1"
												data-gtm-vis-has-fired-11319722_2115="1"><div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0524/20230524164452061_110059.jpg/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">[슈가슈가룬] 오리지널 초판본
																	완벽 복간 + 한정 굿즈</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">10513%</span>펀딩
																</p>
															</div>
														</article>
													</div></a></li>
										</ul>
										<div
											class="CardType_projectCard__3xhjb CardType_plannedCard__Yyg0B LikableFundingWrap_plannedCard__ZG4TD">
											<a href="/web/wreward/collection/projectclose"
												data-promo-acid="1641"
												data-promo-id="/web/wreward/collection/projectclose"
												data-promo-name="수량 마감 임박 프로젝트" data-promo-position="MRB2"
												data-gtm-vis-recent-on-screen-11319722_2047="382264"
												data-gtm-vis-first-on-screen-11319722_2047="382264"
												data-gtm-vis-total-visible-time-11319722_2047="2000"
												data-gtm-vis-recent-on-screen-11319722_2115="382267"
												data-gtm-vis-first-on-screen-11319722_2115="382267"
												data-gtm-vis-total-visible-time-11319722_2115="2000"
												data-gtm-vis-has-fired-11319722_2047="1"
												data-gtm-vis-has-fired-11319722_2115="1"><article>
													<div
														class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
														<div aria-hidden="true"
															class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
															style="background-image: url(&quot;https://cdn.wadiz.kr/ft/images/green001/2023/0405/20230405172505393_null.jpg/wadiz/resize/1000/format/jpg/quality/85/&quot;);"></div>
													</div>
													<div>
														<span class="CardType_badge__OjSmY">기획전</span><span
															class="CardType_title__2qEmh">수량 마감 임박 프로젝트</span>
													</div>
												</article></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 얼리버드 -->
				<!-- 2023-06-11 박경은 - 메인 css 깨짐 수정  -->
				<div class="Main_wrap__2jKMu">
					<div class="Main_innerWrap__7-_Vm">
						<div class="EarlybirdDesktop_container__1IoRp">
							<div class="EarlybirdDesktop_wrap__314kI">
								<div class="title_titleWrapper__1ggAh">
									<h2 class="title_title__2rv2M">얼리버드</h2>
									<p>먼저 참여하는 분들께 드리는 얼리버드 혜택</p>
								</div>
								<div
									class="Pagination_container__28uaq EarlybirdDesktop_pagination__1CGN5" style="display: none">
									<div class="Pagination_btnGroup__3o2gm">
										<button
											class="Pagination_paginationBtn__31dPl Pagination_prev__OAUZT Pagination_isFirstPage__1nscH"
											disabled="" aria-label="이전 목록">
											<svg viewBox="0 0 40 40" focusable="false"
												role="presentation" class="withIcon_icon__3VTbq"
												aria-hidden="true">
												<path d="M12 20L25 7l1.4 1.4L14.8 20l11.6 11.6L25 33 12 20z"></path></svg>
										</button>
										<button
											class="Pagination_paginationBtn__31dPl Pagination_next__2VEGc"
											aria-label="다음 목록">
											<svg viewBox="0 0 40 40" focusable="false"
												role="presentation" class="withIcon_icon__3VTbq"
												aria-hidden="true">
												<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
										</button>
									</div>
									<ul class="Pagination_pageList__KyPel" aria-label="pagination">
										<li
											class="Pagination_listItem__1atqr Pagination_active__3Lx2R"><button
												type="button">1</button></li>
										<li class="Pagination_listItem__1atqr"><button
												type="button">2</button></li>
										<li class="Pagination_listItem__1atqr"><button
												type="button">3</button></li>
										<li class="Pagination_listItem__1atqr"><button
												type="button">4</button></li>
									</ul>
								</div>
							</div>
							<ul class="EarlybirdDesktop_earlybirdList__2XjA6">
								<li class="EarlybirdDesktop_listItem__2j7AD"><a
									href="/web/campaign/detail/192567?_refer_section_st=earlyBird_0"
									data-ec-list="홈_얼리버드_펀딩" data-ec-id="192567"
									data-ec-name="한번의 빗질로 만드는 골골송 제조기 [털제거 브러시] 목욕부터 털관리까지"
									data-ec-position="0" data-ec-category="반려동물"
									data-ec-brand="주식회사 몬도미오" data-ec-contenttype="REWARD"
									data-gtm-vis-first-on-screen-11319722_2073="411"
									data-gtm-vis-first-on-screen-11319722_2115="411"
									data-gtm-vis-recent-on-screen-11319722_2073="437913"
									data-gtm-vis-total-visible-time-11319722_2073="2000"
									data-gtm-vis-recent-on-screen-11319722_2115="437913"
									data-gtm-vis-total-visible-time-11319722_2115="2000"
									data-gtm-vis-has-fired-11319722_2073="1"
									data-gtm-vis-has-fired-11319722_2115="1"><div
											class="CardType_projectCard__3xhjb CardType_earlybirdCard__1t1n1">
											<div
												class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
												<div aria-hidden="true"
													class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
													style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0531/20230531144501953_192567.jpg/wadiz/resize/1000/format/jpg/quality/85/&quot;);"></div>
											</div>
											<div class="CardType_cardContent__3UMOr">
												<div>
													<p class="CardType_type__El7XP">펀딩</p>
													<div class="commons_content__2K1SH CardType_content__1Pavj">
														<em class="commons_title__1yGWm">한번의 빗질로 만드는 골골송 제조기
															[털제거 브러시] 목욕부터 털관리까지</em>
														<p class="commons_summary__2Ynez">
															<span class="commons_rate__10tOH">1677%</span>반려동물
														</p>
													</div>
												</div>
												<div class="CardType_earlybirdContent__1b8VN">
													<dl>
														<dt class="BlindText_textHidden__ovQb4">옵션명</dt>
														<dd class="CardType_title__2qEmh">*한정수량* [스페셜 얼리버드
															45%] 효율 끝판왕! 전문가 세트</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션내용</dt>
														<dd class="CardType_description__2BtXk">▶ 더콤마V2
															브러시_2개(컬러 선택) + 미스트_2개 + 샴푸_2개 새싹보리 발효 미스트 200ml 새싹보리 발효
															샴푸 300ml ⭢ 양손으로 케어해서 목욕, 빗질 효율성을 50.000% 높여보세요! [45% 혜택]
															정가 138,000원, 정가 대비 62.100원 혜택 - - - - - - - - - - - - - -
															- - - - - - - - - -양손 브러시로 꼼꼼하고 빠르게 꿀피모 만들기 냥득템 *미스트&amp;
															샴푸는 유통기한 2025년 06월26일까지로 사용기간이 넉넉하니, 미리 챙겨둘수록 개이득~</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션금액</dt>
														<dd class="CardType_subContent__3QETf">75,900원</dd>
													</dl>
												</div>
												<div class="CardType_linkBtn__1QHvM">
													지금 참여하기
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
														aria-hidden="true">
														<path
															d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
												</div>
											</div>
										</div></a></li>
								<li class="EarlybirdDesktop_listItem__2j7AD"><a
									href="/web/campaign/detail/215440?_refer_section_st=earlyBird_1"
									data-ec-list="홈_얼리버드_프리오더" data-ec-id="215440"
									data-ec-name="&quot;몇 번을 흔들어도 떨어지지 않아&quot; 이중피팅 선글라스, 써보면 신세계~!"
									data-ec-position="1" data-ec-category="스포츠·모빌리티"
									data-ec-brand="제이엔씨" data-ec-contenttype="PREORDER"
									data-gtm-vis-first-on-screen-11319722_2073="411"
									data-gtm-vis-first-on-screen-11319722_2115="411"
									data-gtm-vis-recent-on-screen-11319722_2073="437913"
									data-gtm-vis-total-visible-time-11319722_2073="2000"
									data-gtm-vis-recent-on-screen-11319722_2115="437913"
									data-gtm-vis-total-visible-time-11319722_2115="2000"
									data-gtm-vis-has-fired-11319722_2073="1"
									data-gtm-vis-has-fired-11319722_2115="1"><div
											class="CardType_projectCard__3xhjb CardType_earlybirdCard__1t1n1">
											<div
												class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
												<div aria-hidden="true"
													class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
													style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0518/20230518171655315_215440.jpg/wadiz/resize/1000/format/jpg/quality/85/&quot;);"></div>
											</div>
											<div class="CardType_cardContent__3UMOr">
												<div>
													<p class="CardType_type__El7XP">프리오더</p>
													<div class="commons_content__2K1SH CardType_content__1Pavj">
														<em class="commons_title__1yGWm">"몇 번을 흔들어도 떨어지지 않아"
															이중피팅 선글라스, 써보면 신세계~!</em>
														<p class="commons_summary__2Ynez">
															<span class="commons_rate__10tOH">269%</span>스포츠·모빌리티
														</p>
													</div>
												</div>
												<div class="CardType_earlybirdContent__1b8VN">
													<dl>
														<dt class="BlindText_textHidden__ovQb4">옵션명</dt>
														<dd class="CardType_title__2qEmh">5. [35% OFF] AF-305
															BK GRAY [변색렌즈]</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션내용</dt>
														<dd class="CardType_description__2BtXk">본제품,하드케이스,닦이천,제품설명서</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션금액</dt>
														<dd class="CardType_subContent__3QETf">182,000원</dd>
													</dl>
												</div>
												<div class="CardType_linkBtn__1QHvM">
													지금 참여하기
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
														aria-hidden="true">
														<path
															d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
												</div>
											</div>
										</div></a></li>
								<li class="EarlybirdDesktop_listItem__2j7AD"><a
									href="/web/campaign/detail/214961?_refer_section_st=earlyBird_2"
									data-ec-list="홈_얼리버드_프리오더" data-ec-id="214961"
									data-ec-name="와인과 가장 잘 어울리는 멜론! 14브릭스 이상 진한 달콤함 오렌지허니듀"
									data-ec-position="2" data-ec-category="푸드"
									data-ec-brand="베리베리 싱글 [by비플]" data-ec-contenttype="PREORDER"
									data-gtm-vis-first-on-screen-11319722_2073="411"
									data-gtm-vis-first-on-screen-11319722_2115="411"
									data-gtm-vis-recent-on-screen-11319722_2073="437913"
									data-gtm-vis-total-visible-time-11319722_2073="2000"
									data-gtm-vis-recent-on-screen-11319722_2115="437913"
									data-gtm-vis-total-visible-time-11319722_2115="2000"
									data-gtm-vis-has-fired-11319722_2073="1"
									data-gtm-vis-has-fired-11319722_2115="1"><div
											class="CardType_projectCard__3xhjb CardType_earlybirdCard__1t1n1">
											<div
												class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
												<div aria-hidden="true"
													class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
													style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0522/20230522102428090_214961.png/wadiz/resize/1000/format/jpg/quality/85/&quot;);"></div>
											</div>
											<div class="CardType_cardContent__3UMOr">
												<div>
													<p class="CardType_type__El7XP">프리오더</p>
													<div class="commons_content__2K1SH CardType_content__1Pavj">
														<em class="commons_title__1yGWm">와인과 가장 잘 어울리는 멜론!
															14브릭스 이상 진한 달콤함 오렌지허니듀</em>
														<p class="commons_summary__2Ynez">
															<span class="commons_rate__10tOH">374%</span>푸드
														</p>
													</div>
												</div>
												<div class="CardType_earlybirdContent__1b8VN">
													<dl>
														<dt class="BlindText_textHidden__ovQb4">옵션명</dt>
														<dd class="CardType_title__2qEmh">[와디즈 특별] 멜론하몽 세트
															1+1</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션내용</dt>
														<dd class="CardType_description__2BtXk">포장 : 멜론 1개입 +
															하몽 1개입 멜론 과수 무게 : 2.2kg 내외 (특대과) 하몽 포장 무게 : 40g 정상가 _____
															55,000원 혜택가 _____ 37,500원 (-17,500원 / 32% 할인) 6월 하순 순차 출고
															예정</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션금액</dt>
														<dd class="CardType_subContent__3QETf">37,500원</dd>
													</dl>
												</div>
												<div class="CardType_linkBtn__1QHvM">
													지금 참여하기
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
														aria-hidden="true">
														<path
															d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
												</div>
											</div>
										</div></a></li>
								<li
									class="EarlybirdDesktop_listItem__2j7AD EarlybirdDesktop_hide__3p7jp"><a
									href="/web/campaign/detail/207363?_refer_section_st=earlyBird_3"
									data-ec-list="홈_얼리버드_프리오더" data-ec-id="207363"
									data-ec-name="5in1 멀티 스프레이! 더 강력한 수압! HOTO 무선 고압세척기 프로"
									data-ec-position="3" data-ec-category="테크·가전"
									data-ec-brand="주식회사위즈굿" data-ec-contenttype="PREORDER"><div
											class="CardType_projectCard__3xhjb CardType_earlybirdCard__1t1n1">
											<div
												class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
												<div aria-hidden="true"
													class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
											</div>
											<div class="CardType_cardContent__3UMOr">
												<div>
													<p class="CardType_type__El7XP">프리오더</p>
													<div class="commons_content__2K1SH CardType_content__1Pavj">
														<em class="commons_title__1yGWm">5in1 멀티 스프레이! 더 강력한
															수압! HOTO 무선 고압세척기 프로</em>
														<p class="commons_summary__2Ynez">
															<span class="commons_rate__10tOH">4272%</span>테크·가전
														</p>
													</div>
												</div>
												<div class="CardType_earlybirdContent__1b8VN">
													<dl>
														<dt class="BlindText_textHidden__ovQb4">옵션명</dt>
														<dd class="CardType_title__2qEmh">[슈퍼 얼리버드] HOTO 아웃도어
															워시 키트</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션내용</dt>
														<dd class="CardType_description__2BtXk">구성 : 다목적 접이식
															버킷백 + 스펀지 + 타올(x2) 정가 대비 할인율 18%</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션금액</dt>
														<dd class="CardType_subContent__3QETf">17,900원</dd>
													</dl>
												</div>
												<div class="CardType_linkBtn__1QHvM">
													지금 참여하기
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
														aria-hidden="true">
														<path
															d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
												</div>
											</div>
										</div></a></li>
								<li
									class="EarlybirdDesktop_listItem__2j7AD EarlybirdDesktop_hide__3p7jp"><a
									href="/web/campaign/detail/217863?_refer_section_st=earlyBird_4"
									data-ec-list="홈_얼리버드_프리오더" data-ec-id="217863"
									data-ec-name="수많은 요청으로 만들어진 데일리백! 365일, 어디서든 레나테백과 함께!"
									data-ec-position="4" data-ec-category="패션·잡화"
									data-ec-brand="swai [스와이] " data-ec-contenttype="PREORDER"><div
											class="CardType_projectCard__3xhjb CardType_earlybirdCard__1t1n1">
											<div
												class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
												<div aria-hidden="true"
													class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
											</div>
											<div class="CardType_cardContent__3UMOr">
												<div>
													<p class="CardType_type__El7XP">프리오더</p>
													<div class="commons_content__2K1SH CardType_content__1Pavj">
														<em class="commons_title__1yGWm">수많은 요청으로 만들어진 데일리백!
															365일, 어디서든 레나테백과 함께!</em>
														<p class="commons_summary__2Ynez">
															<span class="commons_rate__10tOH">543%</span>패션·잡화
														</p>
													</div>
												</div>
												<div class="CardType_earlybirdContent__1b8VN">
													<dl>
														<dt class="BlindText_textHidden__ovQb4">옵션명</dt>
														<dd class="CardType_title__2qEmh">[슈퍼 얼리버드] 레나테백 1EA
															+ 더스트백 1EA set</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션내용</dt>
														<dd class="CardType_description__2BtXk">[슈퍼 얼리버드] 20개
															한정 수량! - 47% 할인 -&nbsp;레나테백 1EA + 더스트백 1EA set 컬러 3개 중,
															선택 1개 가능합니다 - 무료배송&nbsp;</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션금액</dt>
														<dd class="CardType_subContent__3QETf">247,000원</dd>
													</dl>
												</div>
												<div class="CardType_linkBtn__1QHvM">
													지금 참여하기
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
														aria-hidden="true">
														<path
															d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
												</div>
											</div>
										</div></a></li>
								<li
									class="EarlybirdDesktop_listItem__2j7AD EarlybirdDesktop_hide__3p7jp"><a
									href="/web/campaign/detail/218058?_refer_section_st=earlyBird_5"
									data-ec-list="홈_얼리버드_펀딩" data-ec-id="218058"
									data-ec-name="완벽한 통기성으로[여름에도 시원하게] 구름위에 앉은 듯한 푹신함 애견방석"
									data-ec-position="5" data-ec-category="반려동물"
									data-ec-brand="주식회사 개과천선" data-ec-contenttype="REWARD"><div
											class="CardType_projectCard__3xhjb CardType_earlybirdCard__1t1n1">
											<div
												class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
												<div aria-hidden="true"
													class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
											</div>
											<div class="CardType_cardContent__3UMOr">
												<div>
													<p class="CardType_type__El7XP">펀딩</p>
													<div class="commons_content__2K1SH CardType_content__1Pavj">
														<em class="commons_title__1yGWm">완벽한 통기성으로[여름에도 시원하게]
															구름위에 앉은 듯한 푹신함 애견방석</em>
														<p class="commons_summary__2Ynez">
															<span class="commons_rate__10tOH">379%</span>반려동물
														</p>
													</div>
												</div>
												<div class="CardType_earlybirdContent__1b8VN">
													<dl>
														<dt class="BlindText_textHidden__ovQb4">옵션명</dt>
														<dd class="CardType_title__2qEmh">[슈퍼얼리버드]다크블루 L</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션내용</dt>
														<dd class="CardType_description__2BtXk">원 사이즈 원
															색상입니다. 3D 매트리스로 만들어진 쿨한 방석</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션금액</dt>
														<dd class="CardType_subContent__3QETf">90,000원</dd>
													</dl>
												</div>
												<div class="CardType_linkBtn__1QHvM">
													지금 참여하기
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
														aria-hidden="true">
														<path
															d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
												</div>
											</div>
										</div></a></li>
								<li
									class="EarlybirdDesktop_listItem__2j7AD EarlybirdDesktop_hide__3p7jp"><a
									href="/web/campaign/detail/213029?_refer_section_st=earlyBird_6"
									data-ec-list="홈_얼리버드_프리오더" data-ec-id="213029"
									data-ec-name="달 뒷면이 궁금해? 돌아가는 달을 보여줄께! 아이스페이스 루나"
									data-ec-position="6" data-ec-category="테크·가전"
									data-ec-brand="인플러스코리아" data-ec-contenttype="PREORDER"><div
											class="CardType_projectCard__3xhjb CardType_earlybirdCard__1t1n1">
											<div
												class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
												<div aria-hidden="true"
													class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
											</div>
											<div class="CardType_cardContent__3UMOr">
												<div>
													<p class="CardType_type__El7XP">프리오더</p>
													<div class="commons_content__2K1SH CardType_content__1Pavj">
														<em class="commons_title__1yGWm">달 뒷면이 궁금해? 돌아가는 달을
															보여줄께! 아이스페이스 루나</em>
														<p class="commons_summary__2Ynez">
															<span class="commons_rate__10tOH">290%</span>테크·가전
														</p>
													</div>
												</div>
												<div class="CardType_earlybirdContent__1b8VN">
													<dl>
														<dt class="BlindText_textHidden__ovQb4">옵션명</dt>
														<dd class="CardType_title__2qEmh">도서산간 비용</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션내용</dt>
														<dd class="CardType_description__2BtXk">[제주도 및 도서산간]
															지역이신 분들은 이 옵션과 함께 펀딩 부탁드립니다.</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션금액</dt>
														<dd class="CardType_subContent__3QETf">3,000원</dd>
													</dl>
												</div>
												<div class="CardType_linkBtn__1QHvM">
													지금 참여하기
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
														aria-hidden="true">
														<path
															d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
												</div>
											</div>
										</div></a></li>
								<li
									class="EarlybirdDesktop_listItem__2j7AD EarlybirdDesktop_hide__3p7jp"><a
									href="/web/campaign/detail/194197?_refer_section_st=earlyBird_7"
									data-ec-list="홈_얼리버드_펀딩" data-ec-id="194197"
									data-ec-name="어린 미세주름  [실시간 개선] 단1회 사용 즉각 주름 개선이 된다구요?"
									data-ec-position="7" data-ec-category="뷰티"
									data-ec-brand="(주)파인다이브" data-ec-contenttype="REWARD"><div
											class="CardType_projectCard__3xhjb CardType_earlybirdCard__1t1n1">
											<div
												class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
												<div aria-hidden="true"
													class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
											</div>
											<div class="CardType_cardContent__3UMOr">
												<div>
													<p class="CardType_type__El7XP">펀딩</p>
													<div class="commons_content__2K1SH CardType_content__1Pavj">
														<em class="commons_title__1yGWm">어린 미세주름 [실시간 개선] 단1회
															사용 즉각 주름 개선이 된다구요?</em>
														<p class="commons_summary__2Ynez">
															<span class="commons_rate__10tOH">386%</span>뷰티
														</p>
													</div>
												</div>
												<div class="CardType_earlybirdContent__1b8VN">
													<dl>
														<dt class="BlindText_textHidden__ovQb4">옵션명</dt>
														<dd class="CardType_title__2qEmh">[울트라 얼리버드] #어린주름 입문</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션내용</dt>
														<dd class="CardType_description__2BtXk">앰플크림 30ml x
															1개</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션금액</dt>
														<dd class="CardType_subContent__3QETf">28,000원</dd>
													</dl>
												</div>
												<div class="CardType_linkBtn__1QHvM">
													지금 참여하기
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
														aria-hidden="true">
														<path
															d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
												</div>
											</div>
										</div></a></li>
								<li
									class="EarlybirdDesktop_listItem__2j7AD EarlybirdDesktop_hide__3p7jp"><a
									href="/web/campaign/detail/212832?_refer_section_st=earlyBird_8"
									data-ec-list="홈_얼리버드_프리오더" data-ec-id="212832"
									data-ec-name="[170억 펀딩] 전세계 호환 5cm초소형 3개 동시충전 하이퍼 충전기"
									data-ec-position="8" data-ec-category="테크·가전"
									data-ec-brand="엔텍그린 주식회사" data-ec-contenttype="PREORDER"><div
											class="CardType_projectCard__3xhjb CardType_earlybirdCard__1t1n1">
											<div
												class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
												<div aria-hidden="true"
													class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
											</div>
											<div class="CardType_cardContent__3UMOr">
												<div>
													<p class="CardType_type__El7XP">프리오더</p>
													<div class="commons_content__2K1SH CardType_content__1Pavj">
														<em class="commons_title__1yGWm">[170억 펀딩] 전세계 호환
															5cm초소형 3개 동시충전 하이퍼 충전기</em>
														<p class="commons_summary__2Ynez">
															<span class="commons_rate__10tOH">4175%</span>테크·가전
														</p>
													</div>
												</div>
												<div class="CardType_earlybirdContent__1b8VN">
													<dl>
														<dt class="BlindText_textHidden__ovQb4">옵션명</dt>
														<dd class="CardType_title__2qEmh">스페셜 얼리버드 서브_파워케이블
															2m</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션내용</dt>
														<dd class="CardType_description__2BtXk">하이퍼 드라이브 전용
															100W 파워 C to C 케이블 2m 1EA</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션금액</dt>
														<dd class="CardType_subContent__3QETf">28,000원</dd>
													</dl>
												</div>
												<div class="CardType_linkBtn__1QHvM">
													지금 참여하기
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
														aria-hidden="true">
														<path
															d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
												</div>
											</div>
										</div></a></li>
								<li
									class="EarlybirdDesktop_listItem__2j7AD EarlybirdDesktop_hide__3p7jp"><a
									href="/web/campaign/detail/209523?_refer_section_st=earlyBird_9"
									data-ec-list="홈_얼리버드_프리오더" data-ec-id="209523"
									data-ec-name="[장마대비템] 지하철에서도, 버스에서도 뽀송하기! 물받이 캡 우산"
									data-ec-position="9" data-ec-category="패션·잡화"
									data-ec-brand="재영유통(썬월드)" data-ec-contenttype="PREORDER"><div
											class="CardType_projectCard__3xhjb CardType_earlybirdCard__1t1n1">
											<div
												class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
												<div aria-hidden="true"
													class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
											</div>
											<div class="CardType_cardContent__3UMOr">
												<div>
													<p class="CardType_type__El7XP">프리오더</p>
													<div class="commons_content__2K1SH CardType_content__1Pavj">
														<em class="commons_title__1yGWm">[장마대비템] 지하철에서도,
															버스에서도 뽀송하기! 물받이 캡 우산</em>
														<p class="commons_summary__2Ynez">
															<span class="commons_rate__10tOH">0%</span>패션·잡화
														</p>
													</div>
												</div>
												<div class="CardType_earlybirdContent__1b8VN">
													<dl>
														<dt class="BlindText_textHidden__ovQb4">옵션명</dt>
														<dd class="CardType_title__2qEmh">[와디즈 혜택] 캡우산 1개+캡커버
															1개</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션내용</dt>
														<dd class="CardType_description__2BtXk">캡우산 1개+캡커버 1개
															세트 상품 색상: 브라운, 핑크, 그린, 그레이, 블루, 블랙</dd>
														<dt class="BlindText_textHidden__ovQb4">옵션금액</dt>
														<dd class="CardType_subContent__3QETf">12,900원</dd>
													</dl>
												</div>
												<div class="CardType_linkBtn__1QHvM">
													지금 참여하기
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
														aria-hidden="true">
														<path
															d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
												</div>
											</div>
										</div></a></li>
							</ul>
						</div>
					</div>
				</div>


				<!-- 주목하세요! 오늘 오픈한 프로젝트 -->
				<!-- 2023-06-11 박경은 - 메인 css 깨짐 수정  -->
				<article class="TrendApp_container__2IOnt">
					<div class="Main_wrap__2jKMu">
						<div class="TrendApp_wrapper__3MC4K Main_innerWrap__7-_Vm">
							<section class="DebutFundingList_container__3LljC">
								<div class="DebutFundingList_inner__3FSDV">
									<div class="title_contentWrapper__1P-q0 title_trend__3KsC2">
										<h2 class="DebutFundingList_titleDesktop__2-ijZ">주목하세요!
											오늘 오픈한 프로젝트</h2>
									</div>
									<div class="DebutFundingList_content__1SqH7">
										<div class="DebutFundingDesktop_content__19ypd">
											<div class="DebutFundingDesktop_page__WMtxm" style="display: none">
												<div class="Pagination_container__28uaq">
													<div class="Pagination_btnGroup__3o2gm">
														<button
															class="Pagination_paginationBtn__31dPl Pagination_prev__OAUZT Pagination_isFirstPage__1nscH"
															disabled="" aria-label="이전 목록">
															<svg viewBox="0 0 40 40" focusable="false"
																role="presentation" class="withIcon_icon__3VTbq"
																aria-hidden="true">
																<path
																	d="M12 20L25 7l1.4 1.4L14.8 20l11.6 11.6L25 33 12 20z"></path></svg>
														</button>
														<button
															class="Pagination_paginationBtn__31dPl Pagination_next__2VEGc"
															aria-label="다음 목록">
															<svg viewBox="0 0 40 40" focusable="false"
																role="presentation" class="withIcon_icon__3VTbq"
																aria-hidden="true">
																<path
																	d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
														</button>
													</div>
													<ul class="Pagination_pageList__KyPel"
														aria-label="pagination">
														<li
															class="Pagination_listItem__1atqr Pagination_active__3Lx2R"><button
																type="button">1</button></li>
														<li class="Pagination_listItem__1atqr"><button
																type="button">2</button></li>
														<li class="Pagination_listItem__1atqr"><button
																type="button">3</button></li>
														<li class="Pagination_listItem__1atqr"><button
																type="button">4</button></li>
													</ul>
												</div>
											</div>
											<div class="DebutFundingDesktop_card__8YXhV">
												<a
													href="/web/campaign/detail/211101?_refer_section_st=trendDebut_undefined"
													data-ec-list="홈_#오늘오픈한 프로젝트_프리오더" data-ec-id="211101"
													data-ec-name="여름엔 소름돋게 쿨~한 아이스 블랙 3종세트! #깃털셔츠 #볼캡 #클러치"
													data-ec-position="0" data-ec-category="패션·잡화"
													data-ec-brand="G10(지텐)" data-ec-contenttype="PREORDER"
													data-gtm-vis-recent-on-screen-11319722_2073="84"
													data-gtm-vis-first-on-screen-11319722_2073="84"
													data-gtm-vis-total-visible-time-11319722_2073="2000"
													data-gtm-vis-recent-on-screen-11319722_2115="84"
													data-gtm-vis-first-on-screen-11319722_2115="84"
													data-gtm-vis-total-visible-time-11319722_2115="2000"
													data-gtm-vis-has-fired-11319722_2073="1"
													data-gtm-vis-has-fired-11319722_2115="1"><div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0517/20230517162916364_211101.jpg/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">여름엔 소름돋게 쿨~한 아이스
																	블랙 3종세트! #깃털셔츠 #볼캡 #클러치</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">717%</span>프리오더
																</p>
															</div>
														</article>
													</div></a>
											</div>
											<div class="DebutFundingDesktop_card__8YXhV">
												<a
													href="/web/campaign/detail/218526?_refer_section_st=trendDebut_undefined"
													data-ec-list="홈_#오늘오픈한 프로젝트_펀딩" data-ec-id="218526"
													data-ec-name="<큐리의 견생역전 프로젝트> 큐리와 유기동물 친구들의 행복을 찾아주세요!"
													data-ec-position="1" data-ec-category="캐릭터·굿즈"
													data-ec-brand="유지민" data-ec-contenttype="REWARD"
													data-gtm-vis-recent-on-screen-11319722_2073="84"
													data-gtm-vis-first-on-screen-11319722_2073="84"
													data-gtm-vis-total-visible-time-11319722_2073="2000"
													data-gtm-vis-recent-on-screen-11319722_2115="84"
													data-gtm-vis-first-on-screen-11319722_2115="84"
													data-gtm-vis-total-visible-time-11319722_2115="2000"
													data-gtm-vis-has-fired-11319722_2073="1"
													data-gtm-vis-has-fired-11319722_2115="1"><div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0602/20230602112305932_218526.png/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">&lt;큐리의 견생역전
																	프로젝트&gt; 큐리와 유기동물 친구들의 행복을 찾아주세요!</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">0%</span>펀딩
																</p>
															</div>
														</article>
													</div></a>
											</div>
											<div class="DebutFundingDesktop_card__8YXhV">
												<a
													href="/web/campaign/detail/197517?_refer_section_st=trendDebut_undefined"
													data-ec-list="홈_#오늘오픈한 프로젝트_프리오더" data-ec-id="197517"
													data-ec-name="[595% 달성 앵콜] 영국 왕실이 보증한 세계 3대원단, 해리스트위드 "
													data-ec-position="2" data-ec-category="패션·잡화"
													data-ec-brand="구망드" data-ec-contenttype="PREORDER"
													data-gtm-vis-recent-on-screen-11319722_2073="84"
													data-gtm-vis-first-on-screen-11319722_2073="84"
													data-gtm-vis-total-visible-time-11319722_2073="2000"
													data-gtm-vis-recent-on-screen-11319722_2115="84"
													data-gtm-vis-first-on-screen-11319722_2115="84"
													data-gtm-vis-total-visible-time-11319722_2115="2000"
													data-gtm-vis-has-fired-11319722_2073="1"
													data-gtm-vis-has-fired-11319722_2115="1"><div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0527/20230527150931476_197517.jpg/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">[595% 달성 앵콜] 영국
																	왕실이 보증한 세계 3대원단, 해리스트위드 </em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">15%</span>프리오더
																</p>
															</div>
														</article>
													</div></a>
											</div>
											<div class="DebutFundingDesktop_card__8YXhV">
												<a
													href="/web/campaign/detail/217030?_refer_section_st=trendDebut_undefined"
													data-ec-list="홈_#오늘오픈한 프로젝트_프리오더" data-ec-id="217030"
													data-ec-name="쌀벌레 고민 아직도 하시나요? 화랑곡나방 전용 트랩이 필요한 때입니다."
													data-ec-position="3" data-ec-category="홈·리빙"
													data-ec-brand="주식회사 토비메모리" data-ec-contenttype="PREORDER"
													data-gtm-vis-recent-on-screen-11319722_2073="84"
													data-gtm-vis-first-on-screen-11319722_2073="84"
													data-gtm-vis-total-visible-time-11319722_2073="2000"
													data-gtm-vis-recent-on-screen-11319722_2115="84"
													data-gtm-vis-first-on-screen-11319722_2115="84"
													data-gtm-vis-total-visible-time-11319722_2115="2000"
													data-gtm-vis-has-fired-11319722_2073="1"
													data-gtm-vis-has-fired-11319722_2115="1"><div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0525/20230525173623619_217030.jpg/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">쌀벌레 고민 아직도 하시나요?
																	화랑곡나방 전용 트랩이 필요한 때입니다.</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">18%</span>프리오더
																</p>
															</div>
														</article>
													</div></a>
											</div>
											<div class="DebutFundingDesktop_card__8YXhV">
												<a
													href="/web/campaign/detail/216260?_refer_section_st=trendDebut_undefined"
													data-ec-list="홈_#오늘오픈한 프로젝트_프리오더" data-ec-id="216260"
													data-ec-name="무대의 주인공이 되어보는 컨셉 화보 촬영 <백스테이지>"
													data-ec-position="4" data-ec-category="컬쳐·아티스트"
													data-ec-brand="스튜디오찬란" data-ec-contenttype="PREORDER"
													data-gtm-vis-recent-on-screen-11319722_2073="84"
													data-gtm-vis-first-on-screen-11319722_2073="84"
													data-gtm-vis-total-visible-time-11319722_2073="2000"
													data-gtm-vis-recent-on-screen-11319722_2115="84"
													data-gtm-vis-first-on-screen-11319722_2115="84"
													data-gtm-vis-total-visible-time-11319722_2115="2000"
													data-gtm-vis-has-fired-11319722_2073="1"
													data-gtm-vis-has-fired-11319722_2115="1"><div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0528/20230528181616751_216260.jpg/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">무대의 주인공이 되어보는 컨셉
																	화보 촬영 &lt;백스테이지&gt;</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">31%</span>프리오더
																</p>
															</div>
														</article>
													</div></a>
											</div>
											<div class="DebutFundingDesktop_card__8YXhV">
												<a
													href="/web/campaign/detail/218133?_refer_section_st=trendDebut_undefined"
													data-ec-list="홈_#오늘오픈한 프로젝트_프리오더" data-ec-id="218133"
													data-ec-name="캠핑 의자가 컴팩트하게! 분해 가능 파인 캠핑 의자+사이드 테이블"
													data-ec-position="5" data-ec-category="레저·아웃도어"
													data-ec-brand="(주)만방상사" data-ec-contenttype="PREORDER"
													data-gtm-vis-recent-on-screen-11319722_2073="84"
													data-gtm-vis-first-on-screen-11319722_2073="84"
													data-gtm-vis-total-visible-time-11319722_2073="2000"
													data-gtm-vis-recent-on-screen-11319722_2115="84"
													data-gtm-vis-first-on-screen-11319722_2115="84"
													data-gtm-vis-total-visible-time-11319722_2115="2000"
													data-gtm-vis-has-fired-11319722_2073="1"
													data-gtm-vis-has-fired-11319722_2115="1"><div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0602/20230602152812799_218133.jpg/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">캠핑 의자가 컴팩트하게! 분해
																	가능 파인 캠핑 의자+사이드 테이블</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">19%</span>프리오더
																</p>
															</div>
														</article>
													</div></a>
											</div>
										</div>
									</div>
								</div>
							</section>
						</div>
					</div>
				</article>

				<!-- 와디즈에서 프로젝트 오픈하기 -->
				<div class="RecommendationDesktop_container__3RLMb">
					<div class="Main_wrap__2jKMu">
						<div class="Main_innerWrap__7-_Vm">
							<div class="RecommendationDesktop_innerGroup__as4jB"></div>
						</div>
					</div>
					<div class="Main_wrap__2jKMu"></div>
					<div class="Main_wrap__2jKMu">
						<div
							class="RecommendationDesktop_innerGroup__as4jB RecommendationDesktop_staticBanner__2pqG8 Main_innerWrap__7-_Vm">
							<section>
								<a class="FundingOpenStaticBanner_container__12jOH"
									data-ga-category="홈_최하단배너" data-ga-action="클릭"
									data-ga-label="프로젝트 오픈하기" href="/web/wsub/openfunding"><h4
										class="FundingOpenStaticBanner_title__2SGnU">와디즈에서 프로젝트
										오픈하기</h4>
									<p class="FundingOpenStaticBanner_desc__34zp5">당신의 이야기를
										소개하고 투자자와 서포터를 만나보세요</p>
									<button
										class="Button_button__2FuOU Button_primary__2mZni Button_contained__2SIAT Button_lg__1Dftp"
										type="button">
										<span><span class="Button_children__ilFun">바로가기&nbsp;<svg
													viewBox="0 0 40 40" focusable="false" role="presentation"
													class="withIcon_icon__3VTbq" aria-hidden="true">
														<path
														d="M6 21h24.2L19.6 31.6 21 33l13-13L21 7l-1.4 1.4L30.2 19H6v2z"></path></svg></span></span>
									</button></a>
							</section>
							<section></section>
						</div>
					</div>
				</div>
			</div>

			<!-- footer.jsp -->
			<jsp:include page="inc/footer.jsp"></jsp:include>
	</div>
	</main>
	</div>
</body>
</html>