<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	
	$(function() {
		$(".tabList2").css("display", "none")
		
		$("#funding").on("click", function() {
			$(".tabList1").css("display", "block")
			$(".tabList2").css("display", "none")
		})
		
		$("#preorder").on("click", function() {
			$(".tabList2").css("display", "block")
			$(".tabList1").css("display", "none")
		})
	})
	
	
	
	
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
												<h2 class="RecommendFundingWrap_title__1b9i3">주목할 만한
													프로젝트</h2>
												<p class="RecommendFundingWrap_description__5xAKe">지금 함께
													만드는 성공</p>
											</div>

										</div>
										<div class="RecommendFundingWrap_cardListGroup__1nRxw">
											<c:forEach items="${attentionList }" var="attentionList"
												begin="1" end="6">
												<div class="RecommendFundingWrap_card___LnVO">
													<div>
														<a
															class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks"
															href="detail?num=${attentionList.project_idx }"
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
																		style="background-image: url(resources/images/project_thumbnail/${attentionList.project_thumbnail};);"></div>
																</div>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj">
																	<em class="commons_title__1yGWm">${attentionList.project_title }</em>
																	<p class="commons_summary__2Ynez">
																		<span class="commons_rate__10tOH"><fmt:formatNumber
																				value="${(attentionList.project_detail_amount/attentionList.project_target)}"
																				type="percent" /></span><span
																			class="Badge_container__9G9PS Badge_visible__3LNXv BaseFundingInfo_remainingDay__2ooL6"><span
																			class="Badge_badge__ovUKI Badge_label__2Rft2 Badge_md__1Ck0w Badge_secondary__UV-TU Badge_tertiary__3uYKh">${attentionList.project_detail_person }명
																				참여</span></span>
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
														<button type="button" title="REWARD" id="funding"
															class="TabButton_btnTab__bibVE TabButton_active__2mzCI">펀딩+</button>
													</div>
													<div class="TabButton_container__xc7Uw">
														<button type="button" title="STORE" id="preorder"
															class="TabButton_btnTab__bibVE">공동구매</button>
													</div>
												</div>
											</div>
											<div class="TabContainer_tabList__2IbMs">
												<ol class="tabList1">
													<c:forEach items="${rankingList }" var="rankingList"
														begin="1" end="5" varStatus="status">
														<li class="TabContainer_listItem__2nO5j"><div>
																<a
																	class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP"
																	href="detail?num=${rankingList.project_idx }"
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
																	data-gtm-vis-has-fired-11319722_2115="1">
																	<div
																		class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
																		<div class="commons_orderText__3B9S_">${status.index}</div>
																		<em class="commons_title__1yGWm">${rankingList.project_title }</em>
																		<p class="commons_summary__2Ynez">
																			<span class="commons_rate__10tOH"></span>${rankingList.project_category }
																		</p>
																		<p class="PreorderMainCard_amount__3UOXm"
																			style="font-weight: 700; line-height: 20px; color: #00b2b2; font-size: 16px;">
																			${rankingList.project_detail_amount } 원</p>
																	</div>
																	<div
																		class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																		<div aria-hidden="true"
																			class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(resources/images/project_thumbnail/${rankingList.project_thumbnail};);"></div>
																	</div>
																	</article>
																</a>
															</div></li>
													</c:forEach>
												</ol>
												<ol class="tabList2">
													<c:forEach items="${rankingList }" var="rankingList"
														begin="1" end="5">
														<li class="TabContainer_listItem__2nO5j"><div>
																<a
																	class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP"
																	href="detail?num=${rankingList.project_idx }"
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
																	data-gtm-vis-has-fired-11319722_2115="1">
																	<div
																		class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
																		<div class="commons_orderText__3B9S_">1</div>
																		<em class="commons_title__1yGWm">${rankingList.project_title }</em>
																		<p class="commons_summary__2Ynez">
																			<span class="commons_rate__10tOH"></span>${project_category }
																		</p>
																		${rankingList.project_detail_amount }
																	</div>
																	<div
																		class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																		<div aria-hidden="true"
																			class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(resources/images/project_thumbnail/${rankingList.project_thumbnail};);"></div>
																	</div>
																	</article>
																</a>
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

											<!-- 										최근본프로젝트 수정 시작 -->
											<h2>최근 본 프로젝트</h2>
										</div>
										<div
											class="Tooltip_container__1OVpV RecommendationStore_tooltip__3MCiq"
											style="display: none">
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
													<c:forEach items="${goodsProject }" var="goodsProject">
														<div role="presentation"
															class="CardTable_itemContainer__v9-cW"
															style="width: calc(( 16.6667% - 16px + 2.66667px)- 0.01px); margin-left: 0px; margin-right: 8px; margin-bottom: 0px;">
															<c:if test="${goodsProject.project_type eq 1 }">
																<a
																href="detail?num=${goodsProject.project_idx }"
																class="RecommendationStoreCard_item__3iMMQ">
															</c:if>
															<c:if test="${goodsProject.project_type eq 2 }">
																<a
																href="preorder/detail?num=${goodsProject.project_idx }"
																class="RecommendationStoreCard_item__3iMMQ">
															</c:if>
															<div
																	class="RecommendationStoreCard_thumbnailContainer__mghKx">
																	<div
																		class="RecommendationStoreCard_thumbnailPlaceholder__3TTOS"
																		style="padding-top: calc(100% - 0px);">
																		<div aria-hidden="true"
																			class="RecommendationStoreCard_thumbnail__mis5O CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(resources/images/project_thumbnail/${goodsProject.project_thumbnail};);"></div>
																	</div>
																</div>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj">
																	<em class="commons_title__1yGWm">${goodsProject.project_title }</em>
																	<p class="commons_summary__2Ynez">
																		<span class="commons_rate__10tOH"> 
																		<c:if test="${goodsProject.project_type eq 1 }">
																			<fmt:formatNumber
																				value="${(goodsProject.project_detail_amount/goodsProject.project_target)}"
																				type="percent" />
																		</c:if>
																		<c:if test="${goodsProject.project_type eq 2 }">
																			${goodsProject.project_detail_person }명 참여
																		</c:if>
																		
																		
																		</span>${goodsProject.project_category }
																	</p>
																</div> </a>
														</div>
													</c:forEach>
													<!-- 													최근본 프로젝트 끝 --> 

												</div>
											</div>
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
									class="Pagination_container__28uaq EarlybirdDesktop_pagination__1CGN5"
									style="display: none">
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
								</div>
							</div>
							<ul class="EarlybirdDesktop_earlybirdList__2XjA6">
								<c:forEach items="${earlybirdList }" var="earlybirdList"
									begin="1" end="3">
									<li class="EarlybirdDesktop_listItem__2j7AD"><a
										href="detail?num=${earlybirdList.project_idx }"
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
														style="background-image: url(resources/images/project_thumbnail/${earlybirdList.project_thumbnail};);"></div>
												</div>
												<div class="CardType_cardContent__3UMOr">
													<div>
														<p class="CardType_type__El7XP">${earlybirdList.project_category }</p>
														<div
															class="commons_content__2K1SH CardType_content__1Pavj">
															<em class="commons_title__1yGWm">${earlybirdList.project_title }</em>
															<p class="commons_summary__2Ynez">
																<span class="commons_rate__10tOH"> <span
																	class="commons_rate__10tOH"><fmt:formatNumber
																			value="${(earlybirdList.project_detail_amount/earlybirdList.project_target)}"
																			type="percent" /></span>
																</span>

															</p>
														</div>
													</div>
													<div class="CardType_earlybirdContent__1b8VN">
														<dl>
															<dt class="BlindText_textHidden__ovQb4">옵션명</dt>
															<dd class="CardType_title__2qEmh">${earlybirdList.reward_name }</dd>
															<dt class="BlindText_textHidden__ovQb4">옵션내용</dt>
															<dd class="CardType_description__2BtXk">${earlybirdList.reward_option }</dd>
															<dt class="BlindText_textHidden__ovQb4">옵션금액</dt>
															<dd class="CardType_subContent__3QETf">${earlybirdList.reward_amount }원</dd>
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
								</c:forEach>
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
											<div class="DebutFundingDesktop_page__WMtxm"
												style="display: none">
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
												</div>
											</div>
											<c:forEach items="${todayOpenList }" var="todayOpenList">
												<div class="DebutFundingDesktop_card__8YXhV">
													<a href="detail?num=${todayOpenList.project_idx }"
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
																		style="background-image: url(resources/images/project_thumbnail/${todayOpenList.project_thumbnail};);"></div>
																</div>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj">
																	<em class="commons_title__1yGWm">${todayOpenList.project_title }</em>
																	<p class="commons_summary__2Ynez">
																		<span class="commons_rate__10tOH"><fmt:formatNumber
																				value="${(todayOpenList.project_detail_amount/todayOpenList.project_target)}"
																				type="percent" /></span>${todayOpenList.project_category }
																	</p>
																</div>
															</article>
														</div></a>
												</div>
											</c:forEach>
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
									data-ga-label="프로젝트 오픈하기" href="projectCreate"><h4
										class="FundingOpenStaticBanner_title__2SGnU">아이펀드에서 프로젝트
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
