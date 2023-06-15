<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html lang="ko" class="scroll-top scroll-apex">
<head>

<title>아이펀드 쿠폰존</title>


<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/css/vendor.6da506ac.chunk.css">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/common.css?7f3daecd">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/layout.css?ae2e25d2">
<script type="text/javascript"
	src="https://static.wadiz.kr/static/web/polyfill.js?e5427b54"></script>
<script type="text/javascript"
	src="https://static.wadiz.kr/static/web/wui.js?1d6e1712"></script>
<!-- <script type="text/javascript" src="https://static.wadiz.kr/static/web/vendor.js?22d0c2f9"></script>
 -->
<script type="text/javascript"
	src="https://static.wadiz.kr/static/web/sentry.c0d733eb.js"></script>
<script type="text/javascript"
	src="https://static.wadiz.kr/static/web/common.js?1b72740d"></script>
<!-- <script type="text/javascript" src="https://static.wadiz.kr/static/web/layout.js?09e78283"></script>
 -->




<link rel="stylesheet"
	href="https://static.wadiz.kr/main/main.163fdb36.css">


<link rel="stylesheet" type="text/css"
	href="https://cdn.wadiz.kr/resources/static/editor/4.0.15/froala_editor.pkgd.min.css?20221122">
<link rel="stylesheet" type="text/css"
	href="https://cdn.wadiz.kr/resources/static/editor/4.0.15/froala_custom.css?v=20221122">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/coupon-zone.ba4c0b7f.chunk.css">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/1.1866946d.chunk.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/main-page.0fe61c54.chunk.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/reward-main.2057e840.chunk.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/feed.dce1ce09.chunk.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/wishes.68d51567.chunk.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/my-wadiz.f4cbf5ff.chunk.css">
</head>
<body style="overflow: auto;">
	<div id="page-container">
		<main id="main-app">
			<jsp:include page="../inc/top.jsp"></jsp:include>
		
			<div class="web-header">
				<div class="web-header-large">
				</div>
			</div>
			<div class="MainWrapper_content__GZkTa">
				<section class="CouponDownloadPage_container__11FjV">
					<div class="CouponHeader_container__32sO_">
						<h2 class="CouponHeader_title__3c4F1">쿠폰</h2>
						<nav class="CouponHeader_nav__RB-oN CouponHeader_large__3awJs">
							<ul>
								<li><a class="CouponHeader_link__1-ZCz"
									href="coupon">나의 쿠폰<em></em></a></li>
								<li><a aria-current="page"
									class="CouponHeader_link__1-ZCz CouponHeader_active__343sL"
									href="couponzone">쿠폰존<em></em></a></li>
							</ul>
						</nav>
					</div>
					<div class="CouponWrapper_container__15SYM">
						<div class="CouponWrapper_wrapper__bZyG7"></div>
					</div>
					
					<c:forEach items="${coupon }" var="coupon">
					
					<div class="CouponWrapper_container__15SYM CouponDownloadPage_list__2oh3Q">
						<div class="CouponWrapper_wrapper__bZyG7">
							<div class="CouponDownloadList_container__3o78w">
								<div class="ListContainer_container__2W37J">
									<div class="CouponDownloadList_item__3KB38" style="height: 20%">
										<div class="CouponDownloadItem_container__1hk2c" >
											<div class="CouponDownloadItem_content__2MxtW">
												<dl>
													<dt class="BlindText_textHidden__ovQb4">카테고리</dt>
<!-- 													<dd class="CouponDownloadItem_type__oZK5g">스토어</dd> -->
													<dt class="BlindText_textHidden__ovQb4">쿠폰명</dt>
													<dd class="CouponDownloadItem_title__1G1Me" >
														${coupon.coupon_name }</dd>
													<dt class="BlindText_textHidden__ovQb4">할인 정보</dt>
													<dd class="CouponDownloadItem_amount__1riXI" style="margin: 14px 0 33px">
														${Math.round(coupon.coupon_percent * 100)}% 할인 쿠폰
													</dd>
													<dt class="BlindText_textHidden__ovQb4">사용 기간</dt>
													<dd>
														${coupon.coupon_end } 까지 사용 가능
													</dd>
												</dl>
												<div class="CouponDownloadItem_expand__2mKjH CouponDownloadItem_hidden__2_dqn">
													<div class="CouponInfoTable_table__3Keqy">
														<table>
															<tbody>
																<tr>
																	<th scope="row">발급기간</th>
																	<td>2023.06.04 23시 59분까지</td>
																</tr>
																<tr>
																	<th scope="row">사용조건</th>
																	<td>70,000원 이상 상품 구매 시</td>
																</tr>
																<tr>
																	<th scope="row">적용대상</th>
																	<td><p>
																			<a href="/web/store/collection/betterthannew"
																				target="_blank"
																				class="RewardCollectionLink_link__2CSYP">리뷰 있는
																				신상<svg viewBox="0 0 40 40" focusable="false"
																					role="presentation"
																					class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
																					aria-hidden="true">
																					<path
																						d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
																			</a>
																		</p></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
											<button onclick="location.href='coupon_down?coupon_idx=${coupon.coupon_idx}'"class="Button_button__2FuOU CouponDownloadItem_button__3fO54" type="button">
												<span>
													<span class="Button_children__ilFun">
														<svg viewBox="0 0 48 48" focusable="false" role="presentation"
															class="withIcon_icon__3VTbq CouponDownloadItem_icon__2Zlxg" aria-hidden="true">
														<path d="M40.8 43.2H7.2v-2.4h33.6v2.4zm-5.28-22.08L25.2 31.44V4.8h-2.4v26.64L12.48 21.12 10.8 22.8 24 36l13.2-13.2-1.68-1.68z"></path></svg>
														<span class="CouponDownloadItem_label__1HUCF">쿠폰 받기</span></span></span>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
					<div class="CouponHelpMessage_container__20OPs">
						<div
							class="CouponWrapper_container__15SYM CouponHelpMessage_couponWrapper__13hbp">
							<div class="CouponWrapper_wrapper__bZyG7">
								<strong class="CouponHelpMessage_title__Bs2c_">쿠폰 이용안내</strong>
								<ul>
									<li>본 쿠폰은 다운(쿠폰 받기) 후, 사용할 수 있습니다.</li>
									<li>쿠폰은 펀딩・프리오더・스토어・투자 서비스 이용 시 사용할 수 있습니다.</li>
									<li>쿠폰은 다른 쿠폰과 중복하여 사용할 수 없습니다.</li>
									<li>쿠폰의 구체적인 사용 조건은 발행되는 쿠폰 별로 다를 수 있습니다.</li>
									<li>쿠폰 이용에 대한 자세한 안내는 나의 쿠폰 하단 서비스 별 쿠폰 이용 안내를 참고해주세요.</li>
								</ul>
							</div>
						</div>
					</div>
				</section>
			</div>
		</main>
	</div>
</body>
</html>