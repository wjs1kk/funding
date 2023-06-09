<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko" class="scroll-top scroll-apex">
<head>
<title>리워드 선택</title>
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?97a6eedb">
<link rel="stylesheet" href="/resources/static/css/common.css?v=20230502">
<link rel="stylesheet" href="/resources/static/css/wpurchase_reward.css?v=20230221">
<link rel="stylesheet" href="https://static.wadiz.kr/reward/payments.d2c2c5fa.css">
<link rel="stylesheet" href="https://static.wadiz.kr/reward/reward-product.b2b4157b.css">
<link rel="stylesheet" href="resources/css/rewardSelect.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>



<script type="text/javascript">
	
	
	// 06-07 김동욱 해당 리워드 클릭시 해당 리워드_idx에 해당하는 리워드 수량 입력창 오픈
	function rewardDisplay(reward_amount, index, length){
		if($('#rewardCheckbox_'+index).is(':checked') == true){
			$("#rewardDisplay_"+index).css("display", "block")
		}else if($('#rewardCheckbox_'+index).is(':checked') == false){
			$("#rewardDisplay_"+index).css("display", "none")
		}
		rewardOnchange(reward_amount, index, length);
	}
// 	$(function() {
// 		// 06-07 김동욱 파라미터 select의 값에 해당하는 reward 체크
// 		$("#rewardCheckbox_"+${param.select}).click();
// 	})
	
	// 06-07 김동욱 리워드 수량 증가 버튼
	function rewardIncrease(reward_amount, index, length) {
		let rewardQuantity = Math.floor($("#rewardQuantity_"+index).val());
		rewardQuantity += 1
		$("#rewardQuantity_"+index).val(rewardQuantity);
		rewardOnchange(reward_amount, index, length)
	}
	
	// 06-07 김동욱 리워드 수량 감소 버튼
	function rewardDecrease(reward_amount, index, length) {
		let rewardQuantity = Math.floor($("#rewardQuantity_"+index).val());
		rewardQuantity -= 1
		if(rewardQuantity < 1){
			rewardQuantity = 1
		}
		$("#rewardQuantity_"+index).val(rewardQuantity);
		rewardOnchange(reward_amount, index, length)
		
	}
	
	// 06-07 김동욱 리워드 수량이 바뀔 때 수량 * 리워드 금액 계산
	function rewardOnchange(reward_amount, index, length) {
		let rewardQuantity = Math.floor($("#rewardQuantity_"+index).val());
		let rewardAmount = Math.floor(reward_amount);
		let numCheck = /[0-9]/;
		
		// 수량이 0보다 작거나 같으면 수량1
		if(rewardQuantity <= 0){
			rewardQuantity = 1
			$("#rewardQuantity_"+index).val(1)
		}
		
		// 수량이 숫자가 아닌 다른 값이 적히면 수량1
		if(!numCheck.exec(rewardQuantity)){
			rewardQuantity = 1
			$("#rewardQuantity_"+index).val(1)
		}
		
		$("#reward_name").val("");
		$("#reward_amount").val("");
		$("#reward_idx").val("");
		$("#reward_quantity").val("");
		$("#reward_delivery_fee").val("");
		
		for(let i = 0; i < length; i++){
			if($("#rewardCheckbox_"+i).is(':checked') == true){
				$("#reward_name").val($("#reward_name").val() + $("#reward_name_"+i).val() + " x " + $("#rewardQuantity_"+i).val() + ", ")
				$("#reward_amount").val(Math.floor($("#reward_amount").val()) + Math.floor($("#reward_amount_"+i).val()) * Math.floor($("#rewardQuantity_"+i).val()))
				$("#reward_idx").val($("#reward_idx").val() + $("#reward_idx_"+i).val() + ", ")
				$("#reward_quantity").val($("#reward_quantity").val() + $("#rewardQuantity_"+i).val() + ", ")
				if($("#reward_delivery_fee_"+i).val() != 0 || $("#reward_delivery_fee_"+i).val() != null){
					$("#reward_delivery_fee").val(Math.floor($("#reward_delivery_fee").val()) + Math.floor($("#reward_delivery_fee_"+i).val()))
				}
			}
		}
		
		console.log($("#reward_name").val().substring(0, $("#reward_name").val().length - 2));
		console.log($("#reward_amount").val());
		console.log($("#reward_idx").val().substring(0, $("#reward_idx").val().length - 2));
		console.log($("#reward_quantity").val().substring(0, $("#reward_quantity").val().length - 2));
		console.log($("#reward_delivery_fee").val());
		
		
		$("#reward_name").val($("#reward_name").val().substring(0, $("#reward_name").val().length - 2));
		$("#reward_idx").val($("#reward_idx").val().substring(0, $("#reward_idx").val().length - 2));
		$("#reward_quantity").val($("#reward_quantity").val().substring(0, $("#reward_quantity").val().length - 2));
		
		
		$("#rewardAmount_"+index).text(rewardAmount * rewardQuantity + "원");
		
	}
	
</script>

<!-- input type="number" 오른쪽 증가,감소 화살표 없애기 -->
<style type="text/css">
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
</style>
</head>
<body class="">
	<div id="page-container">
		<div class="black-bg-wrap" style="display: none;"></div>
		<div id="wz-header">
			<div class="web-header">
				<div class="web-header-large">
					<header class="header-wrapper">
						<!-- top.jsp -->
						<jsp:include page="../inc/top.jsp"></jsp:include>
					</header>
				</div>
			</div>
		</div>

		<form id="forwardForm" method="get">
		</form>

		<div id="newContainer">
			<div id="wPurchaseWrap">
				<div class="wpurchase-title">
					<h2>
						[레전드 복숭아] 다시 돌아온 분홍이와 노랑이! 첫 수확이라 더 달콤해요<span class="name"><em
							style="background-image: url(https://cdn.wadiz.kr/wwwwadiz/green001/2023/0522/20230522140822528_215321.jpg/wadiz/resize/600/format/jpg/quality/80)"></em>농업회사법인
							주식회사 농부건강농원</span>
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
							value="NjEzNTIyZWUtODZlMi00NDM4LThlYTEtZjRkYmFiNDhlYWJiWXpOa05UZ3lOMll0TTJNME55MDBOelV3TFRsbVpESXRNbVpoWlRRMU9ESXlNbUky">
						<input type="hidden" name="campaignId" value="215321"> <input
							type="hidden" name="fundingPrice" value="5852000">

						<div class="wpurchase-reward">
							<div class="top-area">
								<h3>
									<em>리워드 선택</em>
								</h3>
							</div>
								
								<c:set var="length" value="${fn:length(selectReward)}"></c:set>
							<div id="reward-product-app" data-campaign-id="215321"
								data-selected-reward-id="">
								<ul class="RewardProductList_container__2hIAB">
								
									<c:forEach items="${selectReward }" var="selectReward" varStatus="status">
									
										<input type="hidden" id="reward_name_${status.index}" value="${selectReward.reward_name }"></input>
										<input type="hidden" id="reward_amount_${status.index}" value="${selectReward.reward_amount }"></input>
										<input type="hidden" id="reward_idx_${status.index}" value="${selectReward.reward_idx }"></input>
										<input type="hidden" id="reward_delivery_fee_${status.index}" value="${selectReward.reward_delivery_fee }"></input>
									
										<li class="RewardProductList_list__2oOvi">
											<section
												class="RewardProductItem_container__1wZBW">
												<label class="RewardProductItem_label__2t2Wd"
													for="checkbox-reward-product-445400"><div
														class="RewardProductItem_price__2oEJ1">
														<input type="hidden" id="reward_name_${selectReward.reward_idx }" value="${selectReward.reward_name }">
														<input type="checkbox" id="rewardCheckbox_${status.index}"  onclick="rewardDisplay(${selectReward.reward_amount }, ${status.index}, ${length })">
														<span>${selectReward.reward_amount }</span>&nbsp;원
													</div>
													<div class="RewardProductItem_content__Pw7qB">
														<div class="RewardProductItem_title__en2gj">
															${selectReward.reward_name }
															<div class="RewardProductItem_remain__XDQPL">
																<span class="RewardProductItem_limit__5TztV">제한수량 ${selectReward.reward_quantity }개</span>
																<span class="RewardProductItem_stock__5qZys">${selectReward.reward_quantity }개 남음</span>
															</div>
														</div>
														<div class="RewardProductItem_description__1Eenu">
															${selectReward.reward_option }
															<br>
															${selectReward.reward_content }
														</div>
													</div>
													<div class="RewardProductItem_delivery__3aef7">
														<div class="RewardProductDelivery_container__1VhfG">
															<div class="RewardProductDelivery_content__2MqBD">
																<i class="RewardProductDelivery_icon__31IE8" aria-hidden="true"></i>
																<c:choose>
																	<c:when test="${selectReward.reward_delivery eq '1' and selectReward.reward_delivery_fee eq 0 }">
																		<span>무료배송</span>
																		<span class="RewardProductDelivery_divide__36XQt">|</span>
																		<span>${selectReward.reward_delivery_date }&nbsp;</span><span> 리워드 제공 예정</span>
																	</c:when>
																	<c:when test="${selectReward.reward_delivery eq '1' and selectReward.reward_delivery_fee ne 0 }">
																		<span>${selectReward.reward_delivery_fee }원</span>
																		<span class="RewardProductDelivery_divide__36XQt">|</span>
																		<span>${selectReward.reward_delivery_date }&nbsp;</span><span> 리워드 제공 예정</span>
																	</c:when>
																	<c:when test="${selectReward.reward_delivery eq '0' and selectReward.reward_delivery_fee ne 0 }">
																		<span>배송없음</span>
																	</c:when>
																
																</c:choose>
															</div>
														</div>
													</div></label>
												<ul>
													<li class="RewardProductItem_item__3va6f" ><section
															class="RewardProductCard_container__3N2S2" id="rewardDisplay_${status.index}" style="display: none;">
															<div>
																<div class="RewardProductCard_title__32DP6">
																	<div class="RewardProductCard_name__1Mz6S">${selectReward.reward_name }</div>
																	<button type="button"
																		class="RewardProductCard_cancel__3PE3x"
																		aria-label="삭제 버튼">
																		<svg viewBox="0 0 48 48" focusable="false"
																			role="presentation" class="withIcon_icon__3CJLi"
																			aria-hidden="true">
																			<path
																				d="M24 3.6C12.733 3.6 3.6 12.733 3.6 24S12.733 44.4 24 44.4 44.4 35.267 44.4 24 35.267 3.6 24 3.6zm9.252 27.948l-1.704 1.704L24 25.692l-7.548 7.56-1.704-1.704L22.308 24l-7.56-7.548 1.704-1.704L24 22.308l7.548-7.56 1.704 1.704L25.692 24l7.56 7.548z"></path></svg>
																	</button>
																</div>
															</div>
															<div class="RewardProductCard_content__2wx8s">
																<div class="RewardProductCard_quantity__2CSmq">
																	<div class="ProductQuantity_container__1_106">
																		<button type="button" aria-label="감소 버튼" id="rewardDecreaseBtn_${selectReward.reward_idx}"
																			class="ProductQuantity_minusButton__22tR8" onclick="rewardDecrease(${selectReward.reward_amount }, ${status.index}, ${length})"></button>
																		<input type="number" aria-label="수량 입력" id="rewardQuantity_${status.index}" onchange="rewardOnchange(${selectReward.reward_amount}, ${status.index}, ${length})"
																			data-testid="quantity" value="1">
																		<button type="button" aria-label="증가 버튼" id="rewardIncreaseBtn_${selectReward.reward_idx }"
																			class="ProductQuantity_plusButton__2TJ7g" onclick="rewardIncrease(${selectReward.reward_amount }, ${status.index}, ${length})"></button>
																	</div>
																	<p class="RewardProductCard_price__3t1PE" id="rewardAmount_${status.index}">${selectReward.reward_amount }</p>
																</div>
															</div>
														</section>
													</li>
												</ul>
												<hr class="Divider_divider__l7BCX Divider_horizontal__1S942 Divider_lightBG__2mucS Divider_spacing1__32SNF Divider_caption2__2nFxr RewardProductItem_divider__1MITY">
											</section>
										</li>
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
							[레전드 복숭아] 다시 돌아온 분홍이와 노랑이! 첫 수확이라 더 달콤해요에 <em id="sumTotalNum">5,852,000</em>
							원을 참여합니다.
						</p>
						<form action="payment" method="post">
							<input type="hidden" id="reward_name" name="reward_name">
							<input type="hidden" id="reward_amount" name="reward_amount">
							<input type="hidden" id="reward_idx" name="reward_idx">
							<input type="hidden" id="reward_quantity" name="reward_quantity">
							<input type="hidden" id="reward_delivery_fee" name="reward_delivery_fee">
							<button class="wz button primary" onclick="purchaseNextStep();">
								다음 단계로 <i class="icon chevron-right"></i>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>


		<div id="authMailLypop" class="lypop-fixed" style="display: none;">
			<div class="popup-mint-basic">
				<a href="/web/campaign/detail/215321" class="btn-close"> <em></em>
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
		
		


		<div id="footer" class="show-gnb">
			<footer id="footer" class="web-footer">
				<div class="FooterContainer_container__3LibG">
					<div class="FooterContainer_inner__3Nket">
						<!-- top.jsp -->
						<jsp:include page="../inc/footer.jsp"></jsp:include>
					</div>
				</div>
				<div class="externals">
					<div class="externals-wrap">
						<ul>
							<li>
								<span title="카카오톡 옐로아이디"><svg viewBox="0 0 32 32"
									focusable="false" role="presentation"
									class="withIcon_icon__djI-9 withIcon_inline__3RzGY"
									aria-hidden="true">
									<path d="M16 4.64c-6.96 0-12.64 4.48-12.64 10.08 0 3.52 2.32 6.64 5.76 8.48l-.96 4.96 5.44-3.6 2.4.16c6.96 0 12.64-4.48 12.64-10.08S22.96 4.56 16 4.64z"></path></svg>
								</span>
								<ul>
									<li><a href="http://pf.kakao.com/_MGxgmxl" target="_blank" rel="noopener noreferrer">투자</a></li>
									<li><a href="http://pf.kakao.com/_pEeEl" target="_blank" rel="noopener noreferrer">펀딩</a></li>
								</ul>
							</li>
							<li><span title="페이스북"><svg viewBox="0 0 48 48"
										focusable="false" role="presentation"
										class="withIcon_icon__djI-9 withIcon_inline__3RzGY"
										aria-hidden="true">
										<path
											d="M14.4 19.547h5.673v-5.256a8.559 8.559 0 0 1 2.4-6.132c2.618-2.628 6.109-2.3 11.127-1.861v5.913h-3.71a3.374 3.374 0 0 0-2.29.766 3.514 3.514 0 0 0-.655 2.3v4.27h6.437l-.873 6.57h-5.564V43.2h-6.872V26.118H14.4v-6.57z"></path></svg></span>
							<ul>
									<li><a href="https://www.wadiz.kr/link/fb_invest"
										target="_blank" rel="noopener noreferrer">투자</a></li>
									<li><a href="https://www.wadiz.kr/link/fb_reward"
										target="_blank" rel="noopener noreferrer">펀딩</a></li>
								</ul></li>
						</ul>
						<ul>
							<li><a href="https://brunch.co.kr/@wadiz" target="_blank"
								title="브런치" rel="noopener noreferrer"><svg
										viewBox="0 0 40 40" focusable="false" role="presentation"
										class="withIcon_icon__djI-9 withIcon_inline__3RzGY"
										aria-hidden="true">
										<path
											d="M25.7 12c.5 1.2-.3 2.2-1.2 3.1s-2.6 2.7-3.8 4.2-3.1 4.3-4.7 6.5l.3.3.7-.6a20.6 20.6 0 0 1 6-4.5 9.5 9.5 0 0 1 3.3-.8c1.7-.1 2.7 1 2.7 2.8a6.7 6.7 0 0 1-1.8 4.3A18.6 18.6 0 0 1 17 33.2a35.6 35.6 0 0 1-4.8.8c-.8.1-1.4.4-1.5 1.2s-2 2.1-3.5 2.6l2.4-4.2c-1.2-1-1.2-1-1.1-1.6l1.5.7 2.3-4c3.5-6 6.9-12 10.4-17.9A26.3 26.3 0 0 1 29.2 3a5.5 5.5 0 0 1 1.4-.9 2.2 2.2 0 0 1 1.6-.1c.3.2.3 1 .2 1.5a10.7 10.7 0 0 1-2.7 4.9c-1.2 1.4-2.6 2.4-4 3.6zM12 33.2l1.6-.2c4-.6 7.6-2.1 10.4-5.2a9 9 0 0 0 2.4-4.6c.2-1.2-.4-1.9-1.6-1.6l-1.4.5c-4.9 2.5-8.3 6.5-11.4 11.1zM30.7 3.8l-.2-.2-6.2 7.6.2.2a15.5 15.5 0 0 0 6.2-7.6zM24 11.7l-2.8 4.7 2.7-2.5a1.4 1.4 0 0 0 .1-2.2zm8.4 25.8h-21l-.7.3c2.7.5 21.6.3 22.2-.2z"></path></svg></a></li>
							<li><a href="https://www.instagram.com/wadiz_official/"
								target="_blank" title="인스타그램" rel="noopener noreferrer"><svg
										viewBox="0 0 32 32" focusable="false" role="presentation"
										class="withIcon_icon__djI-9 withIcon_inline__3RzGY"
										aria-hidden="true">
										<path
											d="M16 5.52h5.2l1.44.16.88.32.8.4.72.56.56.64c.131.23.241.496.315.777l.245.903c.121.445.207.964.239 1.498q.001.982.081 1.862T26.4 16v5.278c0 .511-.058 1.009-.169 1.486a3.805 3.805 0 0 1-.321.857 3.341 3.341 0 0 1-.398.792l-.472.708-.64.56-.8.4-.88.24-1.44.24h-10.4l-1.44-.16-.88-.32-.8-.4-.72-.56-.64-.8a3.267 3.267 0 0 1-.315-.777l-.325-.903a6.712 6.712 0 0 1-.16-1.438q0-.962-.08-1.842t0-3.36v-3.36q0-.8.08-1.84a9.087 9.087 0 0 1 .169-1.577 3.87 3.87 0 0 1 .32-.843c.093-.284.228-.549.397-.789l.473-.63.64-.56.8-.32.88-.32 1.52-.16h5.2zm0-2.32h-5.28l-1.76.16-1.36.4-1.2.72a4.335 4.335 0 0 0-1.038.798 5.503 5.503 0 0 0-.868 1.097L3.84 7.6a9.135 9.135 0 0 0-.388 1.294 11.965 11.965 0 0 0-.25 1.79Q3.2 11.76 3.12 12.56T3.2 16v3.44q0 .8.08 1.84c.045.655.13 1.258.255 1.845.095.44.233.896.405 1.333l.54 1.141.88 1.12 1.04.88 1.28.64 1.36.32 1.76.24h10.48l1.76-.16 1.36-.4 1.2-.64 1.12-.88c.296-.328.561-.695.784-1.089.225-.374.414-.77.562-1.185a9.74 9.74 0 0 0 .402-1.34c.13-.599.215-1.23.251-1.874q.001-.992.081-1.872t0-3.36v-3.44q0-.88-.08-1.84a13.088 13.088 0 0 0-.255-1.845 8.703 8.703 0 0 0-.405-1.334l-.54-1.141a6.56 6.56 0 0 0-.881-1.121 3.86 3.86 0 0 0-1.021-.869l-1.218-.65-1.36-.4-1.76-.24H16zm0 6.24l-.125-.001c-.878 0-1.715.177-2.477.497a6.508 6.508 0 0 0-3.382 3.461c-.334.787-.519 1.654-.519 2.563s.185 1.776.52 2.563a6.724 6.724 0 0 0 1.346 2.039 6.542 6.542 0 0 0 4.664 1.947c.915 0 1.786-.187 2.577-.525a6.585 6.585 0 0 0 3.381-3.382c.341-.798.53-1.678.53-2.602s-.189-1.804-.53-2.603a6.328 6.328 0 0 0-1.344-2.037 6.747 6.747 0 0 0-2.035-1.343 6.416 6.416 0 0 0-2.601-.577zm0 10.8l-.08.001a4.24 4.24 0 0 1-4.24-4.24V16a4.32 4.32 0 1 1 8.64 0v.001a4.24 4.24 0 0 1-4.24 4.24l-.084-.001zm8.4-11.12a1.52 1.52 0 1 1-.479-1.119c.295.264.48.647.48 1.073l-.001.048z"></path></svg></a></li>
							<li><a href="http://blog.naver.com/wadiz_crowdfunding"
								target="_blank" title="네이버 블로그" rel="noopener noreferrer"><svg
										viewBox="0 0 32 32" focusable="false" role="presentation"
										class="withIcon_icon__djI-9 withIcon_inline__3RzGY"
										aria-hidden="true">
										<path
											d="M8.88 14.88a.96.96 0 1 1-1.92 0 .96.96 0 0 1 1.92 0zm9.84-.08a1.04 1.04 0 1 1-2.081-.001 1.04 1.04 0 0 1 2.081.001z"></path>
										<path
											d="M26.56 4H5.44A3.84 3.84 0 0 0 1.6 7.84V20.4a3.84 3.84 0 0 0 3.84 3.84h7.44l2.56 6s.16.48.56.48.56-.48.56-.48l2.64-6h7.36a3.84 3.84 0 0 0 3.84-3.84V7.84A3.84 3.84 0 0 0 26.56 4zM10.64 15.04c0 2.32-2.4 2.32-2.4 2.32l-.051.001c-.54 0-1.029-.214-1.389-.561l.001.401h-1.68v-7.04h1.68v2.64c.4-.72 1.6-.64 1.6-.64 2.56.24 2.24 2.88 2.24 2.88zm3.04-2.72v4.88H12v-4.8c0-.64-.8-.8-.8-.8V9.92a2.32 2.32 0 0 1 2.48 2.488zm4 5.04l-.081.001a2.72 2.72 0 0 1-2.719-2.637 2.721 2.721 0 0 1 2.804-2.644l.077-.001a2.72 2.72 0 0 1 2.719 2.637v.005a2.72 2.72 0 0 1-2.72 2.72l-.084-.001zm9.28 0l.001.081a2.4 2.4 0 0 1-2.4 2.4c-.029 0-.057 0-.085-.002h-.796v-1.6h.48s1.04.08 1.04-1.52c0 0-.24.64-1.68.64a2.242 2.242 0 0 1-2.16-2.156v-.804a2.401 2.401 0 0 1 2.316-2.32 1.676 1.676 0 0 1 1.441.637l.003-.556h1.68z"></path>
										<path
											d="M25.28 14.8a1.04 1.04 0 1 1-2.081-.001 1.04 1.04 0 0 1 2.081.001z"></path></svg></a></li>
							<li><a
								href="https://www.youtube.com/channel/UCF1_fHSt6Efemgy5wToafNw/featured"
								target="_blank" title="유튜브" rel="noopener noreferrer"><svg
										viewBox="0 0 32 32" focusable="false" role="presentation"
										class="withIcon_icon__djI-9 withIcon_inline__3RzGY"
										aria-hidden="true">
										<path
											d="M22 16a.88.88 0 0 0-.475-.878L13.52 10.08a.96.96 0 0 0-1.044.002.96.96 0 0 0-.476.88V21.04l-.001.048c0 .354.192.663.477.83l.485.162.56-.16 8-5.04a.88.88 0 0 0 .48-.884zm8 0v2.32q0 .8-.16 2.16a17.451 17.451 0 0 1-.34 2.434c-.133.645-.502 1.301-1.019 1.806a3.264 3.264 0 0 1-1.989.88c-2.751.261-5.936.409-9.155.409-.47 0-.939-.003-1.407-.009a103.562 103.562 0 0 1-10.813-.43c-.345-.055-1.007-.374-1.519-.852a3.604 3.604 0 0 1-1.114-1.894 18.217 18.217 0 0 1-.32-2.276Q2.08 19.2 2 18.32T2 16v-2.32q0-.8.16-2.16c.061-.865.175-1.659.34-2.434.156-.653.552-1.309 1.097-1.804a3.267 3.267 0 0 1 1.909-.881 99.415 99.415 0 0 1 9.158-.41c.47 0 .939.003 1.407.009a103.562 103.562 0 0 1 10.813.43c.345.055 1.007.374 1.519.852.55.493.947 1.15 1.113 1.894.143.675.256 1.469.32 2.276Q29.92 12.8 30 13.68T30 16z"></path></svg></a></li>
						</ul>
					</div>
				</div>
			</footer>
		</div>

	</div>
	<div id="wadiz-app-banner"></div>

	<!-- 프로젝트 유형이 프리오더 프로젝트가 아닌경우: 기존과 동일하게 처리 -->

	<input type="hidden" id="gaUserId" value="6326090">

	<div id="floating-buttons-app">
		<div class="FloatingButtons_container__2VDUa">
			<button type="button"
				class="FloatingTopButton_pageTop__2vt6t FloatingTopButton_visible__3h8Ak"
				title="위로 이동">
				<svg viewBox="0 0 40 40" focusable="false" role="presentation"
					class="withIcon_icon__3aw9X" aria-hidden="true">
					<path d="M33 30l-1.4 1.4L20 19.8 8.4 31.4 7 30l13-13zm1-21H6v2h28z"></path></svg>
			</button>
			<button type="button" data-ga-category="공통_최근본_UI"
				data-ga-action="클릭" data-ga-label=""
				class="RecentView_container__5Nxua" aria-label="최근본"
				style="display: none;">
				<div aria-hidden="true"
					class="RecentView_thumbnail__107ZW CardThumbnail_thumbnail__sw2ym CardThumbnail_visible__1ZiAB CardThumbnail_noanimation__3qJay"
					style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0524/20230524094624267_215321.jpg/wadiz/resize/400/format/jpg/quality/85/&quot;);"></div>
			</button>
		</div>
	</div>


	<div id="ch-plugin" class="notranslate"
		style="z-index: 10000000 !important;">
		<div id="ch-plugin-entry">
			<div style="display: block !important;"></div>
		</div>
		<div id="ch-plugin-script" style="display: none;"
			class="ch-messenger-hidden">
		</div>
	</div>
	<div id="wp_tg_cts" style="display: none;">
	</div>
	<div style="display: none; visibility: hidden;">
	</div>
	<div id="adn_container" style="display: none"></div>
	<div id="criteo-tags-div" style="display: none;"></div>
	<div id="wadiz-waffle-toast-container-component">
		<div class="ToastContainer_container__1gqet"></div>
	</div>
</body>
</html>