<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="resources/js/jquery-3.6.4.js"></script>

</head>
<script>
	// 슬라이드 3초간 유지 후 다음 화면으로 넘어감
	$(document).ready(function() {
		$(".slick-slide").not(".slick-active").hide(); //화면 로딩 후 첫번째 div를 제외한 나머지 숨김

		setInterval(next, 3000);
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
									<div data-index="0"
										class="slick-slide slick-active slick-current" tabindex="-1"
										aria-hidden="false" style="outline: none; width: 1900px;">
										<div>
											<div>
												<a
													href="https://www.wadiz.kr/web/wcomingsoon/rwd/188921?_refer_section_st=MKB_1"
													class="VisualSlide_container__2NDvY" data-promo-acid="-1"
													data-promo-id="https://www.wadiz.kr/web/main"
													data-promo-name="휴대폰보다 가벼운 초경량우산 밝은컬러도 추가됐어요"
													data-promo-position="MKB_1"
													style="background-image: url(&quot;https://cdn.wadiz.kr/ft/images/green001/2023/0414/20230414094554599_6161.jpg/wadiz/resize/1400/format/jpg/quality/85/&quot;);"
													data-gtm-vis-recent-on-screen-11319722_2047="208133"
													data-gtm-vis-first-on-screen-11319722_2047="208134"
													data-gtm-vis-total-visible-time-11319722_2047="2000"
													data-gtm-vis-recent-on-screen-11319722_2115="208134"
													data-gtm-vis-first-on-screen-11319722_2115="208134"
													data-gtm-vis-total-visible-time-11319722_2115="2000"
													data-gtm-vis-has-fired-11319722_2047="1"
													data-gtm-vis-has-fired-11319722_2115="1">
													<div class="VisualSlide_wrap__32Lj4">
														<div class="VisualSlide_text__2SIqN">
															<p class="VisualSlide_title__3USGy">
																휴대폰보다 가벼운 초경량우산<br>밝은컬러도 추가됐어요
															</p>
															<p class="VisualSlide_badge__3nqfs">펀딩</p>
														</div>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div data-index="1" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 1900px;">
										<div>
											<div>
												<a
													href="https://www.wadiz.kr/web/store/collection/newyear?_refer_section_st=MKB_2"
													class="VisualSlide_container__2NDvY" data-promo-acid="-1"
													data-promo-id="https://www.wadiz.kr/web/main"
													data-promo-name="72시간 반짝 혜택 주말특가 만나보기"
													data-promo-position="MKB_2"
													style="background-image: url(&quot;https://cdn.wadiz.kr/ft/images/green001/2023/0512/20230512130447760_6161.jpg/wadiz/resize/1400/format/jpg/quality/85/&quot;);">
													<div class="VisualSlide_wrap__32Lj4">
														<div class="VisualSlide_text__2SIqN">
															<p class="VisualSlide_title__3USGy">
																72시간 반짝 혜택<br>주말특가 만나보기
															</p>
															<p class="VisualSlide_badge__3nqfs">스토어</p>
														</div>
													</div>
												</a>
											</div>
										</div>
									</div>
									<div data-index="2" class="slick-slide" tabindex="-1"
										aria-hidden="true" style="outline: none; width: 1900px;">
										<div>
											<div>
												<a
													href="https://www.wadiz.kr/web/wreward/collection/oversoon?_refer_section_st=MKB_3"
													class="VisualSlide_container__2NDvY" data-promo-acid="-1"
													data-promo-id="https://www.wadiz.kr/web/main"
													data-promo-name="놓치면 아쉬운 종료 임박 프로젝트"
													data-promo-position="MKB_3"
													style="background-image: url(&quot;https://cdn.wadiz.kr/ft/images/green001/2023/0511/20230511161453952_2523.jpg/wadiz/resize/1400/format/jpg/quality/85/&quot;);">
													<div class="VisualSlide_wrap__32Lj4">
														<div class="VisualSlide_text__2SIqN">
															<p class="VisualSlide_title__3USGy">
																놓치면 아쉬운<br>종료 임박 프로젝트
															</p>
															<p class="VisualSlide_badge__3nqfs">펀딩</p>
														</div>
													</div>
												</a>
											</div>
										</div>
									</div>
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
						<div class="RecommendationDesktop_container__3RLMb">
							<div class="Main_wrap__2jKMu">
								<div
									class="RecommendationDesktop_innerGroup__as4jB Main_innerWrap__7-_Vm">
									<section
										class="SectionContainerLayout_container__1f8kt RecommendFundingWrap_container__3LDiq RecommendationDesktop_recommendFunding__1dKi1">
										<div
											class="title_contentWrapper__1P-q0 RecommendFundingWrap_titleBox__1k7fj">
											<div class="RecommendFundingWrap_subTitle__1SaNL">
												<h2 class="RecommendFundingWrap_title__1b9i3">취향 맞춤
													프로젝트</h2>
												<p class="RecommendFundingWrap_description__5xAKe">지금 함께
													만드는 성공</p>
											</div>
											<div
												class="Tooltip_container__1OVpV RecommendFundingWrap_tooltip__3dL8Q">
												<div class="Tooltip_symbol__3cGy0"
													aria-describedby="recommendationFundingWaAiTooltip">
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
												<div role="tooltip" id="recommendationFundingWaAiTooltip"
													class="Tooltip_messagebox__2TW_p"
													style="width: 235px; display: none;">
													<p>와디즈 AI가 서포터님들의 취향을 분석하여 맞춤 프로젝트를 추천해요</p>
												</div>
											</div>
										</div>
										<div class="RecommendFundingWrap_cardListGroup__1nRxw">
											<div class="RecommendFundingWrap_card___LnVO">
												<div>
													<a
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks"
														href="/web/campaign/detail/208773?_refer_section_st=PersonalCurator_0"
														data-ec-list="홈_추천_프리오더" data-ec-id="208773"
														data-ec-name="[앵콜] 책상위 필기구를 관리하는 귀여운 고슴도치 집사를 고용하세요!"
														data-ec-position="0" data-ec-category="홈·리빙"
														data-ec-brand="스노마드" data-ec-contenttype="PREORDER"
														data-gtm-vis-recent-on-screen-11319722_2115="4401"
														data-gtm-vis-first-on-screen-11319722_2115="4401"
														data-gtm-vis-total-visible-time-11319722_2115="2000"
														data-gtm-vis-recent-on-screen-11319722_2073="4405"
														data-gtm-vis-first-on-screen-11319722_2073="4405"
														data-gtm-vis-total-visible-time-11319722_2073="2000"
														data-gtm-vis-has-fired-11319722_2073="1"
														data-gtm-vis-has-fired-11319722_2115="1"><article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0422/20230422180715371_208773.png/wadiz/resize/300/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">[앵콜] 책상위 필기구를 관리하는
																	귀여운 고슴도치 집사를 고용하세요!</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">11%</span>홈·리빙
																</p>
															</div>
														</article></a>
												</div>
											</div>
											<div class="RecommendFundingWrap_card___LnVO">
												<div>
													<a
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks"
														href="/web/campaign/detail/209372?_refer_section_st=PersonalCurator_1"
														data-ec-list="홈_추천_프리오더" data-ec-id="209372"
														data-ec-name="[M.N.M] 최저가보장 포항 구룡포 홍게 !! 후회없는 게 맛보세요 !"
														data-ec-position="1" data-ec-category="푸드"
														data-ec-brand="앰엔앰" data-ec-contenttype="PREORDER"
														data-gtm-vis-recent-on-screen-11319722_2115="4401"
														data-gtm-vis-first-on-screen-11319722_2115="4401"
														data-gtm-vis-total-visible-time-11319722_2115="2000"
														data-gtm-vis-recent-on-screen-11319722_2073="4405"
														data-gtm-vis-first-on-screen-11319722_2073="4405"
														data-gtm-vis-total-visible-time-11319722_2073="2000"
														data-gtm-vis-has-fired-11319722_2073="1"
														data-gtm-vis-has-fired-11319722_2115="1"><article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0428/20230428190248954_209372.jpg/wadiz/resize/300/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">[M.N.M] 최저가보장 포항
																	구룡포 홍게 !! 후회없는 게 맛보세요 !</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">17%</span>푸드
																</p>
															</div>
														</article></a>
												</div>
											</div>
											<div class="RecommendFundingWrap_card___LnVO">
												<div>
													<a
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks"
														href="/web/campaign/detail/196995?_refer_section_st=PersonalCurator_2"
														data-ec-list="홈_추천_펀딩" data-ec-id="196995"
														data-ec-name="[단독/한정] 마케팅 핵심개념부터 실무까지, 하루10분 마케팅 입문 완성"
														data-ec-position="2" data-ec-category="클래스·컨설팅"
														data-ec-brand="베어유" data-ec-contenttype="REWARD"
														data-gtm-vis-recent-on-screen-11319722_2115="4401"
														data-gtm-vis-first-on-screen-11319722_2115="4401"
														data-gtm-vis-total-visible-time-11319722_2115="2000"
														data-gtm-vis-recent-on-screen-11319722_2073="4405"
														data-gtm-vis-first-on-screen-11319722_2073="4405"
														data-gtm-vis-total-visible-time-11319722_2073="2000"
														data-gtm-vis-has-fired-11319722_2073="1"
														data-gtm-vis-has-fired-11319722_2115="1"><article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0403/20230403184435869_196995.png/wadiz/resize/300/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">[단독/한정] 마케팅 핵심개념부터
																	실무까지, 하루10분 마케팅 입문 완성</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">177%</span>클래스·컨설팅
																</p>
															</div>
														</article></a>
												</div>
											</div>
											<div class="RecommendFundingWrap_card___LnVO">
												<div>
													<a
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks"
														href="/web/campaign/detail/197406?_refer_section_st=PersonalCurator_3"
														data-ec-list="홈_추천_프리오더" data-ec-id="197406"
														data-ec-name="<뇌과학 프레임워크를 다 때려 박은> 갓생 성장 노션 템플릿"
														data-ec-position="3" data-ec-category="클래스·컨설팅"
														data-ec-brand="저스트 그로우" data-ec-contenttype="PREORDER"
														data-gtm-vis-recent-on-screen-11319722_2115="4402"
														data-gtm-vis-first-on-screen-11319722_2115="4402"
														data-gtm-vis-total-visible-time-11319722_2115="2000"
														data-gtm-vis-recent-on-screen-11319722_2073="4406"
														data-gtm-vis-first-on-screen-11319722_2073="4406"
														data-gtm-vis-total-visible-time-11319722_2073="2000"
														data-gtm-vis-has-fired-11319722_2073="1"
														data-gtm-vis-has-fired-11319722_2115="1"><article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0309/20230309175636438_197406.png/wadiz/resize/300/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div
																class="commons_content__2K1SH CardType_content__1Pavj">
																<em class="commons_title__1yGWm">&lt;뇌과학 프레임워크를 다
																	때려 박은&gt; 갓생 성장 노션 템플릿</em>
																<p class="commons_summary__2Ynez">
																	<span class="commons_rate__10tOH">728%</span>클래스·컨설팅
																</p>
															</div>
														</article></a>
												</div>
											</div>
											<div class="RecommendFundingWrap_plannedCard__2e9vM">
												<div
													class="CardType_projectCard__3xhjb CardType_plannedCard__Yyg0B RecommendFundingWrap_collectionCard__QQv01">
													<a href="/web/wreward/collection/bingrae"
														data-promo-acid="1677"
														data-promo-id="/web/wreward/collection/bingrae"
														data-promo-name="The 귀여운 빙그레 아이템 기획전"
														data-promo-position="MRB1"
														data-gtm-vis-recent-on-screen-11319722_2047="4303"
														data-gtm-vis-first-on-screen-11319722_2047="4303"
														data-gtm-vis-total-visible-time-11319722_2047="2000"
														data-gtm-vis-recent-on-screen-11319722_2115="4402"
														data-gtm-vis-first-on-screen-11319722_2115="4402"
														data-gtm-vis-total-visible-time-11319722_2115="2000"
														data-gtm-vis-has-fired-11319722_2047="1"
														data-gtm-vis-has-fired-11319722_2115="1"><article>
															<div
																class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																<div aria-hidden="true"
																	class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																	style="background-image: url(&quot;https://cdn.wadiz.kr/ft/images/green001/2023/0503/20230503144805805_null.png/wadiz/resize/600/format/jpg/quality/85/&quot;);"></div>
															</div>
															<div>
																<span class="CardType_badge__OjSmY">기획전</span><span
																	class="CardType_title__2qEmh">The 귀여운 빙그레 아이템
																	기획전</span>
															</div>
														</article></a>
												</div>
											</div>
										</div>
										<div
											class="RecommendFundingWrap_showMoreRecommendWrapOuter__3dGiS">
											<button data-event="web.main.recommendation.more"
												class="Button_button__2FuOU Button_secondary__LNLsN Button_startIcon__3p6wN RecommendFundingWrap_googleTaggedButton__2mK7y"
												type="button">
												<span><svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3VTbq Button_icon__t6yp6"
														aria-hidden="true">
														<path
															d="M35 16V7l-3.5 3.5A15 15 0 1 0 34.4 24h-2.1a13 13 0 1 1-2.2-12.1L26 16z"></path></svg><span
													class="Button_children__ilFun"><span
														class="RecommendFundingWrap_fontHighlight__2LEw7">AI
													</span>추천 더보기<span class="RecommendFundingWrap_pageNum__1yoDT"><span
															class="RecommendFundingWrap_fontHighlight__2LEw7">1</span>/3</span></span></span>
											</button>
										</div>
									</section>

									<!-- 실시간 랭킹 -->
									<section
										class="SectionContainerLayout_container__1f8kt RankingFundingWrap_container__16_A3 RecommendationDesktop_rankingFunding__2ccRd">
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
													<li class="TabContainer_listItem__2nO5j"><div>
															<a
																class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP"
																href="/web/campaign/detail/194433?_refer_section_st=ranking_0"
																data-ec-list="홈_실시간랭킹_펀딩" data-ec-id="194433"
																data-ec-name="선크림이라고? 프라이머+베이스+톤보정까지! 모공 쫘악 메꾸는 프라이머선"
																data-ec-position="0" data-ec-category="뷰티"
																data-ec-brand="감성글로벌 주식회사" data-ec-contenttype="REWARD"
																index="0"
																data-gtm-vis-recent-on-screen-11319722_2115="4402"
																data-gtm-vis-first-on-screen-11319722_2115="4402"
																data-gtm-vis-total-visible-time-11319722_2115="2000"
																data-gtm-vis-recent-on-screen-11319722_2073="4406"
																data-gtm-vis-first-on-screen-11319722_2073="4406"
																data-gtm-vis-total-visible-time-11319722_2073="2000"
																data-gtm-vis-has-fired-11319722_2073="1"
																data-gtm-vis-has-fired-11319722_2115="1"><article>
																	<div
																		class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
																		<div class="commons_orderText__3B9S_">1</div>
																		<em class="commons_title__1yGWm">선크림이라고?
																			프라이머+베이스+톤보정까지! 모공 쫘악 메꾸는 프라이머선</em>
																		<p class="commons_summary__2Ynez">
																			<span class="commons_rate__10tOH">23,810%</span>뷰티
																		</p>
																	</div>
																	<div
																		class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																		<div aria-hidden="true"
																			class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0327/20230327154241234_194433.jpg/wadiz/resize/100/format/jpg/quality/85/&quot;);"></div>
																	</div>
																</article></a>
														</div></li>
													<li class="TabContainer_listItem__2nO5j"><div>
															<a
																class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP"
																href="/web/campaign/detail/205128?_refer_section_st=ranking_1"
																data-ec-list="홈_실시간랭킹_펀딩" data-ec-id="205128"
																data-ec-name="[아토피인증] 이거 모기기피제 맞아요? 한번 분사로 4시간을 안전하게!"
																data-ec-position="1" data-ec-category="홈·리빙"
																data-ec-brand="주식회사 아이앤디디" data-ec-contenttype="REWARD"
																index="1"
																data-gtm-vis-recent-on-screen-11319722_2115="4402"
																data-gtm-vis-first-on-screen-11319722_2115="4402"
																data-gtm-vis-total-visible-time-11319722_2115="2000"
																data-gtm-vis-recent-on-screen-11319722_2073="4406"
																data-gtm-vis-first-on-screen-11319722_2073="4406"
																data-gtm-vis-total-visible-time-11319722_2073="2000"
																data-gtm-vis-has-fired-11319722_2073="1"
																data-gtm-vis-has-fired-11319722_2115="1"><article>
																	<div
																		class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
																		<div class="commons_orderText__3B9S_">2</div>
																		<em class="commons_title__1yGWm">[아토피인증] 이거 모기기피제
																			맞아요? 한번 분사로 4시간을 안전하게!</em>
																		<p class="commons_summary__2Ynez">
																			<span class="commons_rate__10tOH">6,964%</span>홈·리빙
																		</p>
																	</div>
																	<div
																		class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																		<div aria-hidden="true"
																			class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0419/20230419110910330_205128.jpg/wadiz/resize/100/format/jpg/quality/85/&quot;);"></div>
																	</div>
																</article></a>
														</div></li>
													<li class="TabContainer_listItem__2nO5j"><div>
															<a
																class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP"
																href="/web/campaign/detail/195094?_refer_section_st=ranking_2"
																data-ec-list="홈_실시간랭킹_펀딩" data-ec-id="195094"
																data-ec-name="&quot;11억 특허 원료&quot;로 피부 하얘지는법! 기획자 얼굴걸고 잡티 -195개"
																data-ec-position="2" data-ec-category="뷰티"
																data-ec-brand="주식회사 성분에디터" data-ec-contenttype="REWARD"
																index="2"
																data-gtm-vis-recent-on-screen-11319722_2115="4402"
																data-gtm-vis-first-on-screen-11319722_2115="4402"
																data-gtm-vis-total-visible-time-11319722_2115="2000"
																data-gtm-vis-recent-on-screen-11319722_2073="4406"
																data-gtm-vis-first-on-screen-11319722_2073="4406"
																data-gtm-vis-total-visible-time-11319722_2073="2000"
																data-gtm-vis-has-fired-11319722_2073="1"
																data-gtm-vis-has-fired-11319722_2115="1"><article>
																	<div
																		class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
																		<div class="commons_orderText__3B9S_">3</div>
																		<em class="commons_title__1yGWm">"11억 특허 원료"로 피부
																			하얘지는법! 기획자 얼굴걸고 잡티 -195개</em>
																		<p class="commons_summary__2Ynez">
																			<span class="commons_rate__10tOH">15,836%</span>뷰티
																		</p>
																	</div>
																	<div
																		class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																		<div aria-hidden="true"
																			class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0512/20230512192731787_195094.jpeg/wadiz/resize/100/format/jpg/quality/85/&quot;);"></div>
																	</div>
																</article></a>
														</div></li>
													<li class="TabContainer_listItem__2nO5j"><div>
															<a
																class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP"
																href="/web/campaign/detail/195010?_refer_section_st=ranking_3"
																data-ec-list="홈_실시간랭킹_펀딩" data-ec-id="195010"
																data-ec-name="뿔테와 티타늄테의 장점만을 합친 프리미엄 안경, DENBER"
																data-ec-position="3" data-ec-category="패션·잡화"
																data-ec-brand="(주)라티그래" data-ec-contenttype="REWARD"
																index="3"
																data-gtm-vis-recent-on-screen-11319722_2115="4402"
																data-gtm-vis-first-on-screen-11319722_2115="4402"
																data-gtm-vis-total-visible-time-11319722_2115="2000"
																data-gtm-vis-recent-on-screen-11319722_2073="4406"
																data-gtm-vis-first-on-screen-11319722_2073="4406"
																data-gtm-vis-total-visible-time-11319722_2073="2000"
																data-gtm-vis-has-fired-11319722_2073="1"
																data-gtm-vis-has-fired-11319722_2115="1"><article>
																	<div
																		class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
																		<div class="commons_orderText__3B9S_">4</div>
																		<em class="commons_title__1yGWm">뿔테와 티타늄테의 장점만을
																			합친 프리미엄 안경, DENBER</em>
																		<p class="commons_summary__2Ynez">
																			<span class="commons_rate__10tOH">2,278%</span>패션·잡화
																		</p>
																	</div>
																	<div
																		class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																		<div aria-hidden="true"
																			class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0418/20230418143028463_195010.jpg/wadiz/resize/100/format/jpg/quality/85/&quot;);"></div>
																	</div>
																</article></a>
														</div></li>
													<li class="TabContainer_listItem__2nO5j"><div>
															<a
																class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP"
																href="/web/campaign/detail/207078?_refer_section_st=ranking_4"
																data-ec-list="홈_실시간랭킹_펀딩" data-ec-id="207078"
																data-ec-name="시원함, 스타일! 둘 다 갖춘 인견으로 만든  [쿨 아키텍쳐 니트]"
																data-ec-position="4" data-ec-category="패션·잡화"
																data-ec-brand="210에디트" data-ec-contenttype="REWARD"
																index="4"
																data-gtm-vis-recent-on-screen-11319722_2115="4403"
																data-gtm-vis-first-on-screen-11319722_2115="4403"
																data-gtm-vis-total-visible-time-11319722_2115="2000"
																data-gtm-vis-recent-on-screen-11319722_2073="4407"
																data-gtm-vis-first-on-screen-11319722_2073="4407"
																data-gtm-vis-total-visible-time-11319722_2073="2000"
																data-gtm-vis-has-fired-11319722_2073="1"
																data-gtm-vis-has-fired-11319722_2115="1"><article>
																	<div
																		class="commons_content__2K1SH commons_order__3AewF CardType_content__1Pavj">
																		<div class="commons_orderText__3B9S_">5</div>
																		<em class="commons_title__1yGWm">시원함, 스타일! 둘 다 갖춘
																			인견으로 만든 [쿨 아키텍쳐 니트]</em>
																		<p class="commons_summary__2Ynez">
																			<span class="commons_rate__10tOH">3,437%</span>패션·잡화
																		</p>
																	</div>
																	<div
																		class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																		<div aria-hidden="true"
																			class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0509/20230509161859714_207078.jpg/wadiz/resize/100/format/jpg/quality/85/&quot;);"></div>
																	</div>
																</article></a>
														</div></li>
												</ol>
											</div>
										</div>
									</section>
								</div>
							</div>

							<!-- 스토어 추천 제품 -->
							<div class="Main_wrap__2jKMu">
								<div
									class="RecommendationStore_innerGroup__tYMzy Main_innerWrap__7-_Vm">
									<div class="RecommendationStore_container__3macz">
										<div class="RecommendationStore_header__VkYC6">
											<div class="RecommendationStore_headerText__2_8B0">
												<h2>스토어 추천 제품</h2>
												<p class="RecommendationStore_description__3PZ1S">팬들이
													인정한 성공 펀딩 집합샵</p>
											</div>
											<div
												class="Tooltip_container__1OVpV RecommendationStore_tooltip__3MCiq">
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
												<div role="tooltip" id="recommendationStoreWaAiTooltip"
													class="Tooltip_messagebox__2TW_p"
													style="width: 235px; display: none;">
													<p>와디즈 AI가 서포터님들의 취향을 분석하여 맞춤 프로젝트를 추천해요</p>
												</div>
											</div>
										</div>
										<div class="RecommendationStore_cardList__1FZ5m">
											<div class="RecommendationStore_tableWrap__2rBP7">
												<div class="RecommendationStore_tableContent__yUkCF">
													<div
														class="CardTable_container__1H8Vc RecommendationStore_cardTable__-AvHK"
														style="width: calc(100% - 0px);">
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
																data-gtm-vis-first-on-screen-11319722_2115="5591"
																data-gtm-vis-total-visible-time-11319722_2115="400"><div
																	class="RecommendationStoreCard_thumbnailContainer__mghKx">
																	<div
																		class="RecommendationStoreCard_thumbnailPlaceholder__3TTOS"
																		style="padding-top: calc(100% - 0px);">
																		<div aria-hidden="true"
																			class="RecommendationStoreCard_thumbnail__mis5O CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(&quot;https://cdn2.wadiz.kr/2022/11/11/26e66aab-d1f2-44bf-941d-1b3bcbe70d95.png/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
																		<div class="RecommendationStoreCard_wadizOnly__zxtNd"></div>
																	</div>
																</div>
																<div
																	class="RecommendationStoreCard_contentContainer__aDF-5">
																	<div class="RecommendationStoreCard_projectName__kIgBJ">내
																		손안의 스마트한 스튜디오, 저스트모바일 셔터그립2</div>
																	<div
																		class="RecommendationStoreCard_priceContainer__1Aa_1">
																		<span class="RecommendationStoreCard_price__2irFK">59,900</span><span>원</span>
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
																				<span
																					class="ParticipantScore_peopleCountText__1oHUl">0명
																					참여</span>
																			</div>
																		</div>
																		<div class="StoreCardFooter_bottomFooter__MhVou">
																			<div
																				class="DeliveryBadge_container__3XB44 StoreCardFooter_badgeFooter__3H1v0">
																				<div class="DeliveryBadge_badge__14MYK">무료배송</div>
																			</div>
																		</div>
																	</div>
																</div></a>
														</div>
														<div role="presentation"
															class="CardTable_itemContainer__v9-cW"
															style="width: calc(( 16.6667% - 16px + 2.66667px)- 0.01px); margin-left: 8px; margin-right: 8px; margin-bottom: 0px;">
															<a
																href="/web/store/detail/105?_refer_section_st=storeCurator_1"
																class="RecommendationStoreCard_item__3iMMQ"
																data-ec-list="홈_추천_스토어" data-ec-id="105"
																data-ec-name="블루라이트 차단 렌즈+풀 티타늄 티에어 명품 안경테"
																data-ec-position="1" data-ec-price="65000"
																data-ec-category="패션·잡화" data-ec-brand="와디즈 주식회사"
																data-ec-contenttype="STORE"
																data-gtm-vis-first-on-screen-11319722_2115="5591"
																data-gtm-vis-total-visible-time-11319722_2115="400"><div
																	class="RecommendationStoreCard_thumbnailContainer__mghKx">
																	<div
																		class="RecommendationStoreCard_thumbnailPlaceholder__3TTOS"
																		style="padding-top: calc(100% - 0px);">
																		<div aria-hidden="true"
																			class="RecommendationStoreCard_thumbnail__mis5O CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(&quot;https://cdn2.wadiz.kr/2023/04/27/3a931185-c760-49d3-b5ef-6305e67e80a6.png/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
																		<div class="RecommendationStoreCard_wadizOnly__zxtNd"></div>
																	</div>
																</div>
																<div
																	class="RecommendationStoreCard_contentContainer__aDF-5">
																	<div class="RecommendationStoreCard_projectName__kIgBJ">블루라이트
																		차단 렌즈+풀 티타늄 티에어 명품 안경테</div>
																	<div
																		class="RecommendationStoreCard_priceContainer__1Aa_1">
																		<span class="RecommendationStoreCard_price__2irFK">65,000</span><span>원</span>
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
																				<span
																					class="ParticipantScore_peopleCountText__1oHUl">0명
																					참여</span>
																			</div>
																		</div>
																		<div class="StoreCardFooter_bottomFooter__MhVou">
																			<div
																				class="DeliveryBadge_container__3XB44 StoreCardFooter_badgeFooter__3H1v0">
																				<div class="DeliveryBadge_badge__14MYK">무료배송</div>
																				<div class="DeliveryBadge_badge__14MYK">
																					<i class="DeliveryBadge_icon__P4mcc"></i> 와배송
																				</div>
																			</div>
																		</div>
																	</div>
																</div></a>
														</div>
														<div role="presentation"
															class="CardTable_itemContainer__v9-cW"
															style="width: calc(( 16.6667% - 16px + 2.66667px)- 0.01px); margin-left: 8px; margin-right: 8px; margin-bottom: 0px;">
															<a
																href="/web/store/detail/190?_refer_section_st=storeCurator_2"
																class="RecommendationStoreCard_item__3iMMQ"
																data-ec-list="홈_추천_스토어" data-ec-id="190"
																data-ec-name="좁은 냉장고에 쏙 들어가는 이중밀폐 이유식 얼음틀 멀티큐브"
																data-ec-position="2" data-ec-price="9900"
																data-ec-category="리빙·베이비" data-ec-brand="와디즈 주식회사"
																data-ec-contenttype="STORE"
																data-gtm-vis-first-on-screen-11319722_2115="5591"
																data-gtm-vis-total-visible-time-11319722_2115="400"><div
																	class="RecommendationStoreCard_thumbnailContainer__mghKx">
																	<div
																		class="RecommendationStoreCard_thumbnailPlaceholder__3TTOS"
																		style="padding-top: calc(100% - 0px);">
																		<div aria-hidden="true"
																			class="RecommendationStoreCard_thumbnail__mis5O CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(&quot;https://cdn2.wadiz.kr/2023/04/27/7444dc06-e59c-496a-bd15-774b39bbadea.jpg/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
																	</div>
																</div>
																<div
																	class="RecommendationStoreCard_contentContainer__aDF-5">
																	<div class="RecommendationStoreCard_projectName__kIgBJ">좁은
																		냉장고에 쏙 들어가는 이중밀폐 이유식 얼음틀 멀티큐브</div>
																	<div
																		class="RecommendationStoreCard_priceContainer__1Aa_1">
																		<span class="RecommendationStoreCard_price__2irFK">9,900</span><span>원</span>
																	</div>
																	<div class="StoreCardFooter_container__X5rH8">
																		<div class="StoreCardFooter_upperFooter__kvjJa">
																			<div
																				class="RatingScore_container__AeQ_I RatingScore_smCard02__3cJAW">
																				<div class="RatingScore_icon__rIS_k"></div>
																				<span class="RatingScore_score__2a-SN">4.8</span>
																			</div>
																			<div
																				class="ParticipantScore_container__JH3e_ ParticipantScore_hide__3hFyW">
																				<div class="ParticipantScore_peopleIcon__22zg8"></div>
																				<span
																					class="ParticipantScore_peopleCountText__1oHUl">0명
																					참여</span>
																			</div>
																		</div>
																		<div class="StoreCardFooter_bottomFooter__MhVou">
																			<div
																				class="DeliveryBadge_container__3XB44 StoreCardFooter_badgeFooter__3H1v0">
																				<div class="DeliveryBadge_badge__14MYK">
																					<i class="DeliveryBadge_icon__P4mcc"></i> 와배송
																				</div>
																			</div>
																		</div>
																	</div>
																</div></a>
														</div>
														<div role="presentation"
															class="CardTable_itemContainer__v9-cW"
															style="width: calc(( 16.6667% - 16px + 2.66667px)- 0.01px); margin-left: 8px; margin-right: 8px; margin-bottom: 0px;">
															<a
																href="/web/store/detail/418?_refer_section_st=storeCurator_3"
																class="RecommendationStoreCard_item__3iMMQ"
																data-ec-list="홈_추천_스토어" data-ec-id="418"
																data-ec-name="낮은각도의 편안함! 123g초경량 올인원 태블릿&amp;노트북 거치대"
																data-ec-position="3" data-ec-price="16900"
																data-ec-category="리빙·베이비" data-ec-brand="와디즈 주식회사"
																data-ec-contenttype="STORE"
																data-gtm-vis-first-on-screen-11319722_2115="5591"
																data-gtm-vis-total-visible-time-11319722_2115="400"><div
																	class="RecommendationStoreCard_thumbnailContainer__mghKx">
																	<div
																		class="RecommendationStoreCard_thumbnailPlaceholder__3TTOS"
																		style="padding-top: calc(100% - 0px);">
																		<div aria-hidden="true"
																			class="RecommendationStoreCard_thumbnail__mis5O CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(&quot;https://cdn2.wadiz.kr/2022/07/22/47331db5-90b4-4ec4-864a-01ca02fd20fd.png/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
																		<div class="RecommendationStoreCard_wadizOnly__zxtNd"></div>
																	</div>
																</div>
																<div
																	class="RecommendationStoreCard_contentContainer__aDF-5">
																	<div class="RecommendationStoreCard_projectName__kIgBJ">낮은각도의
																		편안함! 123g초경량 올인원 태블릿&amp;노트북 거치대</div>
																	<div
																		class="RecommendationStoreCard_priceContainer__1Aa_1">
																		<span class="RecommendationStoreCard_price__2irFK">16,900</span><span>원</span>
																	</div>
																	<div class="StoreCardFooter_container__X5rH8">
																		<div class="StoreCardFooter_upperFooter__kvjJa">
																			<div
																				class="RatingScore_container__AeQ_I RatingScore_smCard02__3cJAW">
																				<div class="RatingScore_icon__rIS_k"></div>
																				<span class="RatingScore_score__2a-SN">4.7</span>
																			</div>
																			<div
																				class="ParticipantScore_container__JH3e_ ParticipantScore_hide__3hFyW">
																				<div class="ParticipantScore_peopleIcon__22zg8"></div>
																				<span
																					class="ParticipantScore_peopleCountText__1oHUl">0명
																					참여</span>
																			</div>
																		</div>
																		<div class="StoreCardFooter_bottomFooter__MhVou">
																			<div
																				class="DeliveryBadge_container__3XB44 StoreCardFooter_badgeFooter__3H1v0">
																				<div class="DeliveryBadge_badge__14MYK">
																					<i class="DeliveryBadge_icon__P4mcc"></i> 와배송
																				</div>
																			</div>
																		</div>
																	</div>
																</div></a>
														</div>
														<div role="presentation"
															class="CardTable_itemContainer__v9-cW"
															style="width: calc(( 16.6667% - 16px + 2.66667px)- 0.01px); margin-left: 8px; margin-right: 8px; margin-bottom: 0px;">
															<a
																href="/web/store/detail/1101?_refer_section_st=storeCurator_4"
																class="RecommendationStoreCard_item__3iMMQ"
																data-ec-list="홈_추천_스토어" data-ec-id="1101"
																data-ec-name="모공청소 고체팩 대왕 흑당고 150g" data-ec-position="4"
																data-ec-price="28900" data-ec-category="뷰티"
																data-ec-brand="와디즈 주식회사" data-ec-contenttype="STORE"
																data-gtm-vis-first-on-screen-11319722_2115="5592"
																data-gtm-vis-total-visible-time-11319722_2115="400"><div
																	class="RecommendationStoreCard_thumbnailContainer__mghKx">
																	<div
																		class="RecommendationStoreCard_thumbnailPlaceholder__3TTOS"
																		style="padding-top: calc(100% - 0px);">
																		<div aria-hidden="true"
																			class="RecommendationStoreCard_thumbnail__mis5O CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(&quot;https://cdn2.wadiz.kr/2023/04/27/a1532d1d-a4d5-4e84-a7ad-f842ba4abf66.png/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
																		<div class="RecommendationStoreCard_wadizOnly__zxtNd"></div>
																	</div>
																</div>
																<div
																	class="RecommendationStoreCard_contentContainer__aDF-5">
																	<div class="RecommendationStoreCard_projectName__kIgBJ">모공청소
																		고체팩 대왕 흑당고 150g</div>
																	<div
																		class="RecommendationStoreCard_priceContainer__1Aa_1">
																		<span class="RecommendationStoreCard_price__2irFK">28,900</span><span>원</span>
																	</div>
																	<div class="StoreCardFooter_container__X5rH8">
																		<div class="StoreCardFooter_upperFooter__kvjJa">
																			<div
																				class="RatingScore_container__AeQ_I RatingScore_smCard02__3cJAW">
																				<div class="RatingScore_icon__rIS_k"></div>
																				<span class="RatingScore_score__2a-SN">4.6</span>
																			</div>
																			<div
																				class="ParticipantScore_container__JH3e_ ParticipantScore_hide__3hFyW">
																				<div class="ParticipantScore_peopleIcon__22zg8"></div>
																				<span
																					class="ParticipantScore_peopleCountText__1oHUl">0명
																					참여</span>
																			</div>
																		</div>
																		<div class="StoreCardFooter_bottomFooter__MhVou">
																			<div
																				class="DeliveryBadge_container__3XB44 StoreCardFooter_badgeFooter__3H1v0">
																				<div class="DeliveryBadge_badge__14MYK">
																					<i class="DeliveryBadge_icon__P4mcc"></i> 와배송
																				</div>
																			</div>
																		</div>
																	</div>
																</div></a>
														</div>
														<div role="presentation"
															class="CardTable_itemContainer__v9-cW"
															style="width: calc(( 16.6667% - 16px + 2.66667px)- 0.01px); margin-left: 8px; margin-right: 0px; margin-bottom: 0px;">
															<a
																href="/web/store/detail/2169?_refer_section_st=storeCurator_5"
																class="RecommendationStoreCard_item__3iMMQ"
																data-ec-list="홈_추천_스토어" data-ec-id="2169"
																data-ec-name="겨울이 두렵지 않은 2in1 아우터! 방수+방풍+투습 [페트 드라이코트]"
																data-ec-position="5" data-ec-price="258000"
																data-ec-category="패션·잡화" data-ec-brand="그릴스 유니온"
																data-ec-contenttype="STORE"
																data-gtm-vis-first-on-screen-11319722_2115="5593"
																data-gtm-vis-total-visible-time-11319722_2115="400"><div
																	class="RecommendationStoreCard_thumbnailContainer__mghKx">
																	<div
																		class="RecommendationStoreCard_thumbnailPlaceholder__3TTOS"
																		style="padding-top: calc(100% - 0px);">
																		<div aria-hidden="true"
																			class="RecommendationStoreCard_thumbnail__mis5O CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
																			style="background-image: url(&quot;https://cdn2.wadiz.kr/2022/03/30/c09cb232-9113-42f0-92d8-9436378a9097.jpg/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
																	</div>
																</div>
																<div
																	class="RecommendationStoreCard_contentContainer__aDF-5">
																	<div class="RecommendationStoreCard_projectName__kIgBJ">겨울이
																		두렵지 않은 2in1 아우터! 방수+방풍+투습 [페트 드라이코트]</div>
																	<div
																		class="RecommendationStoreCard_priceContainer__1Aa_1">
																		<span class="RecommendationStoreCard_price__2irFK">258,000</span><span>원</span>
																	</div>
																	<div class="StoreCardFooter_container__X5rH8">
																		<div class="StoreCardFooter_upperFooter__kvjJa">
																			<div
																				class="RatingScore_container__AeQ_I RatingScore_smCard02__3cJAW">
																				<div class="RatingScore_icon__rIS_k"></div>
																				<span class="RatingScore_score__2a-SN">4.7</span>
																			</div>
																			<div
																				class="ParticipantScore_container__JH3e_ ParticipantScore_hide__3hFyW">
																				<div class="ParticipantScore_peopleIcon__22zg8"></div>
																				<span
																					class="ParticipantScore_peopleCountText__1oHUl">0명
																					참여</span>
																			</div>
																		</div>
																		<div class="StoreCardFooter_bottomFooter__MhVou">
																			<div
																				class="DeliveryBadge_container__3XB44 StoreCardFooter_badgeFooter__3H1v0">
																				<div class="DeliveryBadge_badge__14MYK">무료배송</div>
																			</div>
																		</div>
																	</div>
																</div></a>
														</div>
													</div>
												</div>
											</div>
											<div class="RecommendationStore_buttonWrap__Eqi5W">
												<button
													class="RecommendationStore_arrow__cssCM RecommendationStore_left__XKgw5"
													aria-label="이전 목록" style="display: none;">
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation" class="withIcon_icon__3VTbq"
														aria-hidden="true">
														<path
															d="M12 20L25 7l1.4 1.4L14.8 20l11.6 11.6L25 33 12 20z"></path></svg>
												</button>
											</div>
											<div class="RecommendationStore_buttonWrap__Eqi5W">
												<button
													class="RecommendationStore_arrow__cssCM RecommendationStore_right__3bbhb"
													aria-label="다음 목록" style="display: block;">
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation" class="withIcon_icon__3VTbq"
														aria-hidden="true">
														<path
															d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>


							<!-- 회원님이 좋아할 프로젝트 -->
							<div class="Main_wrap__2jKMu">
								<div
									class="RecommendationDesktop_innerGroup__as4jB Main_innerWrap__7-_Vm">
									<section
										class="SectionContainerLayout_container__1f8kt LikableFundingWrap_container__3mzG6 undefined">
										<div
											class="title_contentWrapper__1P-q0 LikableFundingWrap_titleBox__31QnF">
											<h3>
												회원님이 <em>좋아할</em> 프로젝트
											</h3>
										</div>
										<div class="LikableFundingWrap_wrap__1ZPJw">
											<ul class="LikableFundingWrap_cardList__aExBc">
												<li class="LikableCard_card__kI_2A"><a
													href="/web/campaign/detail/202556?_refer_section_st=likeable_0"
													data-ec-list="홈_#좋아할 프로젝트_프리오더" data-ec-id="202556"
													data-ec-name="몸보신 끝판왕ㅣ울산 오리백숙 1위 '냄비 없이 15분 내로 끓여드세요'"
													data-ec-position="0" data-ec-category="푸드"
													data-ec-brand="창궁(힙한오리)" data-ec-contenttype="PREORDER"><div
															class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
															<article>
																<div
																	class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																	<div aria-hidden="true"
																		class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
																</div>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj">
																	<em class="commons_title__1yGWm">몸보신 끝판왕ㅣ울산 오리백숙
																		1위 '냄비 없이 15분 내로 끓여드세요'</em>
																	<p class="commons_summary__2Ynez">
																		<span class="commons_rate__10tOH">778%</span>프리오더
																	</p>
																</div>
															</article>
														</div></a></li>
												<li class="LikableCard_card__kI_2A"><a
													href="/web/campaign/detail/194433?_refer_section_st=likeable_1"
													data-ec-list="홈_#좋아할 프로젝트_펀딩" data-ec-id="194433"
													data-ec-name="선크림이라고? 프라이머+베이스+톤보정까지! 모공 쫘악 메꾸는 프라이머선"
													data-ec-position="1" data-ec-category="뷰티"
													data-ec-brand="감성글로벌 주식회사" data-ec-contenttype="REWARD"><div
															class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
															<article>
																<div
																	class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																	<div aria-hidden="true"
																		class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
																</div>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj">
																	<em class="commons_title__1yGWm">선크림이라고?
																		프라이머+베이스+톤보정까지! 모공 쫘악 메꾸는 프라이머선</em>
																	<p class="commons_summary__2Ynez">
																		<span class="commons_rate__10tOH">23817%</span>펀딩
																	</p>
																</div>
															</article>
														</div></a></li>
												<li class="LikableCard_card__kI_2A"><a
													href="/web/campaign/detail/204037?_refer_section_st=likeable_2"
													data-ec-list="홈_#좋아할 프로젝트_펀딩" data-ec-id="204037"
													data-ec-name="밀폐와 보냉은 기본, 돌돌 접히는 휴대성까지ㅣ100% 실리콘 돌돌 텀블러"
													data-ec-position="2" data-ec-category="홈·리빙"
													data-ec-brand="주식회사 신성실리콘" data-ec-contenttype="REWARD"><div
															class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
															<article>
																<div
																	class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
																	<div aria-hidden="true"
																		class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
																</div>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj">
																	<em class="commons_title__1yGWm">밀폐와 보냉은 기본, 돌돌
																		접히는 휴대성까지ㅣ100% 실리콘 돌돌 텀블러</em>
																	<p class="commons_summary__2Ynez">
																		<span class="commons_rate__10tOH">8426%</span>펀딩
																	</p>
																</div>
															</article>
														</div></a></li>
											</ul>
											<div
												class="CardType_projectCard__3xhjb CardType_plannedCard__Yyg0B LikableFundingWrap_plannedCard__ZG4TD">
												<a href="/web/wreward/comingsoon/collection/preview21"
													data-promo-acid="505"
													data-promo-id="/web/wreward/comingsoon/collection/preview21"
													data-promo-name="와디즈 체험단 이벤트" data-promo-position="MRB2"><article>
														<div
															class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
															<div aria-hidden="true"
																class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
														</div>
														<div>
															<span class="CardType_badge__OjSmY">기획전</span><span
																class="CardType_title__2qEmh">와디즈 체험단 이벤트</span>
														</div>
													</article></a>
											</div>
										</div>
									</section>
								</div>
							</div>


							<!-- 회원님이 좋아할 프로젝트 아래 (정은혜 작가도 메이커였어!) -->
							<div class="Main_wrap__2jKMu">
								<div
									class="RecommendationDesktop_innerGroup__as4jB RecommendationDesktop_visualBanners__13p13 Main_innerWrap__7-_Vm">
									<section
										class="SectionContainerLayout_container__1f8kt VisualBanner_container__3MB_0 Ads_visualBanner__fYh_g">
										<div>
											<div class="banner_videoBanner__3D8TE">
												<div class="banner_videoWrapper__3KpjM">
													<video class="banner_video__2jZtq"
														poster="https://cdn.wadiz.kr/ft/images/green001/2023/0201/20230201171150835_6345.jpg/wadiz/"
														loop="" playsinline="true">
														<source
															src="https://cdn.wadiz.kr/wwwwadiz/clips/green001/2023/0201/20230201171202276_6345.mp4"
															type="video/mp4">
													</video>
													<div class="banner_progressBarWrapper__oxkX7">
														<div class="banner_progressBar__30jU8" style="width: 0%;"></div>
													</div>
													<button class="banner_playController__27skq">
														<svg viewBox="0 0 40 40" focusable="false"
															role="presentation" class="withIcon_icon__3VTbq"
															aria-hidden="true">
															<path d="M32 20L12 35V5z"></path></svg>
													</button>
													<button
														class="banner_muteController__22ie4 banner_hide__uX-Pj">
														<svg viewBox="0 0 24 24" focusable="false"
															role="presentation" class="withIcon_icon__3VTbq"
															aria-hidden="true">
															<path
																d="M21.684 20.802l-.846.846L17.1 17.91v3.768L8.334 15.6H4.5V8.4h3.09L2.364 3.174l.846-.846 18.474 18.474zM8.1 14.4V9.6H5.7v4.8h2.4zm7.8 4.986V16.71l-6.6-6.6v4.698l6.6 4.578zM15.8 4.39l-5.606 3.764-.936-.9L17.1 1.986v12.858l-1.3-1.259V4.39z"></path></svg>
													</button>
												</div>
												<div class="banner_content__2HQ8i">
													<a class="banner_linkBtn__1lQjm"
														href="http://bit.ly/3JzhlgD?_refer_section_st=MM1_6"
														data-promo-acid="6345"
														data-promo-id="http://bit.ly/3JzhlgD?_refer_section_st=MM1_6"
														data-promo-name="정은혜 작가도 메이커였어!" data-promo-position="MM1">정은혜
														작가도 메이커였어! <svg viewBox="0 0 40 40" focusable="false"
															role="presentation"
															class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
															aria-hidden="true">
															<path
																d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
													</a>
												</div>
											</div>
										</div>
									</section>
									<section
										class="SectionContainerLayout_container__1f8kt VisualBanner_container__3MB_0 Ads_visualBanner__fYh_g">
										<div>
											<a
												href="https://www.wadiz.kr/web/wevent/wadiz_welcomecoupon?_refer_section_st=MM1_5"
												class="banner_imageBanner__3x6lO" data-promo-acid="5835"
												data-promo-id="https://www.wadiz.kr/web/wevent/wadiz_welcomecoupon?_refer_section_st=MM1_5"
												data-promo-name="신규회원 웰컴 혜택" data-promo-position="MM1"><article>
													<div
														class="commons_thumbnail__3wYGv banner_thumbnail__3VPaQ">
														<div aria-hidden="true"
															class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
													</div>
													<div class="banner_content__2HQ8i">
														<div class="banner_textWrapper__2zjfa">
															<h1 class="banner_mainCopy__1rYe7">신규회원 웰컴 혜택</h1>
															<p class="banner_subCopy__2ZvNy">최대 6만 5천원 쿠폰받기</p>
														</div>
														<button aria-label="바로가기"
															class="Button_button__2FuOU Button_primary__2mZni Button_xs__2DWsb banner_bannerBtn__3ntRR"
															type="button">
															<span><span class="Button_children__ilFun">바로가기</span></span>
														</button>
													</div>
												</article></a>
										</div>
									</section>
									<section
										class="SectionContainerLayout_container__1f8kt VisualBanner_container__3MB_0 Ads_visualBanner__fYh_g">
										<div>
											<a
												href="https://www.wadiz.kr/web/wreward/collection/spacewadiz?order=recommend&amp;endYn=N&amp;keyword=&amp;_refer_section_st=RMK_6&amp;utm_medium=gonggan_insta&amp;utm_source=social&amp;utm_campaign=1234&amp;_refer_section_st=MM1_1"
												class="banner_imageBanner__3x6lO" data-promo-acid="4735"
												data-promo-id="https://www.wadiz.kr/web/wreward/collection/spacewadiz?order=recommend&amp;endYn=N&amp;keyword=&amp;_refer_section_st=RMK_6&amp;utm_medium=gonggan_insta&amp;utm_source=social&amp;utm_campaign=1234&amp;_refer_section_st=MM1_1"
												data-promo-name="스즈메의문단속 굿즈 전시" data-promo-position="MM1"><article>
													<div
														class="commons_thumbnail__3wYGv banner_thumbnail__3VPaQ">
														<div aria-hidden="true"
															class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
													</div>
													<div class="banner_content__2HQ8i">
														<div class="banner_textWrapper__2zjfa">
															<h1 class="banner_mainCopy__1rYe7">스즈메의문단속 굿즈 전시</h1>
															<p class="banner_subCopy__2ZvNy">공간와디즈에서 만나보세요</p>
														</div>
														<button aria-label="보러가기"
															class="Button_button__2FuOU Button_primary__2mZni Button_xs__2DWsb banner_bannerBtn__3ntRR"
															type="button">
															<span><span class="Button_children__ilFun">보러가기</span></span>
														</button>
													</div>
												</article></a>
										</div>
									</section>
								</div>
							</div>
						</div>
					</div>

					<!-- 얼리버드 -->
					<div class="Main_wrap__2jKMu">
						<div class="Main_innerWrap__7-_Vm">
							<div class="EarlybirdDesktop_container__1IoRp">
								<div class="EarlybirdDesktop_wrap__314kI">
									<div class="title_titleWrapper__1ggAh">
										<h2 class="title_title__2rv2M">얼리버드</h2>
										<p>먼저 참여하는 분들께 드리는 얼리버드 혜택</p>
									</div>
								</div>
								<ul class="EarlybirdDesktop_earlybirdList__2XjA6">
									<li class="EarlybirdDesktop_listItem__2j7AD"><div
											class="CardType_projectCard__3xhjb CardType_earlybirdCard__1t1n1">
											<div class="CardType_skeletonThumbnail__27V9b"></div>
											<div class="CardType_cardContent__3UMOr">
												<div>
													<div class="CardType_skeletonContent__2pe6l">
														<div class="CardType_skeletonText__2cSL5"></div>
														<div class="CardType_skeletonSubText__2rjGC"></div>
													</div>
												</div>
												<div class="CardType_earlybirdContent__1b8VN">
													<div class="CardType_title__2qEmh"></div>
													<div class="CardType_description__2BtXk"></div>
													<div class="CardType_subContent__3QETf"></div>
												</div>
											</div>
											<div class="CardType_linkBtn__1QHvM">
												<div class="CardType_skeletonTextCenter__3chuI"></div>
											</div>
										</div></li>
									<li class="EarlybirdDesktop_listItem__2j7AD"><div
											class="CardType_projectCard__3xhjb CardType_earlybirdCard__1t1n1">
											<div class="CardType_skeletonThumbnail__27V9b"></div>
											<div class="CardType_cardContent__3UMOr">
												<div>
													<div class="CardType_skeletonContent__2pe6l">
														<div class="CardType_skeletonText__2cSL5"></div>
														<div class="CardType_skeletonSubText__2rjGC"></div>
													</div>
												</div>
												<div class="CardType_earlybirdContent__1b8VN">
													<div class="CardType_title__2qEmh"></div>
													<div class="CardType_description__2BtXk"></div>
													<div class="CardType_subContent__3QETf"></div>
												</div>
											</div>
											<div class="CardType_linkBtn__1QHvM">
												<div class="CardType_skeletonTextCenter__3chuI"></div>
											</div>
										</div></li>
									<li class="EarlybirdDesktop_listItem__2j7AD"><div
											class="CardType_projectCard__3xhjb CardType_earlybirdCard__1t1n1">
											<div class="CardType_skeletonThumbnail__27V9b"></div>
											<div class="CardType_cardContent__3UMOr">
												<div>
													<div class="CardType_skeletonContent__2pe6l">
														<div class="CardType_skeletonText__2cSL5"></div>
														<div class="CardType_skeletonSubText__2rjGC"></div>
													</div>
												</div>
												<div class="CardType_earlybirdContent__1b8VN">
													<div class="CardType_title__2qEmh"></div>
													<div class="CardType_description__2BtXk"></div>
													<div class="CardType_subContent__3QETf"></div>
												</div>
											</div>
											<div class="CardType_linkBtn__1QHvM">
												<div class="CardType_skeletonTextCenter__3chuI"></div>
											</div>
										</div></li>
								</ul>
							</div>
						</div>
					</div>

					<!-- 기획전 -->
					<div class="Main_wrap__2jKMu">
						<div class="Main_innerWrap__7-_Vm">
							<div class="PlannedDesktop_container__IA4T1">
								<div class="PlannedDesktop_wrap__3ASwL">
									<div class="title_titleWrapper__1ggAh">
										<h2 class="title_title__2rv2M">기획전</h2>
									</div>
									<div
										class="Pagination_container__28uaq PlannedDesktop_pagination__EpHF9">
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
												class="Pagination_paginationBtn__31dPl Pagination_next__2VEGc Pagination_isLastPage__35UZw"
												disabled="" aria-label="다음 목록">
												<svg viewBox="0 0 40 40" focusable="false"
													role="presentation" class="withIcon_icon__3VTbq"
													aria-hidden="true">
													<path
														d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
											</button>
										</div>
										<ul class="Pagination_pageList__KyPel" aria-label="pagination"></ul>
									</div>
								</div>
								<ul class="PlannedDesktop_plannedList__2_PKM">
									<li class="PlannedDesktop_listItem__1bdQe"><div
											class="CardType_projectCard__3xhjb CardType_cardTypePlanned__5H09T CardType_skeleton__1Kjxr">
											<div class="CardType_skeletonKeyVisual__3pCmA"></div>
											<div class="CardType_cardContent__3UMOr">
												<strong class="CardType_title__2qEmh"></strong>
												<ul>
													<li class="CardType_cardList__3AqkY"><div
															class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP">
															<article>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj commons_skeleton__2nBNJ">
																	<em class="commons_title__1yGWm"></em>
																	<p class="commons_summary__2Ynez"></p>
																</div>
																<div
																	class="skeleton_skeleton__2LnNv skeleton_thumbnail__2XllH CardType_thumbnail__2dtTe"></div>
															</article>
														</div></li>
													<li class="CardType_cardList__3AqkY"><div
															class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP">
															<article>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj commons_skeleton__2nBNJ">
																	<em class="commons_title__1yGWm"></em>
																	<p class="commons_summary__2Ynez"></p>
																</div>
																<div
																	class="skeleton_skeleton__2LnNv skeleton_thumbnail__2XllH CardType_thumbnail__2dtTe"></div>
															</article>
														</div></li>
													<li class="CardType_cardList__3AqkY"><div
															class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP">
															<article>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj commons_skeleton__2nBNJ">
																	<em class="commons_title__1yGWm"></em>
																	<p class="commons_summary__2Ynez"></p>
																</div>
																<div
																	class="skeleton_skeleton__2LnNv skeleton_thumbnail__2XllH CardType_thumbnail__2dtTe"></div>
															</article>
														</div></li>
												</ul>
											</div>
											<div class="CardType_linkBtn__1QHvM">
												더보기
												<svg viewBox="0 0 40 40" focusable="false"
													role="presentation"
													class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
													aria-hidden="true">
													<path
														d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
											</div>
										</div></li>
									<li class="PlannedDesktop_listItem__1bdQe"><div
											class="CardType_projectCard__3xhjb CardType_cardTypePlanned__5H09T CardType_skeleton__1Kjxr">
											<div class="CardType_skeletonKeyVisual__3pCmA"></div>
											<div class="CardType_cardContent__3UMOr">
												<strong class="CardType_title__2qEmh"></strong>
												<ul>
													<li class="CardType_cardList__3AqkY"><div
															class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP">
															<article>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj commons_skeleton__2nBNJ">
																	<em class="commons_title__1yGWm"></em>
																	<p class="commons_summary__2Ynez"></p>
																</div>
																<div
																	class="skeleton_skeleton__2LnNv skeleton_thumbnail__2XllH CardType_thumbnail__2dtTe"></div>
															</article>
														</div></li>
													<li class="CardType_cardList__3AqkY"><div
															class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP">
															<article>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj commons_skeleton__2nBNJ">
																	<em class="commons_title__1yGWm"></em>
																	<p class="commons_summary__2Ynez"></p>
																</div>
																<div
																	class="skeleton_skeleton__2LnNv skeleton_thumbnail__2XllH CardType_thumbnail__2dtTe"></div>
															</article>
														</div></li>
													<li class="CardType_cardList__3AqkY"><div
															class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP">
															<article>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj commons_skeleton__2nBNJ">
																	<em class="commons_title__1yGWm"></em>
																	<p class="commons_summary__2Ynez"></p>
																</div>
																<div
																	class="skeleton_skeleton__2LnNv skeleton_thumbnail__2XllH CardType_thumbnail__2dtTe"></div>
															</article>
														</div></li>
												</ul>
											</div>
											<div class="CardType_linkBtn__1QHvM">
												더보기
												<svg viewBox="0 0 40 40" focusable="false"
													role="presentation"
													class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
													aria-hidden="true">
													<path
														d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
											</div>
										</div></li>
									<li class="PlannedDesktop_listItem__1bdQe"><div
											class="CardType_projectCard__3xhjb CardType_cardTypePlanned__5H09T CardType_skeleton__1Kjxr">
											<div class="CardType_skeletonKeyVisual__3pCmA"></div>
											<div class="CardType_cardContent__3UMOr">
												<strong class="CardType_title__2qEmh"></strong>
												<ul>
													<li class="CardType_cardList__3AqkY"><div
															class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP">
															<article>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj commons_skeleton__2nBNJ">
																	<em class="commons_title__1yGWm"></em>
																	<p class="commons_summary__2Ynez"></p>
																</div>
																<div
																	class="skeleton_skeleton__2LnNv skeleton_thumbnail__2XllH CardType_thumbnail__2dtTe"></div>
															</article>
														</div></li>
													<li class="CardType_cardList__3AqkY"><div
															class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP">
															<article>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj commons_skeleton__2nBNJ">
																	<em class="commons_title__1yGWm"></em>
																	<p class="commons_summary__2Ynez"></p>
																</div>
																<div
																	class="skeleton_skeleton__2LnNv skeleton_thumbnail__2XllH CardType_thumbnail__2dtTe"></div>
															</article>
														</div></li>
													<li class="CardType_cardList__3AqkY"><div
															class="CardType_projectCard__3xhjb CardType_projectCardA__33rbP">
															<article>
																<div
																	class="commons_content__2K1SH CardType_content__1Pavj commons_skeleton__2nBNJ">
																	<em class="commons_title__1yGWm"></em>
																	<p class="commons_summary__2Ynez"></p>
																</div>
																<div
																	class="skeleton_skeleton__2LnNv skeleton_thumbnail__2XllH CardType_thumbnail__2dtTe"></div>
															</article>
														</div></li>
												</ul>
											</div>
											<div class="CardType_linkBtn__1QHvM">
												더보기
												<svg viewBox="0 0 40 40" focusable="false"
													role="presentation"
													class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
													aria-hidden="true">
													<path
														d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
											</div>
										</div></li>
								</ul>
							</div>
						</div>
					</div>

					<!-- 트랜드 -->
					<article class="TrendApp_container__2IOnt">
						<div class="Main_wrap__2jKMu">
							<div class="TrendApp_wrapper__3MC4K Main_innerWrap__7-_Vm">
								<h2 class="TrendApp_title__2AMXT">트렌드</h2>
								<section class="HotFundingList_container__2lxqE">
									<div class="HotFundingList_titleWrap__2am7E">
										<div class="HotFundingList_title__3SJz-">
											<div class="title_contentWrapper__1P-q0 title_trend__3KsC2">
												<p>
													<em>#급상승</em> 프로젝트
												</p>
											</div>
										</div>
										<div class="HotFundingList_tooltip__3lfUW">
											<div class="Tooltip_container__1OVpV">
												<div class="Tooltip_symbol__3cGy0"
													aria-describedby="trendHotFundingProjectTooltip">
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
												<div role="tooltip" id="trendHotFundingProjectTooltip"
													class="Tooltip_messagebox__2TW_p"
													style="width: 241px; display: none;">
													<p>
														<em>급상승 프로젝트</em><br>24시간을 기준으로 전날 대비 달성률이 높은 프로젝트가
														노출됩니다. 단, 의도적으로 악용되는 경우 노출에서 제외될 수 있습니다.
													</p>
												</div>
											</div>
										</div>
									</div>
									<ul class="HotFundingList_content__3tCoi">
										<li class="HotFundingList_card__3v3CA"><div
												class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
												<div class="CardType_skeletonThumbnail__27V9b"></div>
												<div class="CardType_skeletonContent__2pe6l">
													<div class="CardType_skeletonText__2cSL5"></div>
													<div class="CardType_skeletonSubText__2rjGC"></div>
												</div>
											</div></li>
										<li class="HotFundingList_card__3v3CA"><div
												class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
												<div class="CardType_skeletonThumbnail__27V9b"></div>
												<div class="CardType_skeletonContent__2pe6l">
													<div class="CardType_skeletonText__2cSL5"></div>
													<div class="CardType_skeletonSubText__2rjGC"></div>
												</div>
											</div></li>
										<li class="HotFundingList_card__3v3CA"><div
												class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
												<div class="CardType_skeletonThumbnail__27V9b"></div>
												<div class="CardType_skeletonContent__2pe6l">
													<div class="CardType_skeletonText__2cSL5"></div>
													<div class="CardType_skeletonSubText__2rjGC"></div>
												</div>
											</div></li>
										<li class="HotFundingList_card__3v3CA"><div
												class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
												<div class="CardType_skeletonThumbnail__27V9b"></div>
												<div class="CardType_skeletonContent__2pe6l">
													<div class="CardType_skeletonText__2cSL5"></div>
													<div class="CardType_skeletonSubText__2rjGC"></div>
												</div>
											</div></li>
									</ul>
								</section>
								<section class="LikeFundingList_container__1Rxcy">
									<div class="LikeFundingList_titleWrap__2f8J6">
										<div class="LikeFundingList_title__chh50">
											<div class="title_contentWrapper__1P-q0 title_trend__3KsC2">
												<p>
													오늘 가장 많은 사람들이<br class="LikeFundingList_break__8Di6F">
													<em> #좋아한</em> 프로젝트
												</p>
											</div>
										</div>
										<div class="LikeFundingList_tooltip__1yCue">
											<div class="Tooltip_container__1OVpV">
												<div class="Tooltip_symbol__3cGy0"
													aria-describedby="trendLikeFundingProjectTooltip">
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
												<div role="tooltip" id="trendLikeFundingProjectTooltip"
													class="Tooltip_messagebox__2TW_p"
													style="width: 241px; display: none;">
													<p>
														<em>오늘 가장 많은 사람들이 좋아한 프로젝트</em><br>진행중인 프로젝트 중 24시간 내
														좋아요를 가장 많이 받은 프로젝트가 노출됩니다.
													</p>
												</div>
											</div>
										</div>
									</div>
									<ul class="LikeFundingList_content__cgPUb">
										<li class="LikeFundingList_card__2wgnO"><div
												class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
												<div class="CardType_skeletonThumbnail__27V9b"></div>
												<div class="CardType_skeletonContent__2pe6l">
													<div class="CardType_skeletonText__2cSL5"></div>
													<div class="CardType_skeletonSubText__2rjGC"></div>
												</div>
											</div></li>
										<li class="LikeFundingList_card__2wgnO"><div
												class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
												<div class="CardType_skeletonThumbnail__27V9b"></div>
												<div class="CardType_skeletonContent__2pe6l">
													<div class="CardType_skeletonText__2cSL5"></div>
													<div class="CardType_skeletonSubText__2rjGC"></div>
												</div>
											</div></li>
										<li class="LikeFundingList_card__2wgnO"><div
												class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
												<div class="CardType_skeletonThumbnail__27V9b"></div>
												<div class="CardType_skeletonContent__2pe6l">
													<div class="CardType_skeletonText__2cSL5"></div>
													<div class="CardType_skeletonSubText__2rjGC"></div>
												</div>
											</div></li>
										<li class="LikeFundingList_card__2wgnO"><div
												class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
												<div class="CardType_skeletonThumbnail__27V9b"></div>
												<div class="CardType_skeletonContent__2pe6l">
													<div class="CardType_skeletonText__2cSL5"></div>
													<div class="CardType_skeletonSubText__2rjGC"></div>
												</div>
											</div></li>
									</ul>
								</section>
								<section class="SupportedFundingList_container__3dZhk">
									<div class="SupportedFundingList_titleWrap__2u1I0">
										<div class="SupportedFundingList_title__2-wyq">
											<div class="title_contentWrapper__1P-q0 title_trend__3KsC2">
												<p>
													오늘 가장 많은 사람들이<br class="SupportedFundingList_break__3ti9Q">
													<em> #지지서명한</em> 프로젝트
												</p>
											</div>
										</div>
										<div class="SupportedFundingList_tooltip__3CCEe">
											<div class="Tooltip_container__1OVpV">
												<div class="Tooltip_symbol__3cGy0"
													aria-describedby="trendSupportedFundingProjectTooltip">
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
												<div role="tooltip" id="trendSupportedFundingProjectTooltip"
													class="Tooltip_messagebox__2TW_p"
													style="width: 215px; display: none;">
													<p>
														<em>지지서명이란</em><br>프로젝트 스토리가 세상에 알려질 수 있도록 페이스북을 이용한
														공유 서비스입니다. 참여 시 최대 1,100 포인트를 적립해드립니다.<a
															href="http://help.wadiz.kr/7-%EA%B8%B0%ED%83%80-%EB%8B%A4%EB%A5%B8-%EB%82%B4%EC%9A%A9%EC%9D%B4-%EA%B6%81%EA%B8%88%ED%95%98%EB%8B%A4%EB%A9%B4%2F%EC%A7%80%EC%A7%80%EC%84%9C%EB%AA%85-%ED%8F%AC%EC%9D%B8%ED%8A%B8-%EC%A7%80%EA%B8%89-%EC%A0%95%EC%B1%85-%EC%95%88%EB%82%B4">
															자세히 보기</a>
													</p>
												</div>
											</div>
										</div>
									</div>
									<ul class="SupportedFundingList_content__142pc">
										<li class="SupportedFundingList_card__3UZJW"><div
												class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
												<article>
													<div
														class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
														<div aria-hidden="true"
															class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
													</div>
													<div
														class="commons_content__2K1SH CardType_content__1Pavj commons_skeleton__2nBNJ">
														<em class="commons_title__1yGWm"></em>
														<p class="commons_summary__2Ynez"></p>
													</div>
												</article>
											</div></li>
										<li class="SupportedFundingList_card__3UZJW"><div
												class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
												<article>
													<div
														class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
														<div aria-hidden="true"
															class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
													</div>
													<div
														class="commons_content__2K1SH CardType_content__1Pavj commons_skeleton__2nBNJ">
														<em class="commons_title__1yGWm"></em>
														<p class="commons_summary__2Ynez"></p>
													</div>
												</article>
											</div></li>
										<li class="SupportedFundingList_card__3UZJW"><div
												class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
												<article>
													<div
														class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
														<div aria-hidden="true"
															class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
													</div>
													<div
														class="commons_content__2K1SH CardType_content__1Pavj commons_skeleton__2nBNJ">
														<em class="commons_title__1yGWm"></em>
														<p class="commons_summary__2Ynez"></p>
													</div>
												</article>
											</div></li>
										<li class="SupportedFundingList_card__3UZJW"><div
												class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
												<article>
													<div
														class="commons_thumbnail__3wYGv CardType_thumbnail__2dtTe">
														<div aria-hidden="true"
															class="commons_img__2UTCA commons_visible__1xTJh CardThumbnail_thumbnail__3bDBJ"></div>
													</div>
													<div
														class="commons_content__2K1SH CardType_content__1Pavj commons_skeleton__2nBNJ">
														<em class="commons_title__1yGWm"></em>
														<p class="commons_summary__2Ynez"></p>
													</div>
												</article>
											</div></li>
									</ul>
								</section>
							</div>
						</div>

						<!-- 주목하세요! 오늘 오픈한 프로젝트 -->
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
												<div class="DebutFundingDesktop_page__WMtxm">
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
																class="Pagination_paginationBtn__31dPl Pagination_next__2VEGc Pagination_isLastPage__35UZw"
																disabled="" aria-label="다음 목록">
																<svg viewBox="0 0 40 40" focusable="false"
																	role="presentation" class="withIcon_icon__3VTbq"
																	aria-hidden="true">
																	<path
																		d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
															</button>
														</div>
														<ul class="Pagination_pageList__KyPel"
															aria-label="pagination"></ul>
													</div>
												</div>
												<div class="DebutFundingDesktop_card__8YXhV">
													<div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<div class="CardType_skeletonThumbnail__27V9b"></div>
														<div class="CardType_skeletonContent__2pe6l">
															<div class="CardType_skeletonText__2cSL5"></div>
															<div class="CardType_skeletonSubText__2rjGC"></div>
														</div>
													</div>
												</div>
												<div class="DebutFundingDesktop_card__8YXhV">
													<div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<div class="CardType_skeletonThumbnail__27V9b"></div>
														<div class="CardType_skeletonContent__2pe6l">
															<div class="CardType_skeletonText__2cSL5"></div>
															<div class="CardType_skeletonSubText__2rjGC"></div>
														</div>
													</div>
												</div>
												<div class="DebutFundingDesktop_card__8YXhV">
													<div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<div class="CardType_skeletonThumbnail__27V9b"></div>
														<div class="CardType_skeletonContent__2pe6l">
															<div class="CardType_skeletonText__2cSL5"></div>
															<div class="CardType_skeletonSubText__2rjGC"></div>
														</div>
													</div>
												</div>
												<div class="DebutFundingDesktop_card__8YXhV">
													<div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<div class="CardType_skeletonThumbnail__27V9b"></div>
														<div class="CardType_skeletonContent__2pe6l">
															<div class="CardType_skeletonText__2cSL5"></div>
															<div class="CardType_skeletonSubText__2rjGC"></div>
														</div>
													</div>
												</div>
												<div class="DebutFundingDesktop_card__8YXhV">
													<div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<div class="CardType_skeletonThumbnail__27V9b"></div>
														<div class="CardType_skeletonContent__2pe6l">
															<div class="CardType_skeletonText__2cSL5"></div>
															<div class="CardType_skeletonSubText__2rjGC"></div>
														</div>
													</div>
												</div>
												<div class="DebutFundingDesktop_card__8YXhV">
													<div
														class="CardType_projectCard__3xhjb CardType_projectCardB__3N8ks">
														<div class="CardType_skeletonThumbnail__27V9b"></div>
														<div class="CardType_skeletonContent__2pe6l">
															<div class="CardType_skeletonText__2cSL5"></div>
															<div class="CardType_skeletonSubText__2rjGC"></div>
														</div>
													</div>
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