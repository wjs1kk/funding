<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html lang="ko" class="scroll-top scroll-apex">

<head>
	<title>와디즈 리워드선택</title>
	
	<link rel="stylesheet" href="/resources/static/css/common.css?v=20230502">
	<link rel="stylesheet" href="/resources/static/css/wpurchase_reward.css?v=20230221">
	<link rel="stylesheet" href="https://static.wadiz.kr/reward/payments.d2c2c5fa.css">
	<link rel="stylesheet" href="https://static.wadiz.kr/reward/reward-product.b2b4157b.css">
	<link rel="stylesheet" href="resources/css/rewardSelect.css">
</head>

<body class="">
	<div id="page-container">
		<div class="black-bg-wrap" style="display: none;"></div>
		
		<jsp:include page="../inc/top.jsp"></jsp:include>

		<div id="newContainer">
			<div id="wPurchaseWrap">
				<div class="wpurchase-title">
					<h2>
						꿀이뚝뚝! 찐~수박과즙 팡팡! 첫 수확 고당도 스테비아 수박(책임보상)<span class="name"><em
							style="background-image: url(https://cdn.wadiz.kr/wwwwadiz/green001/2023/0429/20230429094227328_207915.jpg/wadiz/resize/600/format/jpg/quality/80)"></em>해마루파트너스</span>
					</h2>
				</div>
				<div class="wpurchase-wrap " style="">
					<div class="wpurchase-step">
						<ol>
							<li class="active"><em>리워드<br>선택
							</em></li>
							<li><em>결제 예약</em></li>
							<li><em>소문내기</em></li>
						</ol>
					</div>
					<form name="purchaseForm" id="purchaseForm" method="post">
						<input type="hidden" name="secureStateBagKey"
							value="MDQ5MWVhODMtMGMwYi00NWY1LWFiOGMtZWZmOWE0MjBiZWUxWm1JNE56UTBZbVF0TVRNNE5DMDBPV0l4TFRnek5UY3RZVFprT1dRd1pUYzRPR0pq">
						<input type="hidden" name="campaignId" value="207915"> <input
							type="hidden" name="fundingPrice">

						<div class="wpurchase-reward">
							<div class="top-area">
								<h3>
									<em>리워드 선택</em>
								</h3>
							</div>
							<!-- S : 서포터클럽 가입 -->
							<div id="supporter-club-subscribe-app"
								data-is-all-free-shipping-cost="true">
								<div role="button"
									class="FundingSupporterClubSubscriptionContainer_subscriptionButton__2HTma">
									5초 가입, 매달 쿠폰받고 참여하세요.
									<svg viewBox="0 0 40 40" focusable="false" role="presentation"
										class="withIcon_icon__3CJLi FundingSupporterClubSubscriptionContainer_chevron__1mWFS"
										aria-hidden="true">
										<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
								</div>
							</div>
							<div id="reward-product-app" data-campaign-id="207915"
								data-selected-reward-id="">
								<ul class="RewardProductList_container__2hIAB">
									<li class="RewardProductList_list__2oOvi"><section
											class="RewardProductItem_container__1wZBW">
											<label class="RewardProductItem_label__2t2Wd"
												for="checkbox-reward-product-440551"><div
													class="RewardProductItem_price__2oEJ1">
													<label for="checkbox-reward-product-440551"
														class="Checkbox_checkbox__2pNZT Checkbox_md__13m4z RewardProductItem_check__28u2o"><input
														data-reward-id="440551"
														id="checkbox-reward-product-440551" type="checkbox"
														class="Checkbox_input__3lmLh"><span
														class="Checkbox_icon__3D5fA" aria-hidden="true"><svg
																viewBox="0 0 16 2" focusable="false" role="presentation"
																class="withIcon_icon__3CJLi Checkbox_removeIcon__yNVvI"
																aria-hidden="true">
																<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg>
															<svg viewBox="0 0 48 48" focusable="false"
																role="presentation"
																class="withIcon_icon__3CJLi Checkbox_checkIcon__3zAHS"
																aria-hidden="true">
																<path
																	d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span><span
														class="Checkbox_content__3huvu"></span></label><span>26,900</span>&nbsp;원
												</div>
												<div class="RewardProductItem_content__Pw7qB">
													<div class="RewardProductItem_title__en2gj">
														[얼리버드] 스테이바 일반수박 7kg 이상(1EA)
														<div class="RewardProductItem_remain__XDQPL">
															<span class="RewardProductItem_limit__5TztV">제한수량
																200개</span><span class="RewardProductItem_stock__5qZys">164개
																남음</span>
														</div>
													</div>
													<div class="RewardProductItem_description__1Eenu">(한정수량)
														1~2인가족 추천 초특당도 프리미엄 수박을 드시고 싶으신 분들에게 추천~상온 후숙 후 냉장 보관해서
														드시면 더욱 맛있게 드실 수 있어요!</div>
												</div>
												<div class="RewardProductItem_delivery__3aef7">
													<div class="RewardProductDelivery_container__1VhfG">
														<div class="RewardProductDelivery_content__2MqBD">
															<i class="RewardProductDelivery_icon__31IE8"
																aria-hidden="true"></i><span>무료배송</span><span
																class="RewardProductDelivery_divide__36XQt">|</span><span>2023년
																05월&nbsp;</span><span>말 (21~말일) 리워드 제공 예정</span>
														</div>
													</div>
												</div></label>
											<hr
												class="Divider_divider__l7BCX Divider_horizontal__1S942 Divider_lightBG__2mucS Divider_spacing1__32SNF Divider_caption2__2nFxr RewardProductItem_divider__1MITY">
										</section></li>
									<li class="RewardProductList_list__2oOvi"><section
											class="RewardProductItem_container__1wZBW">
											<label class="RewardProductItem_label__2t2Wd"
												for="checkbox-reward-product-440552"><div
													class="RewardProductItem_price__2oEJ1">
													<label for="checkbox-reward-product-440552"
														class="Checkbox_checkbox__2pNZT Checkbox_md__13m4z RewardProductItem_check__28u2o"><input
														data-reward-id="440552"
														id="checkbox-reward-product-440552" type="checkbox"
														class="Checkbox_input__3lmLh"><span
														class="Checkbox_icon__3D5fA" aria-hidden="true"><svg
																viewBox="0 0 16 2" focusable="false" role="presentation"
																class="withIcon_icon__3CJLi Checkbox_removeIcon__yNVvI"
																aria-hidden="true">
																<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg>
															<svg viewBox="0 0 48 48" focusable="false"
																role="presentation"
																class="withIcon_icon__3CJLi Checkbox_checkIcon__3zAHS"
																aria-hidden="true">
																<path
																	d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span><span
														class="Checkbox_content__3huvu"></span></label><span>27,900</span>&nbsp;원
												</div>
												<div class="RewardProductItem_content__Pw7qB">
													<div class="RewardProductItem_title__en2gj">
														[얼리버드] 스테이바 일반수박 8kg 이상(1EA)
														<div class="RewardProductItem_remain__XDQPL">
															<span class="RewardProductItem_limit__5TztV">제한수량
																400개</span><span class="RewardProductItem_stock__5qZys">371개
																남음</span>
														</div>
													</div>
													<div class="RewardProductItem_description__1Eenu">(한정수량)
														2~4인가족 추천 초특당도 프리미엄 수박을 드시고 싶으신 분들에게 추천~상온 후숙 후 냉장 보관해서
														드시면 더욱 맛있게 드실 수 있어요!</div>
												</div>
												<div class="RewardProductItem_delivery__3aef7">
													<div class="RewardProductDelivery_container__1VhfG">
														<div class="RewardProductDelivery_content__2MqBD">
															<i class="RewardProductDelivery_icon__31IE8"
																aria-hidden="true"></i><span>무료배송</span><span
																class="RewardProductDelivery_divide__36XQt">|</span><span>2023년
																05월&nbsp;</span><span>말 (21~말일) 리워드 제공 예정</span>
														</div>
													</div>
												</div></label>
											<hr
												class="Divider_divider__l7BCX Divider_horizontal__1S942 Divider_lightBG__2mucS Divider_spacing1__32SNF Divider_caption2__2nFxr RewardProductItem_divider__1MITY">
										</section></li>
									<li class="RewardProductList_list__2oOvi"><section
											class="RewardProductItem_container__1wZBW">
											<label class="RewardProductItem_label__2t2Wd"
												for="checkbox-reward-product-440553"><div
													class="RewardProductItem_price__2oEJ1">
													<label for="checkbox-reward-product-440553"
														class="Checkbox_checkbox__2pNZT Checkbox_md__13m4z RewardProductItem_check__28u2o"><input
														data-reward-id="440553"
														id="checkbox-reward-product-440553" type="checkbox"
														class="Checkbox_input__3lmLh"><span
														class="Checkbox_icon__3D5fA" aria-hidden="true"><svg
																viewBox="0 0 16 2" focusable="false" role="presentation"
																class="withIcon_icon__3CJLi Checkbox_removeIcon__yNVvI"
																aria-hidden="true">
																<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg>
															<svg viewBox="0 0 48 48" focusable="false"
																role="presentation"
																class="withIcon_icon__3CJLi Checkbox_checkIcon__3zAHS"
																aria-hidden="true">
																<path
																	d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span><span
														class="Checkbox_content__3huvu"></span></label><span>28,900</span>&nbsp;원
												</div>
												<div class="RewardProductItem_content__Pw7qB">
													<div class="RewardProductItem_title__en2gj">
														[얼리버드] 스테이바 일반수박 9kg 이상(1EA)
														<div class="RewardProductItem_remain__XDQPL">
															<span class="RewardProductItem_limit__5TztV">제한수량
																200개</span><span class="RewardProductItem_stock__5qZys">143개
																남음</span>
														</div>
													</div>
													<div class="RewardProductItem_description__1Eenu">(한정수량)
														2~5인가족 추천 초특당도 프리미엄 수박을 드시고 싶으신 분들에게 추천~상온 후숙 후 냉장 보관해서
														드시면 더욱 맛있게 드실 수 있어요!</div>
												</div>
												<div class="RewardProductItem_delivery__3aef7">
													<div class="RewardProductDelivery_container__1VhfG">
														<div class="RewardProductDelivery_content__2MqBD">
															<i class="RewardProductDelivery_icon__31IE8"
																aria-hidden="true"></i><span>무료배송</span><span
																class="RewardProductDelivery_divide__36XQt">|</span><span>2023년
																05월&nbsp;</span><span>말 (21~말일) 리워드 제공 예정</span>
														</div>
													</div>
												</div></label>
											<hr
												class="Divider_divider__l7BCX Divider_horizontal__1S942 Divider_lightBG__2mucS Divider_spacing1__32SNF Divider_caption2__2nFxr RewardProductItem_divider__1MITY">
										</section></li>
									<li class="RewardProductList_list__2oOvi"><section
											class="RewardProductItem_container__1wZBW">
											<label class="RewardProductItem_label__2t2Wd"
												for="checkbox-reward-product-440554"><div
													class="RewardProductItem_price__2oEJ1">
													<label for="checkbox-reward-product-440554"
														class="Checkbox_checkbox__2pNZT Checkbox_md__13m4z RewardProductItem_check__28u2o"><input
														data-reward-id="440554"
														id="checkbox-reward-product-440554" type="checkbox"
														class="Checkbox_input__3lmLh"><span
														class="Checkbox_icon__3D5fA" aria-hidden="true"><svg
																viewBox="0 0 16 2" focusable="false" role="presentation"
																class="withIcon_icon__3CJLi Checkbox_removeIcon__yNVvI"
																aria-hidden="true">
																<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg>
															<svg viewBox="0 0 48 48" focusable="false"
																role="presentation"
																class="withIcon_icon__3CJLi Checkbox_checkIcon__3zAHS"
																aria-hidden="true">
																<path
																	d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span><span
														class="Checkbox_content__3huvu"></span></label><span>53,800</span>&nbsp;원
												</div>
												<div class="RewardProductItem_content__Pw7qB">
													<div class="RewardProductItem_title__en2gj">
														[얼리버드] 스테이바 일반수박 7kg+9kg 이상(2EA)
														<div class="RewardProductItem_remain__XDQPL">
															<span class="RewardProductItem_limit__5TztV">제한수량
																200개</span><span class="RewardProductItem_stock__5qZys">182개
																남음</span>
														</div>
													</div>
													<div class="RewardProductItem_description__1Eenu">(한정수량)
														수박매니아를 위한 특별구성 초특당도 프리미엄 수박을 드시고 싶으신 분들에게 추천~상온 후숙 후 냉장
														보관해서 드시면 더욱 맛있게 드실 수 있어요! 배송지를 다르게 보내고 싶으시다면 문의 남겨주세요!</div>
												</div>
												<div class="RewardProductItem_delivery__3aef7">
													<div class="RewardProductDelivery_container__1VhfG">
														<div class="RewardProductDelivery_content__2MqBD">
															<i class="RewardProductDelivery_icon__31IE8"
																aria-hidden="true"></i><span>무료배송</span><span
																class="RewardProductDelivery_divide__36XQt">|</span><span>2023년
																05월&nbsp;</span><span>말 (21~말일) 리워드 제공 예정</span>
														</div>
													</div>
												</div></label>
											<hr
												class="Divider_divider__l7BCX Divider_horizontal__1S942 Divider_lightBG__2mucS Divider_spacing1__32SNF Divider_caption2__2nFxr RewardProductItem_divider__1MITY">
										</section></li>
									<li class="RewardProductList_list__2oOvi"><section
											class="RewardProductItem_container__1wZBW">
											<label class="RewardProductItem_label__2t2Wd"
												for="checkbox-reward-product-440555"><div
													class="RewardProductItem_price__2oEJ1">
													<label for="checkbox-reward-product-440555"
														class="Checkbox_checkbox__2pNZT Checkbox_md__13m4z RewardProductItem_check__28u2o"><input
														data-reward-id="440555"
														id="checkbox-reward-product-440555" type="checkbox"
														class="Checkbox_input__3lmLh"><span
														class="Checkbox_icon__3D5fA" aria-hidden="true"><svg
																viewBox="0 0 16 2" focusable="false" role="presentation"
																class="withIcon_icon__3CJLi Checkbox_removeIcon__yNVvI"
																aria-hidden="true">
																<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg>
															<svg viewBox="0 0 48 48" focusable="false"
																role="presentation"
																class="withIcon_icon__3CJLi Checkbox_checkIcon__3zAHS"
																aria-hidden="true">
																<path
																	d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span><span
														class="Checkbox_content__3huvu"></span></label><span>3,000</span>&nbsp;원
												</div>
												<div class="RewardProductItem_content__Pw7qB">
													<div class="RewardProductItem_title__en2gj">
														도서/산간 추가배송비
														<div class="RewardProductItem_remain__XDQPL">
															<span class="RewardProductItem_limit__5TztV">제한수량
																100개</span><span class="RewardProductItem_stock__5qZys">98개
																남음</span>
														</div>
													</div>
													<div class="RewardProductItem_description__1Eenu">제주도외
														도서산간 추가배송비입니다.</div>
												</div>
												<div class="RewardProductItem_delivery__3aef7">
													<div class="RewardProductDelivery_container__1VhfG">
														<div class="RewardProductDelivery_content__2MqBD">
															<i class="RewardProductDelivery_icon__31IE8"
																aria-hidden="true"></i><span>2023년 05월&nbsp;</span><span>말
																(21~말일) 리워드 제공 예정</span>
														</div>
													</div>
												</div></label>
											<hr
												class="Divider_divider__l7BCX Divider_horizontal__1S942 Divider_lightBG__2mucS Divider_spacing1__32SNF Divider_caption2__2nFxr RewardProductItem_divider__1MITY">
										</section></li>
								</ul>
							</div>
							<!-- E : 서포터클럽 가입 -->
						</div>

						<div class="wpurchase-donation">
							<h3>
								<em>후원금 더하기 <span>(선택)</span></em>
							</h3>
							<div class="donation-wrap">
								<p class="sub-text">후원금을 더하여 참여할 수 있습니다. 추가 후원금을 입력하시겠습니까?</p>
								<p class="input-area">
									<input type="hidden" id="addDonation" name="addDonation"
										value="0">
								</p>
								<div class="wz inline-block input">
									<input type="text" id="addDonationTmp" name="addDonationTmp"
										class="wz input numOnly" maxlength="8" value="0">
								</div>
								원을 추가로 후원합니다.
								<p></p>
							</div>
						</div>

						<div class="wpurchase-viewyn">
							<h3>
								<em>공개여부 <span>(선택)</span></em>
							</h3>
							<div class="viewyn-wrap">
								<p class="sub-text">서포터 목록에 서포터 이름과 결제 금액이 공개됩니다. 조용히 참여하고
									싶으시다면, 비공개로 선택해 주세요.</p>
								<p class="notice-text">커뮤니티, 새소식 댓글 작성 시에는 비공개 여부와 상관없이 참여자
									표시가 노출됩니다.</p>
								<div class="inner-wrap">
									<p class="check-area">
										<label class="wz checkbox"> <input type="checkbox"
											id="dontShowNameYn" name="dontShowNameYn" value="N"><span
											class="nickview">이름 비공개</span>
										</label> <label class="wz checkbox"> <input type="checkbox"
											id="dontShowAmountYn" name="dontShowAmountYn" value="N"><span>금액
												비공개</span>
										</label>
									</p>
									<ul class="example">
										<li>
											<p class="title">이름/금액 공개 예시</p>
											<dl>
												<dt>
													<em
														style="background-image: url(/resources/static/img/sub/icon_account_pstype01.png)"></em>
												</dt>
												<dd>
													홍길동님<br>105,000원 참여하셨습니다.
												</dd>
											</dl>
										</li>
										<li>
											<p class="title">이름/금액 비공개 예시</p>
											<dl>
												<dt>
													<em
														style="background-image: url(/resources/static/img/common/img_blank.png)"></em>
												</dt>
												<dd>
													익명의 서포터님이<br>참여하셨습니다.
												</dd>
											</dl>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<input name="apid" type="hidden" value="">
					</form>
					<div class="btn-wrap">
						<p class="confirm">
							꿀이뚝뚝! 찐~수박과즙 팡팡! 첫 수확 고당도 스테비아 수박(책임보상)에 <em id="sumTotalNum">0</em>
							원을 참여합니다.
						</p>
						<button class="wz button primary" onclick="location.href='payment'">
							다음 단계로 <i class="icon chevron-right"></i>
						</button>
					</div>
				</div>
			</div>
		</div>


		<div id="authMailLypop" class="lypop-fixed" style="display: none;">
			<div class="popup-mint-basic">
				<a href="/web/campaign/detail/207915" class="btn-close"> <em></em>
				</a>
				<div class="popup-mint-text">
					<strong class="tit-popup">프로젝트에 참여하기 위한<br> 기본 회원 정보를
						확인해 주세요.
					</strong>
					<div style="padding: 20px;">- 이메일 인증 : 미인증</div>
				</div>
				<div class="btn-wrap">
					<a class="btn-pd-mint" href="/web/waccount/wAuth">기본 회원정보 변경</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>