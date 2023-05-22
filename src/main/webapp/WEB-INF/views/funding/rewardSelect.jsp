<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ko" class="scroll-top scroll-apex">

<head>	
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?97a6eedb">
<link rel="stylesheet" href="/resources/static/css/common.css?v=20230502">
<link rel="stylesheet" href="/resources/static/css/wpurchase_reward.css?v=20230221">
<link rel="stylesheet" href="https://static.wadiz.kr/reward/payments.d2c2c5fa.css">
<link rel="stylesheet" href="https://static.wadiz.kr/reward/reward-product.b2b4157b.css">
<link rel="stylesheet" href="resources/css/rewardSelect.css">

<script src="resources/js/jquery-3.6.4.js"></script>

</head>
<body>
	<div id="page-container">

		<div class="black-bg-wrap" style="display: none;"></div>

		<!-- top.jsp -->
		<jsp:include page="../inc/top.jsp"></jsp:include>

		<form id="forwardForm" method="get">
			<input type="hidden" id="returnURL" name="returnURL">
		</form>
		<input type="hidden" id="sessionLoginCheck" value="true">

		<div id="newContainer">
			<div id="wPurchaseWrap">
				<div class="wpurchase-title">
					<h2>
						꿀이뚝뚝! 찐~수박과즙 팡팡! 첫 수확 고당도 스테비아 수박(책임보상)<span class="name"><em
							style="background-image: url(https://cdn.wadiz.kr/wwwwadiz/green001/2023/0429/20230429094227328_207915.jpg/wadiz/resize/600/format/jpg/quality/80)"></em>해마루파트너스</span>
					</h2>
				</div>
				<div class="wpurchase-wrap ">
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
							value="ZmUzNzQ2ZTEtNjcyOS00YzY3LTkzYmItNWQ3NGE2YjY2Y2UxWVdJMVpXTXhZakV0WVdVMk5pMDBPVEJpTFRrMU1ETXRNR05rWmpVMk5qQm1OelZo">
						<input type="hidden" name="campaignId" value="207915"> <input
							type="hidden" name="fundingPrice">

						<div class="wpurchase-reward">
							<div class="top-area">
								<h3>
									<em>리워드 선택</em>
								</h3>
							</div>
							
							<div id="reward-product-app" data-campaign-id="207915"
								data-selected-reward-id="">
								<ul class="RewardProductList_container__2hIAB">
								<c:forEach items="${selectReward }" var="selectReward">
									<li class="RewardProductList_list__2oOvi"><section
											class="RewardProductItem_container__1wZBW">
											<label class="RewardProductItem_label__2t2Wd" for="checkbox-reward-product-440551">
												<div class="RewardProductItem_price__2oEJ1">
													<label for="checkbox-reward-product-440551"
														class="Checkbox_checkbox__2pNZT Checkbox_md__13m4z RewardProductItem_check__28u2o">
														<c:choose>
															<c:when test="${param.select eq selectReward.reward_idx}">
																<input id="${selectReward.reward_idx }" type="checkbox" class="Checkbox_input__3lmLh" checked="checked">
															</c:when>
															<c:otherwise>
																<input id="${selectReward.reward_idx }" type="checkbox" class="Checkbox_input__3lmLh">
															</c:otherwise>
														</c:choose>
														
														
														<span class="Checkbox_icon__3D5fA" aria-hidden="true">
														<svg viewBox="0 0 16 2" focusable="false" role="presentation"
																class="withIcon_icon__3CJLi Checkbox_removeIcon__yNVvI"
																aria-hidden="true">
																<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg>
															<svg viewBox="0 0 48 48" focusable="false"
																role="presentation"
																class="withIcon_icon__3CJLi Checkbox_checkIcon__3zAHS"
																aria-hidden="true">
																<path
																	d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span><span
														class="Checkbox_content__3huvu"></span></label><span>${selectReward.reward_amount }</span>&nbsp;원
												</div>
												<div class="RewardProductItem_content__Pw7qB">
													<div class="RewardProductItem_title__en2gj">
														${selectReward.reward_name }
														<div class="RewardProductItem_remain__XDQPL">
															<span class="RewardProductItem_limit__5TztV">제한수량
																<fmt:formatNumber value="${selectReward.reward_quantity}" type="Number"/>개</span><span class="RewardProductItem_stock__5qZys">
																	<fmt:formatNumber value="${selectReward.reward_quantity - selectReward.reward_sell}" type="Number"/>개
																남음</span>
														</div>
													</div>
													<div class="RewardProductItem_description__1Eenu">(한정수량)
														${selectReward.reward_content }</div>
												</div>
												<div class="RewardProductItem_delivery__3aef7">
													<div class="RewardProductDelivery_container__1VhfG">
														<div class="RewardProductDelivery_content__2MqBD">
															<i class="RewardProductDelivery_icon__31IE8"
																aria-hidden="true"></i>
																<span>
																	<c:choose>
																		<c:when test="${selectReward.reward_delivery_fee eq '0'}">
																			무료배송
																		</c:when>
																		<c:otherwise>
																			${selectReward.reward_delivery_fee} 원
																		</c:otherwise>
																	</c:choose>
																</span><span
																class="RewardProductDelivery_divide__36XQt">|</span><span>${selectReward.reward_delivery_date } 리워드 제공 예정</span>
														</div>
													</div>
												</div></label>
											<hr
												class="Divider_divider__l7BCX Divider_horizontal__1S942 Divider_lightBG__2mucS Divider_spacing1__32SNF Divider_caption2__2nFxr RewardProductItem_divider__1MITY">
										</section></li>
								</c:forEach>
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
						<button class="wz button primary" onclick="purchaseNextStep();">
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

		<!-- footer.jsp -->
		<jsp:include page="../inc/footer.jsp"></jsp:include>

	</div>

</body>
</html>