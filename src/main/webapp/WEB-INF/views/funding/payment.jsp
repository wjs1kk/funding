<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://static.wadiz.kr/reward/payments.d2c2c5fa.css">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/css/vendor.5f64dbd5.chunk.css">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/common.css?6b20ab93">
<link rel="stylesheet" href="resources/css/payment_wpurchase_reward.css">
<link rel="stylesheet" href="resources/css/payment_style.css">
<script src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>

<script type="text/javascript">
	function pointInputOnchange(myPoint) {
		if($("#pointInput").val() > myPoint){
			$("#pointInput").val(myPoint)
			alert("현재 사용가능한 포인트는 " + myPoint + "P 입니다.")
		}
		$(".TitleValuePrice_danger__3Sy33").eq(1).text($("#pointInput").val()+"원")
	}

</script>
</head>
<body>
	<div id="page-container">
		<input type="text" id="test">

		<jsp:include page="../inc/top.jsp"></jsp:include>

		<form id="forwardForm" method="get">
			<input type="hidden" id="returnURL" name="returnURL">
		</form>
		<input type="hidden" id="sessionLoginCheck" value="true">

		<div id="newContainer">
			<div id="wPurchaseWrap" class="funding-purchase">
				<div class="wpurchase-title">
					<a class="btn-move-to-story" href="/web/campaign/detail/207915"><i
						class="wadizicon wa-chevron-left"></i><span>스토리로 돌아가기</span></a>
					<h2>
						꿀이뚝뚝! 찐~수박과즙 팡팡! 첫 수확 고당도 스테비아 수박(책임보상)<span class="name"><em
							style="background-image: url(https://cdn.wadiz.kr/wwwwadiz/green001/2023/0429/20230429094227328_207915.jpg/wadiz/resize/600/format/jpg/quality/80)"></em>해마루파트너스</span>
					</h2>
				</div>
				<div class="wpurchase-wrap">
					<div class="wpurchase-step">
						<ol>
							<li><em>리워드<br>선택
							</em></li>
							<li class="active"><em>결제 예약</em></li>
							<li><em>소문내기</em></li>
						</ol>
					</div>
					<form name="purchaseForm" id="purchaseForm" method="post">


						<div class="wpurchase-order">
							<div class="order-list" data-choiced-legnth="1">
								<c:forEach var="rewardList" items="${rewardList }">
									<ul>
										<li>
											<p class="title">${rewardList.reward_name }</p>
											<p class="text">
											${rewardList.reward_option }
											<br>
											${rewardList.reward_content }
											</p>
											<div class="info">
	
												<p class="sum">
													<em>수량 : ${rewardList.rewardQuantity }</em>${rewardList.reward_amount * rewardList.rewardQuantity}원
												</p>
											</div>
										</li>
										<input type="hidden" name="choiceRewards[0].rewardId"
											value="440551">
										<input type="hidden" name="choiceRewards[0].rewardName"
											value="(한정수량) 1~2인가족 추천 초특당도 프리미엄 수박을 드시고 싶으신 분들에게 추천~상온 후숙 후 냉장 보관해서 드시면 더욱 맛있게 드실 수 있어요!">
										<input type="hidden" name="choiceRewards[0].qty" value="1">
										<input type="hidden" name="choiceRewards[0].sumAmount"
											value="26900">
										<input type="hidden" name="choiceRewards[0].memo" value="">
	
	
									</ul>
								</c:forEach>
							</div>
							<div class="order-addinfo">
								<dl>
									<dt>추가 후원금</dt>
									<dd>0원</dd>
								</dl>
								<dl>
									<dt>배송비</dt>
									<dd>${map.reward_delivery_fee}원</dd>
								</dl>
								<div class="point">
									<dl id="coupon-field" class="disabled">
										<dt>
											쿠폰 사용
											<button class="wz tooltip mini" type="button">
												<span class="tooltip-message" role="tooltip"> 쿠폰은 추가
													후원금, 배송비가 제외된 리워드 금액을 기준으로 사용 가능 여부가 결정됩니다. <a class="link"
													href="http://bit.ly/2HpqtWW" target="_blank"> 자세히 보기 </a>
												</span>

											</button>

										</dt>
										<dd>
											<p class="text">사용가능한 쿠폰이 없습니다.</p>
											<label class="wz dense outline dropdown"><span></span>
												<select id="couponSelect"></select> </label>
										</dd>
									</dl>
									<dl>
										<dt>포인트 사용</dt>
										<dd>
											<label class="wz checkbox"> <input type="checkbox"
												id="ckptAll"><span>모두 사용 (보유 포인트 <span
													id="usablePoint">${myPoint }</span>P)
											</span>
											</label> <input type="text" id="pointInput" onchange="pointInputOnchange(${myPoint })"
												class="numOnly pointInput" maxlength="8">
										</dd>
									</dl>
									<input type="hidden" id="limitPoint" value="0">


								</div>
							</div>
							<div id="reward-funding-price-app"
								data-discount-shipping-charge="0" data-funding-price="26900"
								data-add-donation="0" data-shipping-charge="0">
								<h4 class="BasePrice_title__24p94">결제 예약 금액</h4>
								<div class="DefaultPrice_container__4dYox">
									<div class="DefaultPrice_title__3Qs3N">
										<label
											class="Radio_radio__1pq_K Radio_md__2BnQ9 DefaultPrice_radioButton__2HF50"><input
											type="radio" name="price" readonly="" value="DEFAULT"
											checked=""><span class="Radio_icon__284m3"></span><span
											class="Radio_label__ZA48P"></span></label>일반 금액
									</div>
									<div class="TitleValuePrice_container__2tb72">
										<dl class="">
											<dt>리워드 금액</dt>
											<dd>
												<span><em class="TitleValuePrice_money__2q48W">${map.reward_amount }</em>원</span>
											</dd>
										</dl>
									</div>
									<div class="TitleValuePrice_container__2tb72">
										<dl class="">
											<dt>쿠폰 차감금액</dt>
											<dd>
												<span class="TitleValuePrice_danger__3Sy33">0 원</span>
											</dd>
										</dl>
									</div>
									<div class="TitleValuePrice_container__2tb72">
										<dl class="">
											<dt>포인트 차감금액</dt>
											<dd>
												<span class="TitleValuePrice_danger__3Sy33">0 원</span>
											</dd>
										</dl>
									</div>
									<div class="TitleValuePrice_container__2tb72">
										<dl class="">
											<dt>추가 후원금</dt>
											<dd>
												<span><em class="TitleValuePrice_money__2q48W">0</em>원</span>
											</dd>
										</dl>
									</div>
									<div class="TitleValuePrice_container__2tb72">
										<dl class="">
											<dt>배송비</dt>
											<dd>
												<span><em class="TitleValuePrice_money__2q48W">${map.reward_delivery_fee }</em>원</span>
											</dd>
										</dl>
									</div>
									<div class="TitleValuePrice_container__2tb72">
										<hr class="TitleValuePrice_divide__-8plx">
										<dl class="TitleValuePrice_total__2cGge">
											<dt>최종 결제 금액</dt>
											<dd>
												<span><em class="">${map.reward_amount + map.reward_delivery_fee}원</em></span>
											</dd>
										</dl>
									</div>
								</div>
								<div class="SupporterClubPrice_containerWrapper__3ooRN">
									<div class="SupporterClubPrice_container__1RZFe">
										<div class="SupporterClubPrice_title__NwKg8">
											<label
												class="Radio_radio__1pq_K Radio_md__2BnQ9 SupporterClubPrice_radioButton__2vny7"><input
												type="radio" name="price" readonly="" value="SUPPORTER_CLUB"><span
												class="Radio_icon__284m3"></span><span
												class="Radio_label__ZA48P"></span></label><span
												class="SupporterClubPrice_text__3tPq8"><span>서포터클럽
													특별 금액</span></span>
										</div>
										<div class="TitleValuePrice_container__2tb72">
											<dl class="TitleValuePrice_total__2cGge">
												<dt>최종 결제 금액</dt>
												<dd>
													<span
														class="Badge_container__19IzX Badge_visible__1CxnI BasePrice_badge__7avU4"><span
														class="Badge_badge__1Bw14 Badge_label__V6Uzi Badge_sm__3Ydku Badge_primary__1kvzJ Badge_tertiary__18A-E">3,000원
															할인</span></span><span><em class="TitleValuePrice_money__2q48W">23,900</em>원</span>
												</dd>
											</dl>
										</div>
									</div>
									<div class="BasePrice_promotion__2OH5G">
										<em>모든 배송비 할인 + 쿠폰,</em><span>얼리버드 부럽지 않은 할인 혜택!</span>
										<svg viewBox="0 0 40 40" focusable="false" role="presentation"
											class="withIcon_icon__3CJLi" aria-hidden="true">
											<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
									</div>
								</div>
								<input type="hidden" id="totalPrice" value="26900">
							</div>
						</div>
						<div class="wpurchase-delivery-wrap">

							<div class="wpurchase-supporter-info">
								<h3>
									<em>서포터</em>
								</h3>
								<div class="wpurchase-input-box">
									<dl>
										<dt>이름</dt>
										<dd>김동욱</dd>
									</dl>
									<dl>
										<dt>이메일</dt>
										<dd>kdw940822@naver.com</dd>
									</dl>
									<dl class="supporter-phone-number">
										<dt>휴대폰 번호</dt>
										<dd>01065072203</dd>
									</dl>
									<div class="wpurchase-terms">
										<p class="check-area">
											<label class="wz checkbox"> <input type="checkbox"
												id="cktm04" class="checkcbox" checked="checked"> <span>(필수)
													프로젝트 진행에 대한 새소식 및 결제 관련 안내를 받습니다.</span>
											</label>
										</p>
									</div>
									<p id="timeError" class="error-text">
										시간이 종료되었습니다.<br>다시 요청해주세요.
									</p>
									<p id="phoneNumError" class="error-text">유효한 전화번호를 입력해주세요.</p>
									<p id="confirmError" class="error-text">
										인증번호가 맞지 않습니다.<br>다시 요청해주세요.
									</p>
									<input type="hidden" id="confirmId" value="">
									<div id="supporterCertBtn" class="btn-wrap">
										<button type="button" onclick="confirmSmsCode()">확인</button>
									</div>
								</div>
							</div>
							<div class="wpurchase-delivery">
								<h3>
									<em>리워드 배송지</em>
								</h3>
								<button type="button" class="show-list">
									<i class="wadizicon wa-expand-more" aria-hidden="true"></i>최근 배송지 보기
								</button>
								<div class="delivery-list"></div>
								<div class="deliver-new active">
									<dl>
										<dt>
											<label class="wz radio"> <input type="radio"
												id="rddvNew" name="delivery" checked="checked"> <span></span>
											</label>
										</dt>
										<dd>
											<label for="rddvNew">
												<p>
													<strong>새로입력</strong>
												</p>
											</label>
										</dd>
									</dl>
									<div class="input-area">
										<p class="title">이름</p>
										<input type="text" id="newPresenteeName">
										<p class="title">휴대폰 번호</p>
										<input type="tel" id="newContactNumber" maxlength="13">
										<em class="error-message" id="errorPhoneNum">휴대폰 번호를 정확히
											입력해주세요.</em>
										<p class="title">주소</p>
										<button type="button" onclick="findPostCode()">우편번호
											검색</button>
										<p class="text" id="newAddress"></p>
										<input type="text" maxlength="96" id="newAddressDetails"
											placeholder="상세주소"> <input type="hidden"
											id="newZipCode">
									</div>
								</div>
								<div class="delivery-shippingMemo">
									<div class="wpurchase-safe-number">
										<i class="wz tooltip mini" type="button"> <span
											class="tooltip-message" role="tooltip"> 와디즈에서는 개인정보
												보흐를 위해 실제 연락처 정보가 유출되지 않도록 일회용 안심번호를 발급하여 사용하고 있습니다.<br>
											<br>
												<ul>
													<li>안심번호는 배송 시작 시에 발급되고 배송 완료 후에 자동으로 해제됩니다.</li>
													<li>메이커와 택배사는 서포터와 리워드 수령인의 실제 연락처 정보를 알 수 없으며, 발급받은
														일회용 안심번호로만 연락드리게 됩니다.</li>
												</ul>
										</span>
										</i> <span>와디즈에서는 서포터님의 개인정보 보호를 위해 안심번호를 사용해요.</span>
									</div>
<!-- 									<div class="input-area"> -->
<!-- 										<p class="title">배송 시 요청사항 (선택)</p> -->
<!-- 										<input type="text" id="shippingMemo" name="shippingMemo" -->
<!-- 											maxlength="50" placeholder="ex) 부재시 경비실에 보관해주세요."> -->
<!-- 										<p class="subtext">해당 요청사항은 배송에 관련된 내용만 적어주세요.</p> -->
<!-- 									</div> -->
								</div>
							</div>
						</div>
						<div class="payment-info-container">
							<!-- 결제 정보 (간편결제 / 직접입력) 앱 -->
							<div id="reward-simplepay-app" data-type="purchase"
								data-is-donation-category="false"
								data-recent-payment-type="sbcredit" data-is-preorder-type="true"
								data-is-available-installment="false"
								style="margin-bottom: 0px;">
								<h3 class="SimplePayContainer_title__1AD2x">결제 정보</h3>
								<div class="SimplePayPurchase_simplePayPurchase__3IMEe"
									data-selected-pay-type="sbcredit">
									<div class="SimplePayPurchase_payType__277Y0">
										<div class="SimplePayPurchase_radioContainer__3LKI_">
											<label
												class="Radio_radio__1pq_K Radio_md__2BnQ9 Radio_labeled__mDaw_ SimplePayPurchase_radio__3vJtq"><input
												type="radio" value="sbcredit" checked=""><span
												class="Radio_icon__284m3"></span><span
												class="Radio_label__ZA48P"><div
														class="SimplePayPurchase_radioLabel__2-EE1">
														<svg viewBox="0 0 40 40" focusable="false"
															role="presentation"
															class="withIcon_icon__3CJLi SimplePayPurchase_icon__2f9jv"
															aria-hidden="true">
															<path
																d="M38.32 26.87v-13h-1.88a1.73 1.73 0 0 0-1.73 1.59A6.82 6.82 0 0 0 23.26 20a6.67 6.67 0 0 0 2.45 5.61 8 8 0 0 0 9.74.25 1.56 1.56 0 0 0 1.47 1l1.4.01zm-7.49-2.39a3.88 3.88 0 0 1-3.72-4 3.88 3.88 0 0 1 3.72-4 3.88 3.88 0 0 1 3.72 4 3.88 3.88 0 0 1-3.72 4zM19.77 13.86L17.14 22l-2.65-8.1H11.9a1.73 1.73 0 0 0-1.65 1.2L8 22l-2.63-8.1H1.68L6 26.87h3.7l2.87-8.35 2.86 8.35h3.7l4.33-13-3.69-.01z"></path></svg>
														<span>와디즈 간편결제</span>
													</div></span></label><span
												class="SimplePayPurchase_badge__3NIVz SimplePayPurchase_simplePayBadge__1Px25">가장
												빠른 결제 예약</span>
										</div>
										<div
											class="SimplePayCard_simplecard__1bVno SimplePayCard_purchase__2GiS0 SimplePayCard_noInfo__UZVmq">
											<div class="SimplePayCard_unregisted___0bUq">
												<div class="SimplePayCard_addCard__yGCMH">
													<svg viewBox="0 0 32 32" focusable="false"
														role="presentation"
														class="withIcon_icon__3CJLi SimplePayCard_addIcon__2u85G"
														aria-hidden="true">
														<path
															d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
													<span class="SimplePayCard_title__2wkPB">간편 결제 카드 등록</span><span
														class="SimplePayCard_description__13HJh">카드 등록하고,
														빠르게 결제 예약하세요!</span>
												</div>
												<div class="SimplePayCard_notice__gpsgQ">
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3CJLi withIcon_inline__2-oD7"
														aria-hidden="true">
														<path fill="none" d="M0 0h40v40H0z"></path>
														<path
															d="M20 39a19 19 0 1 1 19-19 19.06 19.06 0 0 1-19 19zm0-36a17 17 0 1 0 17 17A17 17 0 0 0 20 3z"></path>
														<path
															d="M20 26a1.8 1.8 0 1 0 0 3.6 1.8 1.8 0 1 0 0-3.6zm-1.04-15.83h2.08v13h-2.08z"></path></svg>
													<em>와디즈에서 카드번호를 저장하지 않습니다!</em>
													<p>카드사에서 제공하는 암호화된 정보만을 저장하기 때문에 안심하셔도 됩니다.</p>
												</div>
											</div>
											<div class="SimplePayCard_registed__EtapQ">
												<div class="SimplePayCard_creditCard__ytBmr">
													<span class="SimplePayCard_cardName__1d4sO">카드</span>
													<button type="button"
														class="SimplePayCard_editButton__2PlF7">변경</button>
													<div class="SimplePayCard_cardNumber__b42bv"></div>
													<span class="SimplePayCard_createdAt__1NOc7">간편 결제
														등록일<span>YYYY. MM. DD</span>
													</span>
												</div>
												<div class="SimplePayCard_notice__gpsgQ">
													<em>할부는 직접 입력으로만 이용 가능합니다.</em>
												</div>
											</div>
										</div>
									</div>
									<div class="SimplePayPurchase_payType__277Y0">
										<div class="SimplePayPurchase_radioContainer__3LKI_">
											<label
												class="Radio_radio__1pq_K Radio_md__2BnQ9 Radio_labeled__mDaw_ SimplePayPurchase_radio__3vJtq"><input
												type="radio" name="radio" value="dbcredit"><span
												class="Radio_icon__284m3"></span><span
												class="Radio_label__ZA48P">직접입력</span></label><span
												class="Badge_container__19IzX Badge_visible__1CxnI SimplePayPurchase_badge__3NIVz"><span
												class="Badge_badge__1Bw14 Badge_label__V6Uzi Badge_md__25oLh Badge_secondary__7JSin Badge_circular__wPMjb Badge_tertiary__18A-E">할부
													가능</span></span>
										</div>
									</div>
									<div class="SimplePayPurchase_payType__277Y0">
										<div class="SimplePayPurchase_radioContainer__3LKI_">
											<label
												class="Radio_radio__1pq_K Radio_md__2BnQ9 Radio_labeled__mDaw_ SimplePayPurchase_radio__3vJtq"><input
												type="radio" name="radio" disabled="" value="npay"><span
												class="Radio_icon__284m3"></span><span
												class="Radio_label__ZA48P">네이버페이</span></label><span
												class="Badge_container__19IzX Badge_visible__1CxnI SimplePayPurchase_badge__3NIVz"><span
												class="Badge_badge__1Bw14 Badge_label__V6Uzi Badge_md__25oLh Badge_primary__1kvzJ Badge_circular__wPMjb Badge_tertiary__18A-E">1%
													적립</span></span>
										</div>
										<span class="SimplePayPurchase_preorderInfo__2UJKD">프리오더
											프로젝트는 네이버페이를 이용할 수 없어요.</span>
									</div>
								</div>
								<input type="hidden" name="has-simplepay-info" value="false">
							</div>
							<!-- 결제 예약시 유의사항 -->
							<div id="wpurchaseReserveNotice" class="wpurchase-notice">
								<p class="title">결제 예약시 유의사항</p>
								<ul>
									<li>결제실행일에 결제자 귀책사유(한도초과, 이용정지 등)로 인하여 결제가 실패할 수 있으니,
										결제수단이 유효한지 한번 확인하세요.</li>
									<li>1차 결제 실패 시 실패일로부터 3 영업일 동안 재 결제를 실행합니다.</li>
									<li>결제 예약 이후, 결제 정보를 변경하려면 마이페이지 &gt; 참여 내역 상세에서 결제 정보를
										변경해주세요.</li>
								</ul>
							</div>
						</div>
					</form>
					<!-- 약관 동의란 -->
					<script>
						$(document).ready(function() {
							var checkedAll = document.getElementById("#acceptAllCheckBox");
							var btnSubmit = document.getElementById("#btn-submit");
							
							$("#acceptAllCheckBox").click(function() {
								if($("#acceptAllCheckBox").is(":checked")) {
									$("input[name=check1]").prop("checked", true);
// 									btnSubmit.disabled = true;	
								}
								else {
									$("input[name=check1]").prop("checked", false);
// 									btnSubmit.disabled = false;
								}
							});
							
							$("input[name=check1]").click(function() {
								var total = $("input[name=check1]").length;
								var checked = $("input[name=check1]:checked").length;
								
								if(total != checked) {
									$("#acceptAllCheckBox").prop("checked", false);
								}
								else {
									$("#acceptAllCheckBox").prop("checked", true);
								}
							});
						});
					</script>
					<div class="wpurchase-terms wpurchase-terms-section">
						<h3>
							<em>약관 동의</em>
						</h3>
						<div class="terms-notice-box">
<!-- 							<label class="wz checkbox circular doing-all-agree"> <input -->
<!-- 								id="acceptAllCheckBox" class="notice-confirm-checkbox" -->
<!-- 								type="checkbox" name="check1" value="Y" autocomplete="off" -->
<!-- 								onchange="acceptAllChanged(this)"> <span>전체 동의하기</span> -->
<!-- 							</label> -->
							<label class="wz checkbox circular doing-all-agree"> <input
								id="acceptAllCheckBox" class="notice-confirm-checkbox"
								type="checkbox" name="" value="Y" autocomplete="off"
								> <span>전체 동의하기</span>
							</label>
							<div id="eachTermsNoticeWrap">
								<div class="term-checkbox-wrap">
<!-- 									<label class="wz checkbox circular"> <input -->
<!-- 										id="personalInfoAgreementForThirdPartiesCheckBox" -->
<!-- 										class="notice-confirm-checkbox" type="checkbox" name="check1" -->
<!-- 										value="Y" autocomplete="off" onchange="eachTermsChanged()"> -->
									<label class="wz checkbox circular"> <input
										id="personalInfoAgreementForThirdPartiesCheckBox"
										class="notice-confirm-checkbox" type="checkbox" name="check1"
										value="Y" autocomplete="off">
										<span>개인정보 제3자 제공 동의</span>
									</label> <span class="show-term"
										onclick="showLyPop('personalInfoAgreementForThirdParties');">보기</span>
									<div id="personalInfoAgreementForThirdPartiesLypop"
										class="agree-popup" style="display: none;">
										<div class="agree-popup-header">
											<h4>개인정보 제3자 제공 동의</h4>
										</div>
										<div class="agree-popup-body">
											<p>
												'펀딩하기・구매예약하기'를 통한 결제 및 리워드 전달 서비스를 제공하기 위해, 이용자의 사전 동의 아래
												제3자(프로젝트 메이커)에게 제공합니다.<br> 메이커에게 전달되는 개인 정보는 기재된 목적 달성
												후 파기에 대한 책임이 메이커에게 있으며, 파기하지 않아 생기는 문제에 대한 법적 책임은 메이커에게
												있습니다.<br> 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부 시 서비스 이용이
												제한됩니다. <br>
												<br>
											</p>
											<p class="bold">개인정보 제3자 제공 내역</p>
											<table class="">
												<colgroup>
													<col width="30%">
													<col width="70%">
												</colgroup>
												<tbody>
													<tr>
														<th>제공받는자</th>
														<td class="bold">해마루파트너스</td>
													</tr>
													<tr>
														<th>목적</th>
														<td class="bold">프로젝트 참여 정보 확인 및 발송, 리워드 발송과 관련된 공지 및
															민원처리</td>
													</tr>
													<tr>
														<th>항목</th>
														<td>서포터 정보(이름, 이메일, 휴대폰 번호), 수취인 정보(이름, 휴대폰 번호, 주소,
															배송 시 요청사항)</td>
													</tr>
													<tr>
														<th>제공받는 자의 보유 및 이용 기간</th>
														<td class="bold">프로젝트 종료 후 1년</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div class="agree-popup-footer">
											<button type="button" class="wz button less primary"
												onclick="closeAgreePopup('personalInfoAgreementForThirdParties');">확인
											</button>
										</div>
									</div>
								</div>
								<div class="term-checkbox-wrap">
<!-- 									<label class="wz checkbox circular"> <input -->
<!-- 										id="AcceptanceOfLiabilityCheckBox" -->
<!-- 										class="notice-confirm-checkbox" type="checkbox" name="check1" -->
<!-- 										value="Y" autocomplete="off" onchange="eachTermsChanged()"> -->
									<label class="wz checkbox circular"> <input
										id="AcceptanceOfLiabilityCheckBox"
										class="notice-confirm-checkbox" type="checkbox" name="check1"
										value="Y" autocomplete="off">
										<span>책임 규정에 대한 동의</span>
									</label> <span class="show-term"
										onclick="showLyPop('AcceptanceOfLiability');">보기</span>
									<div id="AcceptanceOfLiabilityLypop" class="agree-popup"
										style="display: none;">
										<div class="agree-popup-header">
											<h4>책임 규정에 대한 동의</h4>
										</div>
										<div class="agree-popup-body">
											<p>와디즈는 플랫폼을 제공하는 중개자로 펀딩하기・예약구매하기를 받는 당사자가 아닙니다. 보상품 제공
												등에 관한 지연, 제품의 하자 등으로 인한 일체의 법적책임은 펀딩하기・예약구매하기를 받는 프로젝트 개설자가
												부담합니다. 하지만, 와디즈는 프로젝트 진행자와 후원자간의 원활한 의사소통을 위해 최선의 노력을 다하고
												있습니다.</p>
										</div>
										<div class="agree-popup-footer">
											<button type="button" class="wz button less primary"
												onclick="closeAgreePopup('AcceptanceOfLiability');">확인
											</button>
										</div>
									</div>
								</div>
								<div
									class="term-checkbox-wrap electronicFinancialTransactionWrap"
									style="display: none;">
									<label class="wz checkbox circular"></label> <span
										class="show-term"
										onclick="showLyPop('electronicFinancialTransaction');">보기</span>
									<div id="electronicFinancialTransactionLypop"
										class="agree-popup" style="display: none;">
										<div class="agree-popup-header">
											<h4>전자금융거래 이용약관</h4>
										</div>
										<div class="agree-popup-body">
											<article>
												<h1>전자금융거래 이용약관</h1>
												<p>와디즈(주)가 제공하는 전자금융거래서비스의 이용에 필요한 사항을 규정합니다.</p>
												<div class="update">
													<h5>업데이트 노트</h5>
													<ul>
														<li>본 이용약관은 2021년 1월 12일부터 시행됩니다.</li>
														<li>시행 2021. 7. 1</li>
													</ul>
												</div>
												<ol class="table">
													<li><a href="#제1장-총칙">제1장 총칙</a></li>
													<li><a href="#제2장-전자지급결제대행-서비스">제2장 전자지급결제대행 서비스</a></li>
													<li><a href="#제3장-결제대금예치서비스">제3장 결제대금예치서비스</a></li>
													<li><a href="#제4장-선불전자지급수단의-발행-및-관리">제4장 선불전자지급수단의
															발행 및 관리</a></li>
												</ol>
												<hr>
												<h2 id="제1장-총칙">제1장 총칙</h2>
												<h3>제1조 (목적)</h3>
												<p>본 약관은 와디즈 주식회사(이하 "회사"라 합니다)가 제공하는 전자지급결제대행서비스,
													결제대금예치서비스 및 선불전자지급수단의 발행 및 관리서비스(이하 "전자금융거래서비스"라 합니다)를
													"회원"이 이용함에 있어, "회사"와 "회원" 간 권리, 의무 및 "회원"의 서비스 이용절차 등에 관한
													사항을 규정하는 것을 그 목적으로 합니다.</p>
												<h3>제2조 (정의)</h3>
												<ol>
													<li>본 약관에서 정한 용어의 정의는 아래와 같습니다.
														<ol>
															<li>"전자금융거래"라 함은 "회사"가 "전자적 장치"를 통하여 전자금융업무를 제공하고,
																"회원"이 "회사"의 종사자와 직접 대면하거나 의사소통을 하지 아니하고 자동화된 방식으로 이를
																이용하는 거래를 말합니다.</li>
															<li>"전자지급거래"라 함은 자금을 주는 자가 "회사"로 하여금 전자지급수단을 이용하여
																자금을 받는 자에게 자금을 이동하게 하는 "전자금융거래"를 말합니다.</li>
															<li>"전자적 장치"라 함은 "전자금융거래"정보를 전자적 방법으로 전송하거나 처리하는 데
																이용되는 장치로서 현금자동지급기, 자동입출금기, 지급용단말기, 컴퓨터, 전화기 그 밖에 전자적
																방법으로 정보를 전송하거나 처리하는 장치를 말합니다.</li>
															<li>"접근매체"라 함은 "전자금융거래"에 있어서 "거래지시"를 하거나 이용자 및 거래내용의
																진실성과 정확성을 확보하기 위하여 사용되는 수단 또는 정보로서 "전자금융거래서비스"를 이용하기 위하여
																"회사"에 등록된 아이디 및 비밀번호, 기타 "회사"가 지정한 수단을 말합니다.</li>
															<li>"아이디"란 "회원"의 식별과 서비스 이용을 위하여 "회원"이 설정하고 "회사"가
																승인한 숫자와 문자의 조합을 말합니다.</li>
															<li>"비밀번호"라 함은 "회원"의 동일성 식별과 "회원" 정보의 보호를 위하여 "회원"이
																설정하고 "회사"가 승인한 숫자와 문자의 조합을 말합니다.</li>
															<li>"회원"이라 함은 본 약관에 동의하고 본 약관에 따라 "회사"가 제공하는
																"전자금융거래서비스"를 이용하는 자를 말합니다.</li>
															<li>"거래지시"라 함은 "회원"이 본 약관에 따라 "회사"에게 "전자금융거래"의 처리를
																지시하는 것을 말합니다.</li>
															<li>"오류"라 함은 "회원"의 고의 또는 과실 없이 "전자금융거래"가 본 약관 또는
																"회원"의 "거래지시"에 따라 이행되지 아니한 경우를 말합니다.</li>
															<li>“사이트”라 함은 회사가 운영하는 와디즈 사이트(www.wadiz.kr)를 의미합니다.</li>
														</ol>
													</li>
													<li>본 조 및 본 약관의 다른 조항에서 정의한 것을 제외하고는 전자금융거래법 등 관련 법령에
														정한 바에 따릅니다.</li>
												</ol>
												<h3>제3조 (약관의 명시 및 변경)</h3>
												<ol>
													<li>"회사"는 "회원"이 "전자금융거래"를 하기 전에 본 약관을 사이트에 게시하고 본 약관의
														중요한 내용을 확인할 수 있도록 합니다.</li>
													<li>"회사"는 "회원"의 요청이 있는 경우 전자문서의 전송(전자우편을 이용한 전송을
														포함합니다)의 방식에 의하여 본 약관의 사본을 "회원"에게 교부합니다.</li>
													<li>"회사"가 본 약관을 변경하는 때에는 그 시행일 1월 전에 변경되는 약관을 금융거래정보
														입력화면 또는 회사가 운영하는 사이트에 게시함으로써 "회사"에게 공지합니다. 다만, 법령의 개정으로
														인하여 긴급하게 약관을 변경한 때에는 변경된 약관을 서비스 이용 초기화면 등에 1개월 이상 게시하고
														"회사"에게 사후 통지합니다.</li>
													<li>이용자는 변경에 동의하지 아니한 경우 제3항의 고지나 통지를 받은 날로부터 30일 이내에
														계약을 해지할 수 있으며, 계약해지의 의사표시를 하지 아니한 경우에는 변경에 동의한 것으로 봅니다.</li>
												</ol>
												<h3>제4조 (거래내용의 확인)</h3>
												<ol>
													<li>"회사"는 인터넷사이트 등에 조회 화면을 통하여 "회원"의 거래내용("회원"의 "오류정정
														요구사실 및 처리결과에 관한 사항"을 포함합니다)을 확인할 수 있도록 합니다. 단, 전자적 장치의 운영
														장애 또는 그 밖의 사유로 거래내용을 확인하게 할 수 없는 때에는 즉시 회사의 인터넷사이트에 그 사유를
														알리고, 그 사유가 종료된 때부터 이용자가 거래내용을 확인할 수 있도록 합니다.</li>
													<li>“회원”은 “회사”에게 거래내용에 관한 서면의 교부를 요청할 수 있습니다.</li>
													<li>"회사"는 제2항에 따른 "회원"의 거래내용 서면교부 요청을 받은 경우 2주 이내에
														전자문서의 전송(전자우편을 이용한 전송을 포함합니다), 모사전송, 우편 또는 직접 교부의 방법으로
														거래내용에 관한 서면을 해당 이용자에게 교부합니다. 단, 회사가 전자적 장치의 운영장애, 그 밖의 이유로
														거래내용에 관한 서면을 교부할 수 없는 때에는 즉시 "회원"에게 전자문서 전송(전자우편을 이용한 전송을
														포함합니다)의 방법으로 그러한 사유를 알려야 하며, 전자적 장치의 운영장애 등의 사유로 거래내용을 제공할
														수 없는 기간은 본항의 거래내용에 관한 서면의 교부기간에 산입하지 아니합니다.</li>
													<li>제1항의 대상이 되는 거래내용 중 대상기간이 5년인 것은 다음 각호와 같습니다.
														<ol>
															<li>거래계좌의 명칭 또는 번호</li>
															<li>전자금융거래의 종류 및 금액</li>
															<li>전자금융거래상대방을 나타내는 정보</li>
															<li>전자금융거래일시</li>
															<li>"전자적 장치"의 종류 및 "전자적 장치"를 식별할 수 있는 정보</li>
															<li>"회사"가 "전자금융거래"의 대가로 받은 수수료</li>
															<li>"회원"의 출금 동의에 관한 사항</li>
															<li>해당 "전자금융거래"와 관련한 "전자적 장치"의 접속기록</li>
															<li>"전자금융거래"의 신청 및 조건의 변경에 관한 사항</li>
															<li>건당 거래금액이 1만원을 초과하는 전자금융거래에 관한 기록</li>
														</ol>
													</li>
													<li>제1항의 대상이 되는 거래내용 중 대상기간이 1년인 것은 다음 각호와 같습니다.
														<ol>
															<li>전자지급수단 이용과 관련된 거래승인에 관한 기록</li>
															<li>"회원"의 오류정정 요구사실 및 처리결과에 관한 사항</li>
															<li>기타 금융위원회가 고시로 정한 사항</li>
															<li>건당 거래금액이 1만원 이하인 소액 전자금융거래에 관한 기록</li>
														</ol>
													</li>
													<li>“회원”이 제2항에서 정한 서면교부를 요청하고자 할 경우 다음의 주소 및 전화번호로 요청할
														수 있습니다.
														<ul>
															<li>주소 : 경기도 성남시 분당구 판교로 242 A동 4층</li>
															<li>이메일주소 : info@wadiz.kr</li>
															<li>전화번호 : 1661 - 9056</li>
														</ul>
													</li>
												</ol>
												<h3>제5조 ("거래지시"의 철회 등)</h3>
												<p>"회원"이 "회사"의 "전자금융거래서비스"를 이용하여 전자지급거래를 한 경우, "회원"은 지급의
													효력이 발생하기 전까지 본 약관에서 정한 바에 따라 제4조 제5항에 기재된 연락처로 전자문서의
													전송(전자우편을 이용한 전송을 포함합니다) 또는 사이트 내 철회에 의한 방법으로 "거래지시"를 철회할 수
													있습니다. 단, 각 서비스 별 "거래지시" 철회의 효력 발생시기는 본 약관 제15조, 제20조 및
													제25조에서 정한 바에 따릅니다.</p>
												<h3>제6조 ("오류"의 정정 등 )</h3>
												<ol>
													<li>"회원"은 "전자금융거래서비스"를 이용함에 있어 "오류"가 있음을 안 때에는 "회사"에
														대해 그 정정을 요구할 수 있으며, "회사"는 "회원"의 정정 신청이 있는 경우 이를 조사하여 "오류"가
														있는 경우 정정 절차를 진행하고 정정요구를 받은 날로부터 2주 이내에 그 결과를 "회원"에게 알려
														드립니다.</li>
													<li>"회사"는 스스로 "전자금융거래"에 "오류"가 있음을 안 때에도 이를 즉시 조사하여 처리한
														후 그 결과를 2주 이내에 문서, 전화 또는 전자우편으로 "회원"에게 알려 드립니다.</li>
												</ol>
												<h3>제7조 ("전자금융거래" 기록의 생성 및 보존)</h3>
												<ol>
													<li>"회사"는 "회원" 이용한 전자금융거래의 내용을 추적, 검색하거나 그 내용에 오류가 발생한
														경우에 이를 확인하거나 정정할 수 있는 기록을 생성하여 보존합니다.</li>
													<li>제1항의 규정에 따라 회사가 보존하여야 하는 기록의 종류 및 보존방법은 제4조 제3항 및
														제4항에서 정한 바에 따릅니다.</li>
												</ol>
												<h3>제8조 ("전자금융거래"정보의 제공금지)</h3>
												<ol>
													<li>"회사"는 "전자금융거래서비스"를 제공함에 있어서 취득한 "회원"의 인적 사항, "회원"의
														계좌, "접근매체" 및 "전자금융거래"의 내용과 실적에 관한 정보 또는 자료를 법령에 의하거나 "회원"의
														동의를 얻지 아니하고 제3자에게 제공, 누설하거나 업무 상 목적 외에 사용하지 아니합니다.</li>
													<li>"회사"는 "회원"이 안전하게 "전자금융거래서비스"를 이용할 수 있도록 "회원"의
														개인정보보호를 위하여 개인정보취급방침을 운용합니다. "회사"의 개인정보취급방침은 "회사"가 운영하는
														사이트에서 확인할 수 있습니다.</li>
												</ol>
												<h3>제9조 ("회사"의 책임)</h3>
												<ol>
													<li>"회사"는 "접근매체"의 위조나 변조로 발생한 사고(단, "회사"가 "접근매체"의 발급
														주체이거나 사용, 관리 주체인 경우), 계약체결 또는 "거래지시"의 전자적 전송이나 처리과정에서 발생한
														사고로 인하여 "회원"에게 손해가 발생한 경우에는 그 손해를 배상할 책임을 부담합니다.</li>
													<li>"회사"는 제1항에도 불구하고 다음 각호의 경우에는 그 책임의 전부 또는 일부를 "회원"이
														부담하게 할 수 있습니다.
														<ol>
															<li>"회원"이 "접근매체"를 제3자에게 대여하거나 그 사용을 위임한 경우 또는 양도나
																담보의 목적으로 제공한 경우</li>
															<li>제3자가 권한 없이 "회원"의 "접근매체"를 이용하여 "전자금융거래"를 할 수 있음을
																알았거나 쉽게 알 수 있었음에도 불구하고 "접근매체"를 누설하거나 노출 또는 방치한 경우</li>
															<li>법인("중소기업기본법" 제2조 제2항에 의한 소기업을 제외합니다)인 "회원"에게 손해가
																발생한 경우로서 "회사"가 사고를 방지하기 위하여 보안절차를 수립하고 이를 철저히 준수하는 등
																합리적으로 요구되는 충분한 주의의무를 다한 경우</li>
														</ol>
													</li>
													<li>"회사"는 전자금융거래를 위한 전자적 장치 또는 '정보통신망 이용촉진 및 정보보호 등에
														관한 법률' 제 2조 제 1항 제 1호에 따른 정보통신망에 침입하여 거짓이나 그 밖의 부정한 방법으로
														획득한 접근매체의 이용으로 발생한 사고로 인하여 이용자에게 그 손해가 발생한 경우에는 그 손해를 배상할
														책임이 있습니다.</li>
													<li>"회사"는 컴퓨터 등 정보통신설비의 보수점검, 교체의 사유가 발생하여 전자금융서비스의
														제공을 일시적으로 중단할 경우에는 "회사"의 사이트를 통하여 이용자에게 중단 일정 및 중단 사유를 사전에
														공지합니다.</li>
												</ol>
												<h3>제10조 (분쟁처리 및 분쟁조정)</h3>
												<ol>
													<li>"회원"은 "회사"의 사이트 하단에 게시된 분쟁처리 담당자에 대하여 "전자금융거래"와
														관련한 의견 및 불만의 제기, 손해배상의 청구 등의 분쟁처리를 요구할 수 있습니다.</li>
													<li>"회원"이 "회사"에 대하여 분쟁처리를 신청한 경우에는 "회사"는 15일 이내에 이에 대한
														조사 또는 처리 결과를 "회원"에게 안내 합니다.</li>
													<li>"회원"은 "회사"의 분쟁처리결과에 대하여 이의가 있을 경우 "금융위원회의 설치 등에 관한
														법률" 제51조의 규정에 따른 금융감독원의 금융분쟁조정위원회나 "소비자기본법" 제60조 제1항의 규정에
														따른 한국소비자원의 소비자분쟁조정위원회에 "회사"의 "전자금융거래서비스"의 이용과 관련한 분쟁조정을
														신청할 수 있습니다.</li>
												</ol>
												<h3>제11조 ("회사"의 안정성 확보 의무)</h3>
												<p>"회사"는 전자금융거래가 안전하게 처리될 수 있도록 선량한 관리자로서의 주의를 다하며,
													"전자금융거래"의 안정성과 신뢰성을 확보할 수 있도록 "전자금융거래"의 종류 별로 전자적 전송이나 처리를
													위한 인력, 시설, "전자적 장치" 등의 정보기술부문 및 전자금융업무에 관하여 금융위원회가 정하는 기준을
													준수합니다.</p>
												<h3>제12조 (약관 외 준칙)</h3>
												<p>"회사"와 "회원" 사이에 개별적으로 합의한 사항이 이 약관에 정한 사항과 다를 때에는 그
													합의사항을 이 약관에 우선하여 적용합니다. 본 약관에서 정하지 아니한 사항(용어의 정의 포함)에 대하여는
													전자금융거래법, 여신전문금융업법 등 소비자보호에 관한 법령 및 개별 약관에서 정한 바에 따릅니다.</p>
												<h3>제13조 (관할)</h3>
												<p>"회사"와 "회원" 간에 발생한 분쟁에 관한 관할은 민사소송법에서 정한 바에 따릅니다.</p>

												<h2 id="제2장-전자지급결제대행-서비스">제2장 전자지급결제대행 서비스</h2>
												<h3>제14조 (정의)</h3>
												<p>본 장에서 정하는 용어의 정의는 아래와 같습니다.</p>
												<ol>
													<li>"전자지급결제대행 서비스"라 함은 전자적 방법으로 재화 또는 용역(이하 이 약관에서 "재화
														등"이라고 합니다)의 구매에 있어서 지급결제 정보를 송신하거나 수신하는 것 또는 그 대가의 정산을
														대행하거나 매개하는 서비스를 말합니다.</li>
													<li>"회원"이라 함은 본 약관에 동의하고 "회사"가 제공하는 "전자지급결제대행 서비스"를
														이용하는 자를 말합니다.</li>
												</ol>
												<h3>제15조 ("거래지시"의 철회)</h3>
												<ol>
													<li>"회원"이 "전자지급결제대행서비스"를 이용한 경우, 이용자는 "거래지시"된 금액의 정보에
														대하여 수취인의 계좌가 개설되어 있는 금융기관 또는 "회사"의 계좌의 원장에의 입금기록 또는 "전자적
														장치"에의 입력이 끝나기 전까지 "거래지시"를 철회할 수 있습니다.</li>
													<li>"회사"는 "회원"의 "거래지시"의 철회에 따라 지급거래가 이루어지지 않은 경우 수령한
														자금을 "회원"에게 반환하여야 합니다.</li>
												</ol>
												<h3>제16조 ("한도" 등)</h3>
												<p>"회사"의 정책 및 결제업체(이동통신사, 카드사 등)의 기준에 따라 "회원"의 결제수단 별 월
													누적 결제액 및 결제한도가 제한될 수 있습니다.</p>
												<h3>제17조 ("접근매체"의 관리)</h3>
												<ol>
													<li>"회사"는 "전자지급결제대행 서비스" 제공 시 "접근매체"를 선정하여 "회원"의 신원,
														권한 및 "거래지시"의 내용 등을 확인합니다.</li>
													<li>"회원"은 "접근매체"를 사용함에 있어서 다른 법률에 특별한 규정이 없는 한 다음 각 호의
														행위를 하여서는 아니 됩니다.
														<ol>
															<li>"접근매체"를 양도하거나 양수하는 행위</li>
															<li>"접근매체"를 대여하거나 사용을 위임하는 행위</li>
															<li>"접근매체"를 질권 기타 담보 목적으로 하는 행위</li>
															<li>1호부터 3호까지의 행위를 알선하는 행위</li>
														</ol>
													</li>
													<li>"회원"은 자신의 "접근매체"를 제3자에게 누설 또는 노출하거나 방치하여서는 안되며,
														"접근매체"의 도용이나 위조 또는 변조를 방지하기 위하여 충분한 주의를 기울여야 합니다.</li>
													<li>"회사"는 "회원"으로부터 "접근매체"의 분실이나 도난 등의 통지를 받은 때에는 그 때부터
														제3자가 그 "접근매체"를 사용함으로 인하여 "회원"에게 발생한 손해를 배상할 책임이 있습니다.</li>
												</ol>

												<h2 id="제3장-결제대금예치서비스">제3장 결제대금예치서비스</h2>
												<h3>제18조 (정의)</h3>
												<p>본 장에서 사용하는 용어의 정의는 다음과 같습니다.</p>
												<ol>
													<li>"결제대금예치서비스"라 함은 회사의 사이트에서 연결되는 와디즈 스토어 페이지에서 이루어지는
														선불식 통신판매에 있어서, "회사"가 "소비자"가 지급하는 결제 대금을 예치하고 배송이 완료되는 등
														구매가 확정된 후 "재화 등"의 대금을 "판매자"에게 지급하는 서비스를 말합니다.</li>
													<li>"선불식 통신판매"라 함은 "소비자"가 "재화 등"을 공급받기 전에 미리 대금의 전부 또는
														일부를 지급하는 방식의 통신판매를 말합니다.</li>
													<li>"판매자"라 함은 본 약관에 동의하고 "회사"가 운영하는 서비스에 입점하여 통신판매를 하는
														자를 말합니다.</li>
													<li>"소비자"라 함은 본 약관에 동의하고 "회사"의 서비스에 입점한 "판매자"로부터 "재화
														등"을 구매하는 자로서 전자상거래 등에 서의 소비자보호에 관한 법률 제2조 제5호의 요건에 해당하는 자를
														말합니다.</li>
													<li>"이용자"라 함은 본 조 제3호 및 제4호의 "판매자"와 "소비자"를 말합니다.</li>
												</ol>
												<h3>제19조 (예치된 결제대금의 지급방법)</h3>
												<ol>
													<li>"소비자"(그 "소비자"의 동의를 얻은 경우에는 "재화 등"을 공급받을 자를 포함한다.
														이하 제2항 및 제3항에서 같습니다)는 "재화 등"을 공급받은 사실을 "재화 등"을 공급받은 날부터
														3영업일 이내에 "회사"에 통보하여야 합니다.</li>
													<li>"회사"는 "소비자"로부터 "재화 등"을 공급받은 사실을 통보 받을 경우 "회사"가 정한
														기일 내에 판매자에게 결제대금을 지급합니다.</li>
													<li>"회사"는 "소비자"가 "재화 등"을 공급받은 날부터 3영업일이 지나도록 정당한 사유의
														제시 없이 그 공급받은 사실을 "회사"에 통보하지 아니하는 경우에 "소비자"의 동의 없이 "판매자"에게
														결제대금을 지급할 수 있습니다.</li>
													<li>"회사"가 "판매자"에게 결제대금을 지급하기 전에 "소비자"가 그 결제대금을 환급 받을
														정당한 사유가 발생한 경우에는 그 결제대금을 "소비자"에게 환급합니다.</li>
												</ol>
												<h3>제20조 (거래지시의 철회)</h3>
												<ol>
													<li>"이용자"가 "결제대금예치서비스"를 이용한 경우, "이용자"는 거래 지시된 금액의 정보가
														수취인이 지정한 전자적 장치에 도달한 때까지 거래지시를 철회할 수 있습니다.</li>
													<li>"회사"는 "소비자"로부터 "재화 등"을 공급받은 사실을 통보 받을 경우 "회사"가 정한
														기일 내에 판매자에게 결제대금을 지급합니다.</li>
													<li>"회사"는 "이용자"의 거래지시의 철회에 따라 지급거래가 이루어지지 않은 경우 수령한
														자금을 "이용자"에게 반환하여야 합니다.</li>
												</ol>
												<h3>제21조 (준용규정)</h3>
												<p>제17조는 본 장에 준용합니다.</p>

												<h2 id="제4장-선불전자지급수단의-발행-및-관리">제4장 선불전자지급수단의 발행 및 관리</h2>
												<h3>제22조 (정의)</h3>
												<ol>
													<li>본 장에서 사용하는 용어의 정의는 다음과 같습니다.
														<ol>
															<li>"선불전자지급수단"이라 함은 포인트, 쿠폰 등 "회사"가 미리 "회원"에게
																회원가입약관을 통해 고지한 전자금융거래법 상 선불전자지급수단을 말합니다.</li>
															<li>"회원"이라 함은 본 약관에 동의하고 메이커, 판매자로부터 "재화 등"을 펀딩 또는
																구매하고 선불전자지급수단을 결제수단으로 하여 그 대가를 지급하는 자를 말합니다.</li>
														</ol>
													</li>
													<li>본 장에서 정하지 않은 용어는 회원가입약관에서 정한 바에 따릅니다.</li>
												</ol>
												<h3>제23조 ("접근매체"의 관리)</h3>
												<p>제17조는 본 장에 준용합니다.</p>
												<h3>제24조 ("거래지시"의 철회)</h3>
												<p>"회원"이 "선불전자지급수단"을 이용하여 자금을 지급하는 경우, "회원"은 거래 지시된 금액의
													정보가 수취인이 지정한 "전자적 장치"에 도달하기 전까지 "거래지시"를 철회할 수 있습니다.</p>
												<h3>제25조 (소멸시효)</h3>
												<p>"선불전자지급수단" 중 포인트의 소멸시효는 적립일로부터 5년이며, 쿠폰의 소멸시효는 개별
													안내되는 기간에 따릅니다. "회원"은 "회사"가 정한 소멸시효 내에서만 "선불전자지급수단"을 사용할 수
													있습니다.</p>
												<h3>제26조 (기타)</h3>
												<p>"회사"는 선불전자지급수단의 보증보험 상품에 가입하였습니다.</p>
											</article>
										</div>
										<div class="agree-popup-footer">
											<button type="button" class="wz button less primary"
												onclick="closeAgreePopup('electronicFinancialTransaction');">확인
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="btn-wrap">
						<button type="button" id="btn-submit" class="wz primary button">결제
							예약하기</button>
					</div>
					<!-- 간편결제 예약 앱 -->
					<div id="reward-reservation-app" data-reservation-info="null"></div>
				</div>
			</div>
		</div>

		<div id="daumAddressLypop" class="lypop-fixed" style="display: none;">
			<div class="daum-address-wrap">
				<div id="daumAddressCon"></div>
				<div class="btn-wrap">
					<button type="button" onclick="closeLyPop('daumAddress')"
						class="btn-pd-brown">닫기</button>
				</div>
			</div>
		</div>

		<jsp:include page="../inc/footer.jsp"></jsp:include>
	</div>
</html>