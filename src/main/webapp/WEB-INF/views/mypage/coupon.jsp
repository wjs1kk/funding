<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="ko" class="">
<head>

<title>아이펀드 쿠폰</title>

<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/main/main.c1266dc7.css">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/main/css/coupon-zone.2b9d3401.chunk.css">

</head>
<body>
	<div id="page-container">

		<main id="main-app">
		<jsp:include page="../inc/mypage_top.jsp"></jsp:include>
			<div class="MainWrapper_content__GZkTa">
			
				<section class="MyCouponPage_container__16vr_">
					<div class="CouponHeader_container__32sO_">
						<h2 class="CouponHeader_title__3c4F1">쿠폰</h2>
						<nav class="CouponHeader_nav__RB-oN CouponHeader_large__3awJs">
							<ul>
								<li><a aria-current="page" class="CouponHeader_link__1-ZCz CouponHeader_active__343sL"
									href="/web/wmypage/mybenefit/coupon/my">나의 쿠폰<em></em></a></li>
								<li><a class="CouponHeader_link__1-ZCz" href="couponzone">쿠폰존<em></em></a></li>
							</ul>
						</nav>
					</div>
					<div class="CouponWrapper_container__15SYM">
						<div class="CouponWrapper_wrapper__bZyG7">
							<div class="MyCouponPage_header__3Dpto">
								<strong class="MyCouponPage_title__xxx6i">현재 사용가능 쿠폰 <span></span></strong>
							</div>
						</div>
					</div>
					<div class="CouponWrapper_container__15SYM MyCouponPage_list__3KJEz">
						<div class="CouponWrapper_wrapper__bZyG7">
							<div class="MyCouponList_container__3vNxk">
								<div class="MyCouponList_header__2Z9XN">
									<div class="MyCouponList_right__2KDgp">
									</div>
								</div>
								
								<c:forEach items="${myCoupon }" var="myCoupon" varStatus="status">
								
								<div class="ListContainer_container__2W37J">
									<div class="MyCouponList_item__39RZo">
										<div class="CouponItem_container__UnsjV">
											<div class="StoreCouponItem_container__vV51o">
												<dl>
													<dt class="BlindText_textHidden__ovQb4">할인 정보</dt>
													<dd class="StoreCouponItem_conditional__Sq7iw">
														<span class="StoreCouponItem_text__1hXx1">
														${Math.round(myCoupon.coupon_percent * 100)}% 할인 쿠폰</span>
													</dd>
													<dt class="BlindText_textHidden__ovQb4">쿠폰명</dt>
													<dd class="StoreCouponItem_title__8KAlp">${myCoupon.coupon_name }</dd>
													<dt class="BlindText_textHidden__ovQb4">쿠폰 상세 정보</dt>
													<dd>
														<div class="CouponInfoTable_table__3Keqy">
															<table>
																<tbody>
																	<tr>
																		<th scope="row">유효기간</th>
																		<td>${myCoupon.coupon_end }</td>
																	</tr>
<!-- 																	<tr> -->
<!-- 																		<th scope="row">사용조건</th> -->
<!-- 																		<td>396,000원 이상 상품 구매 시</td> -->
<!-- 																	</tr> -->
																	<tr>
																	</tr>
																</tbody>
															</table>
														</div>
													</dd>
												</dl>
											</div>
										</div>
									</div>
								</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="CouponHelpMessage_container__20OPs">
						<div class="CouponWrapper_container__15SYM CouponHelpMessage_couponWrapper__13hbp">
							<div class="CouponWrapper_wrapper__bZyG7">
								<strong class="CouponHelpMessage_title__Bs2c_">펀딩・프리오더 쿠폰 이용안내</strong>
								<ul>
									<li>쿠폰은 펀딩・프리오더 서비스 이용 시 사용할 수 있습니다.</li>
									<li>쿠폰은 다른 쿠폰과 중복하여 사용할 수 없습니다.</li>
									<li>쿠폰의 구체적인 사용 조건은 발행되는 쿠폰 별로 다를 수 있습니다.</li>
									<li>프로젝트가 실패하거나 결제 예약 취소를 한 경우, 쿠폰은 반환됩니다. 단, 반환 시점에 쿠폰
										유효기간이 만료된 경우 자동 소멸됩니다</li>
									<li>결제 실패인 경우에는 쿠폰이 반환되지않고, 소멸됩니다.</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="CouponHelpMessage_container__20OPs">
						<div class="CouponWrapper_container__15SYM CouponHelpMessage_couponWrapper__13hbp">
							<div class="CouponWrapper_wrapper__bZyG7">
								<strong class="CouponHelpMessage_title__Bs2c_">스토어 쿠폰 이용안내</strong>
								<ul>
									<li>스토어 서비스 이용 시 사용할 수 있습니다.</li>
									<li>쿠폰은 다른 쿠폰과 중복하여 사용할 수 없습니다.</li>
									<li>쿠폰의 구체적인 사용 조건은 발행되는 쿠폰 별로 다를 수 있습니다.</li>
									<li>쿠폰은 배송비를 제외한 주문 상품 금액을 기준으로 적용되며, 쿠폰 금액보다 주문 상품 금액이 낮은
										경우 사용할 수 없습니다.</li>
									<li>결제 취소(주문 취소, 환불 완료 등) 시 사용한 쿠폰은 자동 복구됩니다. 단, 복구 시점에 쿠폰
										유효 기간이 만료된 경우 자동 소멸됩니다.</li>
									<li>사용 완료, 기간 만료, 소멸된 쿠폰은 지난 쿠폰 내역에서 확인할 수 있습니다.</li>
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