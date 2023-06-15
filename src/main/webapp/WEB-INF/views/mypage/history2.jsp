<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html lang="ko" class="scroll-top scroll-apex">
<head>
<link rel="stylesheet" href="../resources/css/mypage.css">
<title>와디즈 - 나의 펀딩현황</title>
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?e1e51710">
<link rel="stylesheet" href="https://static.wadiz.kr/static/my/main.255d4fec.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>

</head>
<body>
	<div id="page-container">
		<jsp:include page="../inc/top.jsp"></jsp:include>
	
		<div class="black-bg-wrap" style="display: none;"></div>
		<form id="forwardForm" method="get">
			<input type="hidden" id="returnURL" name="returnURL">
		</form>
		<input type="hidden" id="sessionLoginCheck" value="true">

		<div id="wadizContainer">
			<div id="mypageWrap">
				<div class="myfunding-wrap myRewardPurchase">
					<div class="mypage-project bg short">
					
					
						<div class="project-detail form-wrap" id="landing-myreward-purchase">
							<div id="myreward-purchase-detail" data-campaign-id="202395"
								data-backing-payment-id="10417986" data-maker-name="농업회사법인(주)심박"
								data-maker-id="899207602"
								data-referer="https://www.wadiz.kr/web/mywadiz/participation"
								data-param-referer="">
								
								<div>
									<div class="PurchaseInfoContainer_container__1uMSh" style="padding: 25px 60px">
										<p class="PurchaseInfoContainer_cate__1QTet"></p>
										<p class="PurchaseInfoContainer_status__205il">
											<i class="PurchaseInfoContainer_icon__3cTu1"></i>${paymentMap.project_category}
										</p>
										<a href="/web/campaign/detail/202395" target="_blank" rel="noopener noreferrer">
										<p class="PurchaseInfoContainer_title__3Z6oW">${paymentMap.project_title}</p></a>
										
										
										<div class="PurchaseStatus_container__ux-k0">
										<h2 class="PurchaseStatus_rewardInfo__2N7jO">리워드 정보</h2>
										<div class="PurchaseStatusItemContainer_container__3Zv4D">
											<div class="PurchaseStatusItemContainer_description__33DNm">
												<p class="PurchaseStatusItemContainer_desc__3zaXY">${paymentMap.reward_name}</p>
												<hr class="Divider_divider__32LTn Divider_horizontal__1WjNM Divider_lightBG__1KGrH Divider_caption2__2uJnL">
											</div>
<!-- 											<div class="PurchaseStatusItemContainer_detail__2q2l_"> -->
<!-- 												<p>payment.reward_amount</p> -->
<!-- 												<p class="PurchaseStatusItemContainer_deliveryStart__davkF"> -->
<!-- 											</div> -->
										</div>
										
<!-- 										<p class="PurchaseInfoContainer_maker__2k4e3"> -->
<!-- 											by 농업회사법인(주)심박 -->
<!-- 										</p> -->
										<div class="PurchaseInfoContainer_summary__lg8v7">
<!-- 											<div class="PurchaseInfoContainer_list__vACqm"> -->
<!-- 												<p class="PurchaseInfoContainer_listTitle__eA-QW">결제 번호</p> -->
<!-- 												<p>10417986</p> -->
<!-- 											</div> -->
											<div class="PurchaseInfoContainer_list__vACqm">
												<p class="PurchaseInfoContainer_listTitle__eA-QW">시작일</p>
												<p>${paymentMap.project_start_date}</p>
											</div>
											<div class="PurchaseInfoContainer_list__vACqm">
												<p class="PurchaseInfoContainer_listTitle__eA-QW">종료일</p>
												<p>${paymentMap.project_end_date}</p>
											</div>
											
											<div class="FundingRewardInfo_container__2Bvhc">
												<div class="FundingRewardInfo_list__ETyrt">
													<p class="FundingRewardInfo_listTitle__8G48Y">결제일</p>
													<p class="PurchaseInfoContainer_listTitle__eA-QW" id="payDate">
													<script type="text/javascript">
														let date = ("${paymentMap.payment_date}").split('T')[0];
														$('#payDate').text(date)
													</script>
													</p>
													
												</div>
<!-- 												<div class="FundingRewardInfo_cancelBtn__1y1oz"> -->
<!-- 													<button -->
<!-- 														class="Button_button__2dR1L Button_secondary__1fskO Button_lg__1xVO8" -->
<!-- 														type="button"> -->
<!-- 														<span><span class="Button_children__1A_Ce">결제 -->
<!-- 																예약 취소</span></span> -->
<!-- 													</button> -->
<!-- 												</div> -->
<!-- 												<div class="FundingRewardInfo_info__ja3-c"> -->
<!-- 													결제 예약 취소는 프로젝트 종료일인 2023.05.25 까지 가능합니다.<br>리워드 종류 및 -->
<!-- 													수량 변경은 불가하며, 취소 후 재 펀딩해야 합니다. -->
<!-- 												</div> -->
											</div>
										</div>
									</div>
									<div class="FundingPayment_container__1cP6O">
										<div>
											<div class="FundingPayment_title__2qp8l">결제 내역</div>
											<ul>
												<li class="FundingPayment_list__1ayI4"><p>리워드 금액</p>
													<p>${paymentMap.reward_amount} 원</p></li>
												<li class="FundingPayment_list__1ayI4"><p>쿠폰 차감금액</p>
													<p>- ${paymentMap.used_coupon_amount}원</p></li>
												<li class="FundingPayment_list__1ayI4"><p>포인트 차감금액</p>
													<p>- ${paymentMap.used_point_amount}원</p></li>
												<li class="FundingPayment_list__1ayI4"><p>추가 후원금</p>
													<p>${paymentMap.donation}원</p></li>
												<li class="FundingPayment_list__1ayI4"><p>배송비</p>
													<p>${paymentMap.delivery_fee}원</p></li>
												<hr
													class="Divider_divider__32LTn Divider_horizontal__1WjNM Divider_lightBG__1KGrH Divider_spacing5__3wbgZ Divider_caption2__2uJnL">
												<li
													class="FundingPayment_list__1ayI4 FundingPayment_bold__BfCej"><p>최종
														결제 금액</p>
													<p>${paymentMap.total_amount}원</p></li>
											</ul>
										</div>
									</div>
									<div class="Toast_toast__RW3fu">
										<div class="Toast_content__2Xl1R">처리 도중 문제가 발생하였습니다.</div>
									</div>
								</div>
							</div>
							<div class="inner-section">
								<!-- 배송지 정보 -->
								<div id="shippingDetail" class="shipping-detail">
									<div class="inner-detail" style="padding: 25px 75px">
										<h4 style="font-weight: normal; font-size: 14px; color: #212529; line-height: 20px;">
											배송지 정보</h4>
										<div class="done shippingInfo">
											<p style="margin-bottom: 0px;">
												<span id="og_presenteeName"
													style="margin-bottom: 8px; color: #212529; font-weight: bold;">${member.member_name}</span>
												<span id="og_contactNumber" style="margin-bottom: 8px; color: #212529;">
												${paymentMap.delivery_phone_number}</span>
											</p>
											<p style="margin-bottom: 0px;">
												<span id="og_address" style="margin-bottom: 8px; color: #212529;">
												${paymentMap.delivery_address}</span> 
<!-- 													<span -->
<!-- 													id="og_addressDetails" -->
<!-- 													style="margin-bottom: 8px; color: #212529;">상세주소</span> -->
											</p>
											<p id="og_shippingMemo"
												style="margin-bottom: 8px; color: #212529; display: inline;"></p>

<!-- 											<div class="btn-wrap"> -->
<!-- 												<button type="button" class="btn-green-line" -->
<!-- 													onclick="modifyShippingDetail()">배송지 정보 변경하기</button> -->
<!-- 											</div> -->

										</div>
										<div class="modify">
											<form id="shippingDetailForm">
												<p>이름</p>
												<input type="text" id="presenteeName" maxlength="48"
													name="presenteeName" value="" class="input-text">
												<p>핸드폰 번호</p>
												<input type="tel" id="contactNumber" maxlength="13"
													name="contactNumber" value=""
													class="input-text"> <em class="error-message"
													id="errorPhoneNum">휴대폰 번호를 정확히 입력해주세요.</em>
												<p>주소</p>
												<input type="text" id="location1" name="address"
													value=""
													class="input-text"
													onclick="Wpost(); $('#location1')[0].blur();"> <input
													type="text" id="location2" maxlength="96"
													name="addressDetails" value="" class="input-text">
												<p>배송 시 요청사항 (선택)</p>
												<input type="text" id="shippingMemo" maxlength="128"
													name="memo" value="" class="input-text">
												<p class="comment">해당 요청사항은 배송에 관련된 내용만 적어주세요.</p>
												<input type="hidden" id="zipCode" name="zipCode"
													value="47355"> <input type="hidden"
													name="backingPaymentId" value="10417986">
											</form>

											<div class="btn-wrap divide">
												<button type="button" class="btn-line div1"
													onclick="cancelModifyShippingDetail()">취소</button>
												<button type="button" class="btn-green-line div2"
													onclick="ajaxModifyShippingDetail()">저장</button>
											</div>
										</div>

									</div>
									<div id="myreward-purchase-detail-footer"
										data-campaign-id="202395" data-is-refund-target="true"
										data-refund-version="5">
										<div>
<!-- 											<div class="MyRewardPurchaseDetailFooter_contact__u9c1f" style="padding: 25px 60px"> -->
<!-- 												<div class="MyRewardPurchaseDetailFooter_info__6EBYD">프로젝트 -->
<!-- 													종료 이후에는 서포터의 배송지 정보가 메이커에게 전달되기 때문에 종료 이후 배송 정보 변경 등에 대한 -->
<!-- 													문의는 메이커에게 직접 해야 합니다.</div> -->
<!-- 												<button onclick="location.href=''" class="Button_button__2dR1L Button_secondary__1fskO Button_lg__1xVO8 MyRewardPurchaseDetailFooter_button__1Gis_" -->
<!-- 													type="button"> -->
<!-- 													<span> -->
<!-- 														<span class="Button_children__1A_Ce"> -->
<!-- 															<svg viewBox="0 0 40 40" focusable="false" role="presentation" -->
<!-- 																class="withIcon_icon__3BadF MyRewardPurchaseDetailFooter_icon__1tHXb" aria-hidden="true"> -->
<!-- 																<path fill="none" d="M0 0h40v40H0z"></path> -->
<!-- 																<path d="M10.62 38.33V29H2.87V1.67h34.26v27.79H18.92zM5 27h7.7v6.11l5.3-5.73h17V3.75H5z"></path> -->
<!-- 																<path d="M12.84 13.28a1.87 1.87 0 1 0 0 3.74 1.87 1.87 0 1 0 0-3.74zm7.16 0a1.87 1.87 0 1 0 0 3.74 1.87 1.87 0 1 0 0-3.74zm7.16 0a1.87 1.87 0 1 0 0 3.74 1.87 1.87 0 1 0 0-3.74z"></path></svg> -->
<!-- 																메이커에게 문의하기</span></span> -->
<!-- 												</button> -->
<!-- 											</div> -->
											<div class="MyRewardPurchaseDetailFooter_messageBox__AcAbp" style="padding: 25px 60px">
												<div color="basic"
													class="MessageBox_messageBox__2ElIE MessageBox_basic__1LPiz">
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3BadF MessageBox_icon__1kYG2 MessageBox_withoutTitle__1DCGg"
														aria-hidden="true">
														<path fill="none" d="M0 0h40v40H0z"></path>
														<path
															d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm1 28.6h-2v-13h2zm-1-15.84A1.8 1.8 0 1 1 21.8 12a1.8 1.8 0 0 1-1.8 1.76z"></path></svg>
													<div class="MessageBox_content__2tRSQ">
														<div class="MessageBox_description__VwSok">리워드 발송은
															메이커의 의무로 프로젝트 진행 시 메이커가 약속한 리워드 발송 시작일에 제공하는 것을 원칙으로 합니다.
															다만 메이커의 예기치 못한 일정 변경이 있을 수 있으며, 리워드 발송에 대해 발생한 이슈는 프로젝트
															상세 페이지 - 환불・정책 탭에 명시한 정책을 따릅니다.</div>
													</div>
												</div>
												<button onclick="history.back()" class="Button_button__2dR1L Button_secondary__1fskO Button_md__3Kg3V MyRewardPurchaseDetailFooter_returnButton__23BJf"
													type="button">
													<span>
													<span class="Button_children__1A_Ce">목록으로 돌아가기</span></span>
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- // #wadizContainer -->
		</div>
	</div>
	<jsp:include page="../inc/footer.jsp"></jsp:include>
	
</body>
</html>