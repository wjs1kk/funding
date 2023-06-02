<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css" rel="stylesheet">
<link href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/12.b2563d3d.chunk.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>

<script type="text/javascript">


	$(function() {
		$("#saveBtn").on("click", function() {
			$.ajax({
				 url: 'repInfoInsert',
		          type: 'POST',
		          data: {rep_name: $("#rep_name").val(),
		        	  	 rep_email: $("#rep_email").val(),
		        	  	 rep_tax_email: $("#rep_tax_email").val(),
		        	  	 rep_tax_bank: $("#rep_tax_bank").val(),
		        	  	 rep_tax_account: $("#rep_tax_account").val(),
		        	  	 rep_tax_depositor: $("#rep_tax_depositor").val()
		          },
		          success: function(response) {
		        	  alert("성공");
		          },
		          error: function(xhr, status, error) {
		          }
			})
			
			
		})
		
		// 05-31 김동욱 대표자 정보 가져오기를 성공하면 값 입력 후 비활성화
		 $.ajax({
			url: 'getMyRepresentativeInfo',
			type: 'POST',
			dataType: "json",
			success: function(response) {
				$("#rep_name").val(response.rep_name);
				$("#rep_name").attr("disabled", true);
				$("#rep_email").val(response.rep_email);
				$("#rep_email").attr("disabled", true);
				$("#rep_tax_email").val(response.rep_tax_email);
				$("#rep_tax_email").attr("disabled", true);
				$("#rep_tax_bank").val(response.rep_tax_bank);
				$("#rep_tax_bank").attr("disabled", true);
				$("#rep_tax_account").val(response.rep_tax_account);
				$("#rep_tax_account").attr("disabled", true);
				$("#rep_tax_depositor").val(response.rep_tax_depositor);
				$("#rep_tax_depositor").attr("disabled", true);
				$("#saveBtn").attr("disabled", true);
				 if(response != ""){
				 	$(".PageMenuList_card__1VyAW>.PageMenuList_container__1xz-L>.PageMenuList_status__3M6fF").eq(7).text("작성 완료");
				 	$("#representative_info").val("Y");
				 }
			}
		})
	})

</script>

</head>
<body class="">
	<div data-react-modal-body-trap="" tabindex="0"
		style="position: absolute; opacity: 0;"></div>
	<div id="root">
		<div id="AppLayout_Container" class="AppLayout_container__3zbzb">
			<div class="AppLayout_main__14bCi">
				<jsp:include page="../inc/create_project_side.jsp"></jsp:include>
				<div id="AppLayout_Contents" class="AppLayout_contents__wv3DF">
					<div id="container" class="ContentsLayout_container__11k-W">
						<div>
							<ol class="Breadcrumb_container__3YjD4">
								<li class="Breadcrumb_item__2r9Ym">프로젝트 관리</li>
								<li class="Breadcrumb_item__2r9Ym">대표자 및 정산 정보</li>
							</ol>
							<!-- 05-17 김동욱 모든 프로젝트 페이지 상단탭 project_top.jsp include로 변경 -->
							<nav class="DetailNavbar_container__3SkEf">
								<jsp:include page="../inc/project_top.jsp"></jsp:include>
							</nav>
							<div class="HeaderLayout_container__3fXkO">
								<div class="HeaderLayout_contents__F4hlC">
									<h2 class="SettlementInfoContainer_title__QUu6A">대표자 및 정산
										정보</h2>
									<p class="SettlementInfoContainer_desc__9cDx1">입력한 정보로 관련
										서류 작성과 정산이 진행돼요. 대표자 및 정산 정보를 잘못 작성한다면 프로젝트 승인이 지연될 수 있어요. 잘못된
										내용이 없는지 확인 후 제출해 주세요.</p>
								</div>
								<div class="HeaderLayout_guideWrapper__WXeX-">
									<button class="BannerLinkButton_container__3MHMT" type="button">
										<div class="BannerLinkButton_icon__UDYk2">
											<i class="BannerGuide_guideIcon__1bhqD" aria-hidden="true"></i>
										</div>
										<div class="BannerLinkButton_content__BzS52">
											<div class="BannerLinkButton_title__rE4Eg">다른 메이커들 다
												본다는</div>
											<div class="BannerLinkButton_description__yl6rf">필수 가이드
												모음집</div>
										</div>
									</button>
								</div>
							</div>
							<form class="SettlementInfoContainer_form__3HCjb">
								<div class="MakerInfoSection_container__1mo68">
									<h3 class="MakerInfoSection_title__1EKvu">대표자 정보</h3>
									<div class="MouseOverGuide_container__3jDBz"
										style="margin-bottom: 16px;">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="RepresentativeNameField_title__3XwTm">대표자명</div>
											<p class="RepresentativeNameField_desc__rHa7s">
												개인 사업자나 법인 사업자는 사업자 등록증의 대표자명을 써 주세요.<br>개인은 주민등록증 속
												성명을 써 주세요.
											</p>
											<div class="TextField_textField__23rCe TextField_sm__lHdDB">
												<label></label>
												<div class="TextField_field__1E9vt">
													<input placeholder="대표자명" maxlength="64" type="text" id="rep_name" name="reo_name"
														class="Input_input__2kAAL Input_sm__3Y9Qi"
														aria-invalid="false" value="">
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div
												class="MouseOverGuide_guide__13NEZ MouseOverGuide_isEmpty__2pOmW">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE"></div>
											</div>
										</div>
									</div>
									<div class="MouseOverGuide_container__3jDBz"
										style="margin-bottom: 16px;">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="TextField_textField__23rCe TextField_sm__lHdDB">
												<label>대표자 이메일</label>
												<div class="TextField_field__1E9vt">
													<input placeholder="대표자 이메일" maxlength="64" type="text" id="rep_email" name="reo_email"
														class="Input_input__2kAAL Input_sm__3Y9Qi"
														aria-invalid="false" value="">
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div
												class="MouseOverGuide_guide__13NEZ MouseOverGuide_isEmpty__2pOmW">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE"></div>
											</div>
										</div>
									</div>
									<div>
										<div class="IdentifyVerificationField_title__32YXB">대표자
											본인 인증</div>
										<div class="MouseOverGuide_container__3jDBz"
											style="margin-bottom: 16px;">
											<div class="MouseOverGuide_contents__APrXG">
												<button
													class="Button_button__1e2A2 Button_tertiaryMint__3uibN Button_contained__TTXSM Button_lg__3vRQD IdentifyVerificationField_button__3OoSp"
													type="button">
													<span><span class="Button_children__q9VCZ">본인
															인증</span></span>
												</button>
											</div>
											<div class="MouseOverGuide_guideWrapper__28wbb">
												<div
													class="MouseOverGuide_guide__13NEZ MouseOverGuide_isEmpty__2pOmW">
													<h5 class="MouseOverGuide_title__1sJjC"></h5>
													<div class="MouseOverGuide_content__I9HrE"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="SettlementInfoSection_container__1NM2D">
									<h3 class="SettlementInfoSection_title__-9V84">정산 정보</h3>
									<div class="MouseOverGuide_container__3jDBz">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="SplitSettlementText_box__2DYpl">
												<div class="SplitSettlementText_imageBox__T0IHY">
													<img
														src="https://static.wadiz.kr/studio/funding/static/media/contractInfoSplit.6fa21f99.svg"
														alt="refundImage">
												</div>
												<ul>
													<li>・ 프로젝트가 성공적으로 종료되면 종료일 기준 약 10영업일 이내에 바로 정산(1차
														정산)이 시작됩니다.</li>
													<li>・ 바로 정산 단계에서는 최종 금액의 일부가 먼저 지급됩니다.
														<div class="SplitSettlementText_subText__1v-SG">
															※ 최종 결제 금액 1,000만 원 미만<br>최종 결제 금액에서 와디즈 중개 수수료 +
															결제(카드사 수수료 등) 수수료를 제외한 금액의 80% 지급<br>※ 최종 결제 금액
															1,000만 원 이상<br>최종 결제 금액에서 와디즈 중개 수수료 + 결제(카드사 수수료 등)
															수수료를 제외한 금액의 60% 지급<br>
														</div>
													</li>
													<li>・ 리워드 발송과 환불이 완료되면 최종 정산 금액이 확정됩니다.</li>
													<li>・ 최종 정산 금액 확정 5영업일 이내에 최종 정산(2차 정산)이 진행됩니다.</li>
													<li>・ 바로 정산과 최종 정산이 시작되면 정산 내역서와 함께 정산에 대한 안내가 메일로
														발송됩니다.</li>
													<li>・ 정책과 수수료에 대한 더 자세한 내용은<a
														href="https://www.wadiz.kr/link/makerstudio_settlement"
														target="_blank" rel="noreferrer">와디즈 정산 정책</a>을 확인해 주세요.
													</li>
												</ul>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div
												class="MouseOverGuide_guide__13NEZ MouseOverGuide_isEmpty__2pOmW">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE"></div>
											</div>
										</div>
									</div>
								</div>
								<div class="AccountInfoSection_container__2ErRK">
									<h3 class="AccountInfoSection_title__J1v1o">세금계산서 발행 정보</h3>
									<div class="MouseOverGuide_container__3jDBz"
										style="margin-bottom: 16px;">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="TextField_textField__23rCe TextField_sm__lHdDB">
												<label>세금계산서 발행 이메일</label>
												<div class="TextField_field__1E9vt">
													<input placeholder="이메일" type="text" id="rep_tax_email" name="rep_tax_email"
														class="Input_input__2kAAL Input_sm__3Y9Qi"
														aria-invalid="false" value="">
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div
												class="MouseOverGuide_guide__13NEZ MouseOverGuide_isEmpty__2pOmW">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE"></div>
											</div>
										</div>
									</div>
									<div>
										<div class="CopyOfAccountField_title__5fERV">계좌정보</div>
										<p class="CopyOfAccountField_desc__1vc0t">
											・ 개인사업자의 경우 본인/사업자 명의 계좌 등록이 가능하며, 법인사업자의 경우 법인계좌만 등록 가능해요.<br>・
											입금이 가능한 계좌인지 확인 후 입력해 주세요.<br>・ 저축성 예금 계좌, 외화 예금 계좌, CMA
											계좌, 평생 계좌번호(휴대전화 번호) 등은 입금이 불가합니다.
										</p>
										<div class="MouseOverGuide_container__3jDBz">
											<div class="MouseOverGuide_contents__APrXG">
												<div class="select-menu">
													<div class=" css-2b097c-container" id="accountBankCode">
														<span aria-live="polite" aria-atomic="false"
															aria-relevant="additions text"
															class="css-7pg0cj-a11yText"></span>
														<div class="select-menu__control css-1y74jpo-control">
															<select style="width: 100%; height: 30px; color:#BBBBBB; padding-left: 13px; font-family: inherit; font-size:14px; border: none;"
															  id="rep_tax_bank" name="rep_tax_bank">
																<option value="" hidden>은행 선택</option>
																<option value="신한은행">신한은행</option>
																<option value="국민은행">국민은행</option>
																<option value="농협은행">농협은행</option>
																<option value="우리은행">우리은행</option>
																<option value="하나은행">KEB하나은행</option>
																<option value="기업은행">기업은행</option>
																<option value="SC은행">SC은행</option>
																<option value="카카오뱅크">카카오뱅크</option>
																<option value="부산은행">부산은행</option>
																<option value="대구은행">대구은행</option>
																<option value="한국씨티은행">한국씨티은행</option>
																<option value="경남은행">경남은행</option>
																<option value="광주은행">광주은행</option>
																<option value="전북은행">전북은행</option>
																<option value="산업은행">KDB산업은행</option>
																<option value="제주은행">제주은행</option>
																<option value="우체국">우체국</option>
																<option value="수협중앙회">수협중앙회</option>
																<option value="신협중앙회">신협중앙회</option>
																<option value="새마을금고중앙회">새마을금고중앙회</option>
																<option value="상호저축은행중앙회">상호저축은행중앙회</option>
																<option value="산림조합중앙회">산림조합중앙회</option>
																<option value="지역농.축협">지역농.축협</option>
																<option value="BNP파리바은">BNP파리바은행</option>
																<option value="도이치은행">도이치은행</option>
																<option value="HSBC은행">HSBC은행</option>
																<option value="JP모간체이스은행">JP모간체이스은행</option>
																<option value="뱅크오브아메리카">뱅크오브아메리카</option>
																<option value="중국공상은행">중국공상은행</option>
																<option value="케이뱅크">케이뱅크</option>
																<option value="신한금융투자">신한금융투자</option>
																<option value="KB증권">KB증권</option>
																<option value="미래에셋대우">미래에셋대우</option>
															</select>
														</div>
													</div>
												</div>
											</div>
											<div class="MouseOverGuide_guideWrapper__28wbb">
												<div
													class="MouseOverGuide_guide__13NEZ MouseOverGuide_isEmpty__2pOmW">
													<h5 class="MouseOverGuide_title__1sJjC"></h5>
													<div class="MouseOverGuide_content__I9HrE"></div>
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_container__3jDBz">
											<div class="MouseOverGuide_contents__APrXG">
												<div class="TextField_textField__23rCe TextField_sm__lHdDB">
													<label></label>
													<div class="TextField_field__1E9vt">
														<input placeholder="계좌번호 ‘-’ 없이 숫자만 입력"
															data-testid="accountNumber" type="tel"
															class="Input_input__2kAAL Input_sm__3Y9Qi"
															aria-invalid="false" value=""
															id="rep_tax_account" name="rep_tax_account">
													</div>
													<em class="HelperMessage_helperMessage__1qZPy">특수
														문자(-)없이 숫자만 입력해 주세요.</em>
												</div>
											</div>
											<div class="MouseOverGuide_guideWrapper__28wbb">
												<div
													class="MouseOverGuide_guide__13NEZ MouseOverGuide_isEmpty__2pOmW">
													<h5 class="MouseOverGuide_title__1sJjC"></h5>
													<div class="MouseOverGuide_content__I9HrE"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="MouseOverGuide_container__3jDBz"
										style="margin-bottom: 16px;">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="TextField_textField__23rCe TextField_sm__lHdDB">
												<label></label>
												<div class="TextField_field__1E9vt">
													<input placeholder="예금주명" type="text" id="rep_tax_depositor" name="rep_tax_depositor"
														class="Input_input__2kAAL Input_sm__3Y9Qi"
														aria-invalid="false" value="">
												</div>
												<em class="HelperMessage_helperMessage__1qZPy">예금주명은
													계좌의 예금주와 동일하게 입력해 주세요.</em>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div
												class="MouseOverGuide_guide__13NEZ MouseOverGuide_isEmpty__2pOmW">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE"></div>
											</div>
										</div>
									</div>
								</div>
								<div class="SettlementInfoContainer_btnWrapper__RI9SY">
									<button
										class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD"
										type="button" id="saveBtn">
										<span><span class="Button_children__q9VCZ">저장하기</span></span>
									</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>