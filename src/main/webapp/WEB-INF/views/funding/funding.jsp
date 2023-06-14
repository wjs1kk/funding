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
	href="https://static.wadiz.kr/main/css/reward-main.a1d033e7.chunk.css">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/common.css?6b20ab93">
<script src="resources/js/jquery-3.6.4.js"></script>
<script>
	// 카테고리, 필터링 기능
	$(function() {
		$("#selectbox").on("change", function() {
			location.href = 'funding?category=${param.category}&order=${param.order}' + '&selectbox=' + $("#selectbox").val();
		});
	});
	
 	document.addEventListener("DOMContentLoaded", function() {
 		var item = document.getElementsByClassName("OrderSelectDesktop_sortItem__12TKi");
 		
 		var categoryItem = document.getElementsByClassName("ImageTab_tab__3siCY");
 		
 		var category = "";
 		var order = "";
 		
 		for(let categories of categoryItem) {
 			categories.addEventListener("click", function() {
 				location.href = "funding?category=" + $(this).text() + "&order=" + "${param.order}" + '&selectbox=${param.selectbox}';
//  				$(this).addClass('ImageTab_active__BGdXu');
 			});
 		}
 		
 		for(let items of item) {
 			items.addEventListener("click", function() {
				location.href = "funding?category=" + "${param.category}" + "&order=" + $(this).text() + '&selectbox=${param.selectbox}';
// 				$(this).addClass('OrderSelectDesktop_active__YTP2K')
			});
		}
	});
</script>
<script type="text/javascript">
	function detail(project_idx){
		location.href="detail?num="+project_idx;	
	}
</script>
</head>
<script>
	// 슬라이드 3초간 유지 후 다음 화면으로 넘어감
	$(document).ready(function () {
		$(".slick-slide").not(".slick-active").hide(); //화면 로딩 후 첫번째 div를 제외한 나머지 숨김
		
		setInterval(next, 3000);
		
	});
	
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
<body style="overflow: auto;">
	<div id="page-container">

		<main id="main-app">
			<!-- top.jsp -->
			<jsp:include page="../inc/top.jsp"></jsp:include>

			<div class="MainWrapper_content__GZkTa">
				<div class="KeyVisualBanner_container__37DZf">
					<div class="slick-slider slick-initialized" dir="ltr">
						<div class="slick-list">
							<div data-index="0" class="slick-slide" tabindex="-1"
								aria-hidden="true" style="outline: none; width: 1900px;">
								<div>
									<div>
										<a
											href="https://www.wadiz.kr/web/campaign/detail/206117?_refer_section_st=RMK_3"
											class="VisualSlide_container__2NDvY" data-promo-acid="-1"
											data-promo-id="https://www.wadiz.kr/web/wreward/main"
											data-promo-position="RMK_3" data-promo-acid-force="true"
											style="background-image: url(&quot;https://cdn.wadiz.kr/ft/images/green001/2023/0510/20230510105159087_6537.jpg/wadiz/resize/2800/format/jpg/quality/85/&quot;);"
											data-gtm-vis-first-on-screen-11319722_2047="22282"
											data-gtm-vis-first-on-screen-11319722_2115="22282"
											data-gtm-vis-first-on-screen-11319722_2184="22282">
											<div class="VisualSlide_wrap__32Lj4">
												<div class="VisualSlide_text__2SIqN">
													<p class="VisualSlide_title__3USGy">
														배우와 사진 촬영 기회까지<br>베스트셀러 뮤지컬 루쓰
													</p>
													<p class="VisualSlide_badge__3nqfs">선예&amp;이지훈 등 실력파 배우
														총 출연</p>
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
											href="https://www.wadiz.kr/web/campaign/detail/207154?acid=10030861&amp;_refer_section_st=RMK_1"
											class="VisualSlide_container__2NDvY"
											data-promo-acid="10030861"
											data-promo-id="https://www.wadiz.kr/web/wreward/main"
											data-promo-name="드글드글 블랙헤드 하루 30초면 싹 녹여요"
											data-promo-position="RMK_1" data-promo-acid-force="true"
											style="background-image: url(&quot;https://cdn1.wadiz.kr/images/20230511/1683797463720.jpg/wadiz/optimize&quot;);"
											data-gtm-vis-first-on-screen-11319722_2047="16199"
											data-gtm-vis-first-on-screen-11319722_2115="16199"
											data-gtm-vis-first-on-screen-11319722_2184="16199">
											<div class="VisualSlide_wrap__32Lj4">
												<div class="VisualSlide_text__2SIqN">
													<p class="VisualSlide_title__3USGy">
														드글드글 블랙헤드<br>하루 30초면 싹 녹여요
													</p>
													<p class="VisualSlide_badge__3nqfs">왕모공 유발 딱딱한 피지! 사르르
														녹여주세요</p>
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
											href="https://www.wadiz.kr/web/wreward/collection/2023foodweek?order=recommend&amp;endYn=N&amp;keyword=&amp;_refer_section_st=RMK_2"
											class="VisualSlide_container__2NDvY" data-promo-acid="-1"
											data-promo-id="https://www.wadiz.kr/web/wreward/main"
											data-promo-name="와디즈食 푸드위크에 초대합니다"
											data-promo-position="RMK_2" data-promo-acid-force="true"
											style="background-image: url(&quot;https://cdn.wadiz.kr/ft/images/green001/2023/0509/20230509100246674_7175.jpg/wadiz/resize/2800/format/jpg/quality/85/&quot;);"
											data-gtm-vis-first-on-screen-11319722_2047="19240"
											data-gtm-vis-first-on-screen-11319722_2115="19241"
											data-gtm-vis-first-on-screen-11319722_2184="19241"
											data-gtm-vis-recent-on-screen-11319722_2047="103097"
											data-gtm-vis-total-visible-time-11319722_2047="2000"
											data-gtm-vis-recent-on-screen-11319722_2115="103097"
											data-gtm-vis-total-visible-time-11319722_2115="2000"
											data-gtm-vis-recent-on-screen-11319722_2184="103098"
											data-gtm-vis-total-visible-time-11319722_2184="2000"
											data-gtm-vis-has-fired-11319722_2047="1"
											data-gtm-vis-has-fired-11319722_2115="1"
											data-gtm-vis-has-fired-11319722_2184="1">
											<div class="VisualSlide_wrap__32Lj4">
												<div class="VisualSlide_text__2SIqN">
													<p class="VisualSlide_title__3USGy">와디즈食 푸드위크에 초대합니다</p>
													<p class="VisualSlide_badge__3nqfs">먹잘알을 위한 푸드 프로젝트</p>
												</div>
											</div>
										</a>
									</div>
								</div>
							</div>
							<div data-index="3"
								class="slick-slide slick-active slick-current"
								aria-hidden="false" style="outline: none; width: 1900px;">
								<div>
									<div>
										<a
											href="https://www.wadiz.kr/web/campaign/detail/204135?_refer_section_st=RMK_0"
											class="VisualSlide_container__2NDvY" data-promo-acid="-1"
											data-promo-id="https://www.wadiz.kr/web/wreward/main"
											data-promo-name="전세계 유일 포르쉐 공식튜닝 테크아트"
											data-promo-position="RMK_0" data-promo-acid-force="true"
											data-gtm-vis-first-on-screen-11319722_2047="2553"
											data-gtm-vis-first-on-screen-11319722_2115="2553"
											data-gtm-vis-first-on-screen-11319722_2184="2553"
											style="background-image: url(&quot;https://cdn.wadiz.kr/ft/images/green001/2023/0511/20230511145748150_6537.jpg/wadiz/resize/2800/format/jpg/quality/85/&quot;);">
											<div class="VisualSlide_wrap__32Lj4">
												<div class="VisualSlide_text__2SIqN">
													<p class="VisualSlide_title__3USGy">전세계 유일 포르쉐 공식튜닝
														테크아트</p>
													<p class="VisualSlide_badge__3nqfs">국내 어디서도 볼수없는 공식
														튜닝서비스 와디즈 단독공개</p>
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
				<script>
					var url = document.location.href
					if(url.contains("${param.category}")) {
						$(".ImageTab_tab__3siCY").addClass("ImageTab_active__BGdXu");
					}
				</script>
				<div class="Main_categoryMargin__1RWGF"></div>
				<div class="CategoryTab_container__1XTA0 undefined snbSwiper"
					style="top: 0px;">
					<div class="TabsMobile_tabRoot__1KBCT">
						<ul class="TabsMobile_tabs__39ewt TabsMobile_hideScrollbar__3v5I5">
							<li data-index="00"><button
									class="ImageTab_tab__3siCY ImageTab_first__2C8Ry ${param.category eq '전체'? 'ImageTab_active__BGdXu' : '' }">
									<div class="ImageTab_thumbnailContainer__3Polb">
										<div class="ImageTab_thumbnailPlaceholder__3mluI">
											<div class="ImageTab_thumbnail__3mZWA"></div>
										</div>
									</div>
									<div class="ImageTab_labelContainer__2apP3">
										<span class="ImageTab_label__SvWW9 text">전체</span>
									</div>
								</button></li>
							<c:forEach items="${categoryList }" var="category">
								<li data-index="${category.category_cd }"><button
										class="ImageTab_tab__3siCY ${param.category eq category.category_name? 'ImageTab_active__BGdXu' : '' }">
										<div class="ImageTab_thumbnailContainer__3Polb">
											<div class="ImageTab_thumbnailPlaceholder__3mluI">
												<div class="ImageTab_thumbnail__3mZWA"
													style="background-image: url(&quot;https://cdn3.wadiz.kr/category/icon/category_${category.category_image}&quot;);"></div>
											</div>
										</div>
										<div class="ImageTab_labelContainer__2apP3">
											<span class="ImageTab_label__SvWW9 text">${category.category_name }</span>
										</div>
									</button></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!-- ------------------------------------------------ 카테고리 분류 끝--------------------------------------------------------------- -->
				<div class="Main_categoryMargin__1RWGF"></div>
				<div class="Main_container__2oIVn">
					<div class="Main_category__3sabq">
						<p class="Main_categoryName__3YilF">
							<c:choose>
								<c:when test="${param.category eq ''}">
								전체
							</c:when>
								<c:otherwise>
								${param.category }
							</c:otherwise>
							</c:choose>
						</p>
						<div class="Main_filterWrap__2l__0">
							<select class="OrderSelect_selectBox__2hBjk" id="selectbox">
								<option value="0" ${selectbox == '0'? 'selected="selected"': ''}>진행중</option>
								<option value="1" ${selectbox == '1'? 'selected="selected"': ''}>종료된</option>
							</select>
							<ul id="itemList" class="OrderSelectDesktop_sortContainer__1YLsr">
								<li id="popular" class="OrderSelectDesktop_sortItem__12TKi ${param.order eq '인기순'? 'OrderSelectDesktop_active__YTP2K' : '' }">인기순</li>
								<li id="amount" class="OrderSelectDesktop_sortItem__12TKi ${param.order eq '모집금액순'? 'OrderSelectDesktop_active__YTP2K' : '' }">모집금액순</li>
								<li id="closing" class="OrderSelectDesktop_sortItem__12TKi ${param.order eq '마감임박순'? 'OrderSelectDesktop_active__YTP2K' : '' }">마감임박순</li>
								<li id="recent" class="OrderSelectDesktop_sortItem__12TKi ${param.order eq '최신순'? 'OrderSelectDesktop_active__YTP2K' : '' }">최신순</li>
							</ul>
						</div>
					</div>
					<div class="TableLayout_container__1_Ap4 Main_table__UHAm-"
						style="grid-template-columns: repeat(3, calc(33.3333% - 16px)); gap: 24px;">

						<!-- 						funding project 목록 -->
						<c:forEach items="${projectDetailList }" var="projectDetailList">
							<div class="PreorderMainCard_root__1-vcs"
								style="height: 100%; position: relative;">
								<a class="PreorderMainCard_item__2FrO0"
									href="detail?num=${projectDetailList.project_idx }">
									<div class="PreorderMainCard_thumbnailWrap__NRDb4">
										<div aria-hidden="true"
											class="CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
											style="background-image: url(resources/images/project_thumbnail/${projectDetailList.project_thumbnail};); border-radius: 8px;">
										</div>
										<c:if test="${projectDetailList.project_plan eq '2' or projectDetailList.project_plan eq '3'}">
											<div class="PreorderMainCard_ad__2IzVz">AD</div>
										</c:if>
									</div>
										<!-- 										광고유무 표시 -->
									<div class="PreorderMainCard_contentContainer__1OmhF">
										<div class="PreorderMainCard_header__R39X1">
											<div class="PreorderMainCard_headerLeft__2nwa1">
												<p class="PreorderMainCard_participants__JDp58">
													<fmt:formatNumber
														value="${(projectDetailList.project_detail_amount/projectDetailList.project_target)}"
														type="percent" />
													달성
												</p>
												<p class="PreorderMainCard_amount__3UOXm">
													<fmt:formatNumber
														value="${projectDetailList.project_detail_amount }" />
													원
												</p>
											</div>
											<div class="PreorderMainCard_headerRight__3rRNi">
												<c:if test="${selectbox eq 1 }">
													<p><span id="done" class="">종료</span>∙<span id="success" class="">성공</span></p>
												</c:if>
												<c:if test="${selectbox eq 0 }">
													<span class="Badge_container__9G9PS Badge_visible__3LNXv"><span
													class="Badge_badge__ovUKI Badge_label__2Rft2 Badge_sm__1OBNp Badge_primary__tTdjx Badge_tertiary__3uYKh">
														<script type="text/javascript">
													var project_end_date = new Date("${projectDetailList.project_end_date}");
													var now = new Date();
													var diff = project_end_date - now;
													var diffDay = Math.ceil(diff/(1000*60*60*24));
													document.write(diffDay)
												</script> 일 남음
												</span></span>
												</c:if>
											</div>
										</div>
										<div class="PreorderMainCard_title__XlTJk">
											${projectDetailList.project_title }</div>
										<div class="PreorderMainCard_subText__1LB5l">
											<span class="PreorderMainCard_makerName__2Ufj1">${projectDetailList.maker_name }</span>
										</div>
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
								<div class="PreorderMainCard_wish__15rgO">
									<button type="button"
										class="WishButton_button__1ZqbG WishButton_smallArea__sDV77 WishButton_interaction__2FCel"
										aria-label="찜하기 버튼" aria-pressed="false"
										data-ga-category="공통_상품카드_프리오더" data-ga-action="찜하기_추가"
										data-ga-label="">
										<svg viewBox="0 0 32 32" focusable="false" role="presentation"
											class="withIcon_icon__3VTbq" aria-hidden="true">
										<path
												d="M22.16 4h-.007a8.142 8.142 0 0 0-6.145 2.79A8.198 8.198 0 0 0 9.76 3.998a7.36 7.36 0 0 0-7.359 7.446c0 5.116 4.64 9.276 11.6 15.596l2 1.76 2-1.76c6.96-6.32 11.6-10.48 11.6-15.6v-.08A7.36 7.36 0 0 0 22.241 4h-.085z"></path></svg>
									</button>
								</div>
							</div>
						</c:forEach>
						<!-- 						funding project 목록 끝 -->
					</div>
				</div>
			</div>

			<!-- footer.jsp -->
			<jsp:include page="../inc/footer.jsp"></jsp:include>
		</main>
	</div>
</body>
</html>