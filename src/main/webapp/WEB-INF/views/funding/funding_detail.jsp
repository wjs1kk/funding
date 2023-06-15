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
<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

<!-- slick-slide 사용 -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<title>Insert title here</title>
</head>
<script>
	// 모달창 띄우기
	$(function(){ 
		$(".Button_contained__2SIAT_2").click(function(){
	    	$(".modal").fadeIn();
	  	});
		
	  	$(".modal_content").click(function(){
	    	$(".modal").fadeOut();
	  	});
	});
</script>
<script>
	function next() {
		$(".slick-slide").hide();
		var allSlide = $(".slick-slide");
		var currentIndex = 0;
		
		$(".slick-slide").each(function(index,item){
			if($(this).hasClass("slick-active")) {
				currentIndex = index;
			}
	        
		});
		
		var newIndex = 0;
		
		if(currentIndex >= allSlide.length - 1) {
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
		$(".slick-slide").each(function(index, item){
			if($(this).hasClass("slick-active")) {
				currentIndex = index;
			}
		});
		
		//새롭게 나타낼 div의 index
		var newIndex = 0;
	    
		if(currentIndex <= 0) {
			newIndex = allSlide.length - 1;
		} else {
			newIndex = currentIndex - 1;
		}
	
		$(".slick-slide").removeClass("slick-active");
		$(".slick-slide").eq(newIndex).addClass("slick-active");
		$(".slick-slide").eq(newIndex).show();
	}
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
											<button type="button" class="RewardImageSlider_slickArrow__1KoIJ RewardImageSlider_slickPrev__358my" onclick="prev()">Previous</button>
											<div class="slick-list" style="height: 386px;">
												<div class="slick-track"
													style="width: 5472px; opacity: 1;">
													<c:forEach var="images" items="${images }">
														<div data-index="-1" tabindex="-1"
															class="slick-slide slick-cloned" aria-hidden="true"
															style="width: 752px;">
															<div>
																<div class="RewardImageSlider_slickListItem__kkFdd"
																	tabindex="-1"
																	style="width: 100%; display: inline-block;">
																	<div
																		class="RewardImageSlider_slickBackgroundImage__MBaH9"
																		style="background-image: url('${pageContext.request.contextPath }/resources/images/project_images/${images}'); background-size: contain"></div>
																</div>
															</div>
														</div>
													</c:forEach>
												</div>
											</div>
											<button type="button"
												class="RewardImageSlider_slickArrow__1KoIJ RewardImageSlider_slickNext__382fX" onclick="next()">Next</button>
										</div>
									</div>
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
												아이펀드 펀딩은 리워드를 단순히 구매하는 쇼핑이 아닌 <b>메이커의 새로운 제품・서비스・콘텐츠 제작
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
											<div class="inner-contents fr-view" id="content">
												<p>${fundingDetail.project_content }</p>
											</div>
										</div>
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
							</div>
							<div class="RewardDetailDesktop_right__3gQBb">
								<div class="CommonInfo_container__1J2gi">
									<div class="BaseFundingInfo_container__sotrP">
										<div class="BaseFundingInfo_searchInfoWrapper__sb9L-">
											<div class="ProjectSearchTags_container__7YZNA">
												
												<div class="ProjectSearchTags_hashTags__3v6i6">
													<a data-ga-category="펀딩(상세)_검색태그" data-ga-action="클릭"
														data-ga-label="다이어트"
														
														class="Button_button__2FuOU Button_tertiaryGrey__3jJV7 Button_contained__2SIAT Button_xs__2DWsb Button_circular__1cdcJ ProjectSearchTags_hashTagButton__fCndq ProjectSearchTags_gaElement__1mZHZ"><span><span
															class="Button_children__ilFun"><div
																	class="ProjectSearchTags_hashTag__2UMo_">
																	<span class="ProjectSearchTags_hash__IgbO9">#</span>
																	<c:choose>
																		<c:when test="${fundingDetail.project_category == 01}">
																			<span>테크/가전</span>
																		</c:when>
																		<c:when test="${fundingDetail.project_category == 02}">
																			<span>패션/잡화</span>
																		</c:when>
																		<c:when test="${fundingDetail.project_category == 03}">
																			<span>홈/리빙</span>
																		</c:when>
																		<c:when test="${fundingDetail.project_category == 04}">
																			<span>뷰티</span>
																		</c:when>
																		<c:when test="${fundingDetail.project_category == 05}">
																			<span>푸드</span>
																		</c:when>
																		<c:when test="${fundingDetail.project_category == 06}">
																			<span>출판</span>
																		</c:when>
																		<c:when test="${fundingDetail.project_category == 07}">
																			<span>클래스/컨설팅</span>
																		</c:when>
																		<c:when test="${fundingDetail.project_category == 08}">
																			<span>레저/아웃도어</span>
																		</c:when>
																		<c:when test="${fundingDetail.project_category == 09}">
																			<span>스포츠/모빌리티</span>
																		</c:when>
																		<c:otherwise>
																			<span>컬쳐/아티스트</span>
																		</c:otherwise>
																	</c:choose>
																</div></span></span></a>
												</div>
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
										<c:if test="${empty fundingDetail.project_coming_soon_date }">
											<div class="BaseFundingInfo_rateWrapper__32WcC">
												<div class="BaseFundingInfo_rate__1uMoD">
													<div class="BaseFundingInfo_infoWrapper__23LoT">
														<span class="BaseFundingInfo_achivementRate__1Cnsy">
														<fmt:formatNumber value="${fundingDetail.project_percent }"/>
														</span>
														<span class="BaseFundingInfo_successInfo__UrXp4"> % 달성</span>
															
													</div>
													<span
														class="Badge_container__9G9PS Badge_visible__3LNXv BaseFundingInfo_remainingDay__2ooL6"><span
														class="Badge_badge__ovUKI Badge_label__2Rft2 Badge_md__1Ck0w Badge_primary__tTdjx Badge_tertiary__3uYKh">
														<script type="text/javascript">
															var project_end_date = new Date("${fundingDetail.project_end_date}");
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
										</c:if>
										<c:if test="${!empty fundingDetail.project_coming_soon_date }">
											<div class="BaseComingSoonInfo_rateWrapper__OtNwL">
												<div class="BaseComingSoonInfo_rate__1elAG">
													<div class="BaseComingSoonInfo_infoWrapper__3Uo9E">
														<span class="BaseComingSoonInfo_achivementRate__oG6Vs">${fundingDetail.project_coming_soon_date }일</span><span class="BaseComingSoonInfo_successInfo__2sK3v"> 오픈예정</span>
													</div>
												</div>
											</div>
										</c:if>
									<div class="BaseFundingInfo_divider__3U_IP"></div>
									</div>
									<div class="CommonInfo_popBanner__1Y1Y_"></div>
									<div class="RewardCTA_container__1F4fy">
										<div class="RewardCTA_left__2uQx8">
											<div class="RewardCTA_buttonBox__dgJiQ">
												<button aria-label="찜하기 버튼" aria-pressed="true"
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
																<span class="RewardCTA_count__3Bg5y">${countWish }</span>
															</div></span></span>
												</button>
											</div>
										</div>
										<c:if test="${!empty fundingDetail.project_coming_soon_date }">
											<div class="ComingSoonCTA_right__3SKLL">
												<div class="ComingSoonCTA_buttonWrap__3uSl8">
													<button class="Button_button__2FuOU Button_primary__2mZni Button_contained__2SIAT Button_md__46Ai- Button_block__1-g8w ComingSoonCTA_button__awjmv" type="button" disabled="disabled" style="width: 406px; padding: 16.5px 15px;">
													<span><span class="Button_children__ilFun"><p>${fundingDetail.project_coming_soon_date }일 오픈 예정</p></span></span>
													</button>
												</div>
											</div>	
 										</c:if>
 										<c:if test="${empty fundingDetail.project_coming_soon_date }">
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
 										</c:if>
									</div>
									<section class="MakerInfo_container__123Tc">
										<section class="MakerInfoHeader_container__3ghbZ">
											<div class="MakerInfoHeader_profile__3WTfa">
												<div class="MakerInfoHeader_makerInfo__3f7XF">
													<a class="MakerInfoHeader_link__3S3R_"
														><div
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
												<!-- modal에 띄우고자하는 코드 -->
												<div id="test" class="modal">
													<form action="inquiryPro" method="post">
														<input type="hidden"  name="maker_idx" value="${maker_idx}">
														<h1 class="d-flex justify-content-center text-secondary">${fundingDetail.maker_name }에게 문의하기</h1>
														<hr>
														<div class="TextField_field__1E9vt">
															<h2><input id="inq_subject" name="inq_subject" type="text" placeholder="제목을 입력하세요" class="Input_input__2kAAL Input_md__3-eZ6" style="border: ; width: 433px;"></h2>
														</div>
														<div>
														<h3>문의 내용</h3>
														<textarea id="inq_content" name="inq_content" rows="10" cols="52" style="resize: none; text-align: left; font-size: 15px; border-color: blue; border: aqua;"></textarea>
														</div>		
														<hr>
														<div align="right">
															<a href='#' rel=""><button class="Button_button__2FuOU Button_primary__2mZni Button_sm__16X6h Button_startIcon__3p6wN" type="submit">문의하기</button></a>
														  	<a href="#" rel="modal:close"><button class="Button_button__2FuOU Button_tertiaryGrey__3gRf4 Button_sm__16X6h" type="button">닫기</button></a>    <!-- 닫기버튼 -->
													  	</div>
												  	</form>
												</div>
												<!-- href 속성값을 사용하여 modal을 띄워주는 링크 -->
												<p><a href="#test" rel="modal:open">
												<button class="Button_button__2FuOU Button_primary__2mZni Button_contained__2SIAT_2 Button_sm__16X6h Button_startIcon__3p6wN" 
													type="button" id="popButton">
													<span><svg viewBox="0 0 32 32" focusable="false"
															role="presentation"
															class="withIcon_icon__3VTbq Button_icon__t6yp6 MakerInfoHeader_icon__2uRNH"
															aria-hidden="true" style="width: 14px; height: 14px;">
															<path d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
															<span class="Button_children__ilFun">문의하기</span></span>
												</button>
												</a></p>
											</div>
										</section>
									</section>
									<c:if test="${empty fundingDetail.project_coming_soon_date }">
										<div class="CommonInfo_rewardsWrap__2dogH">
											<div class="Rewards_container__3UnkZ">
												<div class="Rewards_title__30Vv2">
													<p>리워드 선택</p>
													<div class="Rewards_period__Mo1m-">
														<p>진행기간</p>
														<p>${fundingDetail.project_start_date } ~ ${fundingDetail.project_end_date }</p>
													</div>
												</div>
													<div class="Rewards_listBox__182Ct">
														<div class="Rewards_list__VD-Af">
														<!-- 리워드 카드 -->
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
														</div>
													</div>
											</div>
											<div class="RewardCTA_container__1F4fy">
												<div class="RewardCTA_left__2uQx8">
													<div class="RewardCTA_buttonBox__dgJiQ">
														<button aria-label="찜하기 버튼" aria-pressed="true"
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
															<span class="RewardCTA_count__3Bg5y">${countWish }</span>
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
									</c:if>
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