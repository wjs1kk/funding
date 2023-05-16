<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" style="-vh: 9.37px;" class="">
<head>
<title>리워드 설계 | 와디즈 메이커 스튜디오</title>
<link
	href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css"
	rel="stylesheet">
<link
	href="https://static.wadiz.kr/studio/funding/static/css/main.092b721b.chunk.css"
	rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/studio/funding/static/css/9.2112a1bf.chunk.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/studio/funding/static/css/18.725773c4.chunk.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
</head>

<script type="text/javascript">
	$(function() {
		// '리워드를 추가해주세요' 버튼을 누르면 모달창 띄우기
		$(".AddBox_container__39RWm").on("click", function() {
			$("#reward_modal").css("opacity", 1);
		})

		//모달창 X 버튼 누를 시 닫힘
		$(".ConfirmModal_closeIconWrapper__3vX7j").on("click", function() {
			$("#reward_modal").css("opacity", 0);
		})
		//모달창 취소 버튼 누를 시 닫힘
		$("#reward_modal_cancle").on("click", function() {
			$("#reward_modal").css("opacity", 0);
		})

		// 모달창에서 배송 여부(배송, 배송 없음) 클릭시 버튼 색상 변경
		$("#deliveryUsedBtn").on("click", function() {
			$("#deliveryUsedBtn").css("background", "#e7f9f9");
			$("#deliveryUsedBtn").css("border-color", "#00c4c4");
			$("#deliveryUsedCheckIcon").css("color", "#00c4c4");

			$("#deliveryNotUsedBtn").css("background", "transparent");
			$("#deliveryNotUsedBtn").css("border-color", "#cdd3d8");
			$("#deliveryNotUsedCheckIcon").css("color", "#adb5bd");
		})

		$("#deliveryNotUsedBtn").on("click", function() {
			$("#deliveryNotUsedBtn").css("background", "#e7f9f9");
			$("#deliveryNotUsedBtn").css("border-color", "#00c4c4");
			$("#deliveryNotUsedCheckIcon").css("color", "#00c4c4");

			$("#deliveryUsedBtn").css("background", "transparent");
			$("#deliveryUsedBtn").css("border-color", "#cdd3d8");
			$("#deliveryUsedCheckIcon").css("color", "#adb5bd");

		})
		
		// 리워드 추가 모달창에서 '추가 버튼 누를 시 모달창이 꺼지고 추가된 리워드 append'
		// 나중에 AJAX 리스트 출력으로 바꿀 것임.
		$("#rewardAddBtn").on("click", function() {
			$("#reward_modal").css("opacity", 0);
			$("#rewardAddSection").append('<div class="FundingConditionRewardItem_container__1aQKY spacing-4">'
				+'<div class="FundingConditionRewardItem_header__3LoHV">'
				+'<div class="FundingConditionRewardItem_amount__13WhI">30,000원</div>'
				+'<span class="Badge_container__3mdFR Badge_visible__2c54z">'
				+'<span class="Badge_badge__zKi0D Badge_label__2iNzD Badge_md__YzReR Badge_primary__3jwLR Badge_tertiary__-ciUe">제한 수량 1,000개</span>'
				+'</span>'
				+'</div>'
				+'<hr class="Divider_divider__iEd6P Divider_horizontal__2aRDB Divider_lightBG__1SKWl Divider_spacing5__1JRsJ Divider_caption2__1zTI_">'
				+'<h4 class="FundingConditionRewardItem_name__Q9cMr">리워드명</h4>'
				+'<p class="FundingConditionRewardItem_description__3Yhpu">리워드 설명</p>'
				+'<div class="FundingConditionRewardItem_shipping__1XIAG">'
				+'<div class="FundingConditionRewardItem_shippingCharge__J2R07">'
				+'<div>배송비</div>'
				+'<div>3,000원</div>'
				+'</div>'
				+'<div class="FundingConditionRewardItem_shippingPeriod__1BURI">'
				+'<div>리워드 발송 시작일</div>'
				+'<div>2023년 06월 초 (1~10일)</div>'
				+'</div>'
				+'</div>'
				+'<div class="FundingConditionRewardItem_buttonGroup__19GER">'
				+'<div>'
				+'<button class="Button_button__1e2A2 Button_xs__x1b7M Button_startIcon__19sdm" type="button">'
				+'<span>'
				+'<svg viewBox="0 0 40 40" focusable="false"'
				+'role="presentation"'
				+'class="withIcon_icon__3lrgp Button_icon__1qsE3"'
				+'aria-hidden="true">'
				+'<path fill="none" d="M0 0h40v40H0z"></path>'
				+'<path d="M9 6h15V4H7v28h2V6zm17 9h7l-7-7v7z"></path>'
				+'<path d="M31 34H13V10h11V8H11v28h22V17h-2v17z"></path></svg><span class="Button_children__q9VCZ">복사</span>'
				+'</span>'
				+'</button>'
				+'</div>'
				+'<div>'
				+'<button class="Button_button__1e2A2 Button_xs__x1b7M Button_startIcon__19sdm" type="button">'
				+'<span>'
				+'<svg viewBox="0 0 32 32" focusable="false"'
				+'role="presentation"'
				+'class="withIcon_icon__3lrgp Button_icon__1qsE3"'
				+'aria-hidden="true">'
				+'<path d="M24 1.6L1.6 24v6.4H8L30.4 8zM7.36 28.8H3.2v-4.16L19.76 8.08l4.16 4.16zm17.68-17.68l-4.16-4.16L24 3.84 28.16 8z"></path>'
				+'</svg>'
				+'<span class="Button_children__q9VCZ">수정</span>'
				+'</span>'
				+'</button>'
				+'<button class="Button_button__1e2A2 Button_xs__x1b7M Button_startIcon__19sdm" type="button">'
				+'<span>'
				+'<svg viewBox="0 0 40 40" focusable="false"'
				+'role="presentation"'
				+'class="withIcon_icon__3lrgp Button_icon__1qsE3"'
				+'aria-hidden="true">'
				+'<path d="M36.67 5.31H3.33v2h2.82v31.88h27.7V7.31h2.82zm-4.82 31.88H8.15V7.31h23.7zM15 .81h10v2H15z"></path>'
				+'<path d="M14.75 15.18h2v15h-2zm8.5 0h2v15h-2z"></path></svg>'
				+'<span class="Button_children__q9VCZ">삭제</span>'
				+'</span>'
				+'</button>'
				+'</div>'
				+'</div>'
			)
		})
		
	})
	
</script>
<body class="">
	<div data-react-modal-body-trap="" tabindex="0"
		style="position: absolute; opacity: 0;" id="reward_modal">
		<div class="ReactModalPortal">
			<div
				class="ReactModal__Overlay ReactModal__Overlay--after-open ConfirmModal_overlay__-jHao waffle__modal__overlay"
				style="background-color: rgba(0, 0, 0, 0.2);">
				<div
					class="ReactModal__Content ReactModal__Content--after-open ConfirmModal_confirmModal__3LOlx ConfirmModal_sizeXl__15YuF FundingConditionRewardModalContainer_container__1Avmk"
					tabindex="-1" role="dialog" aria-modal="true">
					<div class="ConfirmModal_header__3_Qxt">
						<div class="ConfirmModal_closeIconRoot__1iJoQ">
							<button class="ConfirmModal_closeIconWrapper__3vX7j">
								<svg viewBox="0 0 40 40" focusable="false" role="presentation"
									class="withIcon_icon__1Oal1 ConfirmModal_closeIcon__3E6vy"
									aria-hidden="true">
									<path
										d="M33.4 8L32 6.6l-12 12-12-12L6.6 8l12 12-12 12L8 33.4l12-12 12 12 1.4-1.4-12-12 12-12z"></path></svg>
							</button>
						</div>
						<div title="리워드 추가"
							class="ConfirmModal_title__sFrkL ConfirmModal_showCloseButton__1P8aT">리워드
							추가</div>
					</div>
					<div
						class="ConfirmModal_content__1rEr7 ConfirmModal_hasTitle__3Fk6J">
						<div class="spacing-8" style="width: 50%;">
							<div
								class="TextField_textField__23rCe TextField_md__2zsQn TextField_right__1qt_G">
								<label>금액</label>
								<div class="TextField_field__1E9vt">
									<input placeholder="0" type="text"
										class="Input_input__2kAAL Input_md__3-eZ6"
										aria-invalid="false" value=""><span
										class="TextField_fixedText__2vIuK TextField_endText__3jIeG">원</span>
								</div>
							</div>
						</div>
						<div
							class="TextField_textField__23rCe TextField_md__2zsQn spacing-8">
							<label>리워드명</label>
							<div class="TextField_field__1E9vt">
								<input placeholder="예시) [얼리버드] 베이지 이불∙베개 1세트" maxlength="60"
									type="text" class="Input_input__2kAAL Input_md__3-eZ6"
									aria-invalid="false" value="">
							</div>
							<em class="HelperMessage_helperMessage__1qZPy">60자 남음</em>
						</div>
						<div
							class="TextField_textField__23rCe TextField_md__2zsQn spacing-8">
							<label>리워드 설명</label>
							<div class="TextField_field__1E9vt">
								<textarea placeholder="리워드 구성과 혜택을 간결하게 설명해 주세요."
									maxlength="400" rows="3"
									class="Textarea_textarea__2swOj undefined"
									style="height: 106px;"></textarea>
								<textarea aria-hidden="true" readonly="" tabindex="-1"
									class="Textarea_textarea__2swOj undefined"
									style="visibility: hidden; position: absolute; overflow: hidden; height: 0px; top: 0px; left: 0px; transform: translateZ(0px); pointer-events: none; width: 754px;"></textarea>
							</div>
							<em class="HelperMessage_helperMessage__1qZPy">400자 남음</em>
						</div>
						<div class="select-menu spacing-2" style="width: 50%;">
							<div class="label">옵션 설정</div>
							<div class=" css-2b097c-container">
								<span aria-live="polite" aria-atomic="false"
									aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>
								<div class="select-menu__control css-1m205as-control">
									<div
										class="select-menu__value-container select-menu__value-container--has-value css-1hwfws3">
										<div class="select-menu__single-value css-1uccc91-singleValue">직접
											입력 옵션 (각인, 메시지 등)</div>
										<input id="react-select-714-input" readonly="" tabindex="0"
											aria-autocomplete="list" class="css-62g3xt-dummyInput"
											value="">
									</div>
									<div class="select-menu__indicators css-1wy0on6">
										<span class="select-menu__indicator-separator css-0"></span>
										<div
											class="select-menu__indicator select-menu__dropdown-indicator css-egf9x8-indicatorContainer"
											aria-hidden="true">
											<svg viewBox="0 0 32 32" focusable="false"
												role="presentation" class="withIcon_icon__3lrgp"
												aria-hidden="true" style="color: rgb(134, 142, 150);">
												<path
													d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path></svg>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="spacing-8 is-hidden">
							<label class="wz label Label_label__3oH0h">제한 수량 설정</label>
							<div
								class="FundingConditionRewardModalContainer_selectButtonGroup__3KXbf">
								<button
									class="Button_button__1e2A2 Button_secondary__JuhOu Button_lg__3vRQD Button_startIcon__19sdm FundingConditionRewardModalContainer_button__MT7qc"
									type="button">
									<span><svg viewBox="0 0 48 48" focusable="false"
											role="presentation"
											class="withIcon_icon__3lrgp Button_icon__1qsE3"
											aria-hidden="true" style="color: rgb(173, 181, 189);">
											<path
												d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg><span
										class="Button_children__q9VCZ">리워드 단위</span></span>
								</button>
								<button
									class="Button_button__1e2A2 Button_secondary__JuhOu Button_lg__3vRQD Button_startIcon__19sdm FundingConditionRewardModalContainer_button__MT7qc"
									type="button">
									<span><svg viewBox="0 0 48 48" focusable="false"
											role="presentation"
											class="withIcon_icon__3lrgp Button_icon__1qsE3"
											aria-hidden="true" style="color: rgb(173, 181, 189);">
											<path
												d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg><span
										class="Button_children__q9VCZ">옵션 단위</span></span>
								</button>
							</div>
						</div>
						<div
							class="TextField_textField__23rCe TextField_md__2zsQn spacing-8">
							<label></label>
							<div class="TextField_field__1E9vt">
								<input placeholder="입력해 주세요" type="text"
									class="Input_input__2kAAL Input_md__3-eZ6" aria-invalid="false"
									value="">
							</div>
							<em class="HelperMessage_helperMessage__1qZPy">예시) 한글 10자,
								영문 15자 이내의 각인 메시지를 입력해 주세요.</em>
						</div>
						<div class="is-hidden">
							<div
								class="TextField_textField__23rCe TextField_md__2zsQn spacing-8">
								<label>옵션 입력</label>
								<div class="TextField_field__1E9vt">
									<textarea
										placeholder="옵션을 입력해 주세요. 옵션은 엔터로 구분할 수 있어요.
                          예시)
                          블랙-230mm
                          화이트-240mm"
										rows="4" class="Textarea_textarea__2swOj undefined"
										style="min-height: 160px; height: 2px; overflow: hidden;">ㅇ</textarea>
									<textarea aria-hidden="true" readonly="" tabindex="-1"
										class="Textarea_textarea__2swOj undefined"
										style="visibility: hidden; position: absolute; overflow: hidden; height: 0px; top: 0px; left: 0px; transform: translateZ(0px); pointer-events: none; width: 100%;"></textarea>
								</div>
							</div>
							<div class="select-menu spacing-8" style="width: 50%;">
								<div class="label">옵션 목록</div>
								<div class="select-menu--is-disabled css-14jk2my-container">
									<span aria-live="polite" aria-atomic="false"
										aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>
									<div
										class="select-menu__control select-menu__control--is-disabled css-fz5uxt-control">
										<div class="select-menu__value-container css-1hwfws3">
											<div class="select-menu__placeholder css-1wa3eu0-placeholder">옵션
												미리 보기</div>
											<input id="react-select-715-input" readonly="" disabled=""
												tabindex="0" aria-autocomplete="list"
												class="css-62g3xt-dummyInput" value="">
										</div>
										<div class="select-menu__indicators css-1wy0on6">
											<span class="select-menu__indicator-separator css-0"></span>
											<div
												class="select-menu__indicator select-menu__dropdown-indicator css-egf9x8-indicatorContainer"
												aria-hidden="true">
												<svg viewBox="0 0 32 32" focusable="false"
													role="presentation" class="withIcon_icon__3lrgp"
													aria-hidden="true" style="color: rgb(134, 142, 150);">
													<path
														d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path></svg>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							class="FundingConditionRewardOptionSettingContainer_container__1lKeh spacing-8 is-hidden">
							<label class="wz label Label_label__3oH0h">옵션 입력</label>
							<div
								class="FundingConditionRewardOptionSettingFieldDesktop_container__2KOHQ spacing-6">
								<div
									class="TextField_textField__23rCe TextField_md__2zsQn FundingConditionRewardOptionSettingFieldDesktop_textField__8TXpt">
									<label>옵션명</label>
									<div class="TextField_field__1E9vt">
										<input name="reward.optionSettings[0].optionName"
											placeholder="예시) 색상" maxlength="16" type="text"
											class="Input_input__2kAAL Input_md__3-eZ6"
											aria-invalid="false" value="">
									</div>
								</div>
								<div
									class="TextField_textField__23rCe TextField_md__2zsQn FundingConditionRewardOptionSettingFieldDesktop_textField__8TXpt">
									<label><div>
											<button type="button" class="Tooltip_button__26Zz0"
												title="옵션 값" aria-describedby="Tooltip_6">
												<span class="Tooltip_label__1s0-R">옵션 값</span><span
													class="Tooltip_helpIconWrap__3JEtO"><svg
														viewBox="0 0 40 40" focusable="false" role="presentation"
														class="withIcon_icon__1Oal1 Tooltip_helpOutlineIcon__34Kpp"
														aria-hidden="true">
														<path fill="none" d="M0 0h40v40H0z"></path>
														<path
															d="M20 39a19 19 0 1 1 19-19 19.06 19.06 0 0 1-19 19zm0-36a17 17 0 1 0 17 17A17 17 0 0 0 20 3z"></path>
														<path
															d="M24.34 10A5.75 5.75 0 0 0 20 8.33a5.7 5.7 0 0 0-6 6h2a3.7 3.7 0 0 1 4-4 3.7 3.7 0 0 1 4 4A4.29 4.29 0 0 1 22 18l-.7.6a6.51 6.51 0 0 0-2.3 5.7h2c0-1.9 0-2.6 1.7-4.3l.6-.5a6.28 6.28 0 0 0 2.7-5.2 5.73 5.73 0 0 0-1.66-4.3zM20 26.87a1.8 1.8 0 1 0 0 3.6 1.8 1.8 0 1 0 0-3.6z"></path></svg>
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__1Oal1 Tooltip_helpIcon__MM_KL"
														aria-hidden="true">
														<path fill="none" d="M0 0h40v40H0z"></path>
														<path
															d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm0 29.5a1.8 1.8 0 1 1 1.8-1.79 1.8 1.8 0 0 1-1.8 1.75zm6-16.13a6.28 6.28 0 0 1-2.7 5.2l-.6.5c-1.7 1.7-1.7 2.4-1.7 4.3h-2a6.51 6.51 0 0 1 2.3-5.7L22 18a4.29 4.29 0 0 0 2-3.7 3.7 3.7 0 0 0-4-4 3.7 3.7 0 0 0-4 4h-2a5.7 5.7 0 0 1 6-6 5.7 5.7 0 0 1 6 6z"></path></svg></span>
											</button>
										</div></label>
									<div class="TextField_field__1E9vt">
										<input placeholder="예시) 블랙,화이트,레드" type="text"
											class="Input_input__2kAAL Input_md__3-eZ6"
											aria-invalid="false" value="">
									</div>
								</div>
								<button
									class="Button_button__1e2A2 Button_tertiaryGrey__3gRf4 Button_contained__TTXSM Button_md__1FRMG Button_iconOnly__34khK iconButton"
									type="button">
									<span><span class="Button_children__q9VCZ"><svg
												viewBox="0 0 32 32" focusable="false" role="presentation"
												class="withIcon_icon__3lrgp" aria-hidden="true"
												style="width: 20px; height: 20px;">
												<path
													d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg></span></span>
								</button>
							</div>
							<button
								class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD Button_endIcon__3ZOY3 Button_block__2mEqp Button_disabled__3x0Tg update-button"
								type="button" disabled="">
								<span><span class="Button_children__q9VCZ">옵션 목록
										적용</span> <svg viewBox="0 0 32 32" focusable="false"
										role="presentation"
										class="withIcon_icon__3lrgp Button_icon__1qsE3"
										aria-hidden="true">
										<path
											d="M15.2 4.8v19.36l-8.48-8.48L5.6 16.8 16 27.2l10.4-10.4-1.12-1.12-8.48 8.48V4.8h-1.6z"></path></svg></span>
							</button>
						</div>
						<div
							class="FundingConditionRewardOptionsContainer_container__2WAym is-hidden spacing-8">
							<label class="wz label Label_label__3oH0h">옵션 목록 (총 <data
									value="0">0</data>개)
							</label>
							<div
								class="FundingConditionRewardOptionsContainer_toolbar__2GNM5">
								<button
									class="Button_button__1e2A2 Button_secondary__JuhOu Button_sm__dnvmq Button_disabled__3x0Tg"
									type="button" disabled="">
									<span><span class="Button_children__q9VCZ">선택 목록
											삭제</span></span>
								</button>
								<div
									class="FundingConditionRewardOptionsContainer_inputFieldGroup__BLocU is-hidden">
									<div
										class="FundingConditionRewardOptionsContainer_label__1KZTo">제한
										수량</div>
									<input placeholder="옵션별 제한 수량" maxlength="6" type="text"
										class="Input_input__2kAAL Input_sm__3Y9Qi"
										aria-invalid="false" value="" style="width: 176px;">
									<button
										class="Button_button__1e2A2 Button_secondary__JuhOu Button_contained__TTXSM Button_md__1FRMG Button_disabled__3x0Tg"
										type="button" disabled="">
										<span><span class="Button_children__q9VCZ">선택 목록
												일괄 적용</span></span>
									</button>
								</div>
							</div>
							<div class="table">
								<div class="ant-table-wrapper css-9ntgx0">
									<div class="ant-spin-nested-loading css-9ntgx0">
										<div class="ant-spin-container">
											<div
												class="ant-table ant-table-bordered ant-table-empty ant-table-fixed-header ant-table-fixed-column ant-table-scroll-horizontal ant-table-has-fix-left">
												<div class="ant-table-container">
													<div class="ant-table-header" style="overflow: hidden;">
														<table style="table-layout: fixed;">
															<thead class="ant-table-thead">
																<tr>
																	<th scope="col"
																		class="ant-table-cell ant-table-selection-column ant-table-cell-fix-left ant-table-cell-fix-left-last"
																		style="position: sticky; left: 0px;"><div
																			class="ant-table-selection">
																			<label
																				class="ant-checkbox-wrapper ant-checkbox-wrapper-disabled css-9ntgx0"><span
																				class="ant-checkbox css-9ntgx0 ant-checkbox-disabled"><input
																					type="checkbox" disabled=""
																					class="ant-checkbox-input" aria-label="Select all"
																					value=""><span class="ant-checkbox-inner"></span></span></label>
																		</div></th>
																	<th scope="col" class="ant-table-cell"
																		style="text-align: center;">옵션명</th>
																	<td class="ant-table-cell ant-table-cell-scrollbar"></td>
																</tr>
															</thead>
														</table>
													</div>
													<div class="ant-table-body"
														style="overflow: auto scroll; max-height: 420px;">
														<table
															style="width: max-content; min-width: 100%; table-layout: auto;">
															<colgroup>
																<col class="ant-table-selection-col" style="width: 8%;">
															</colgroup>
															<tbody class="ant-table-tbody">
																<tr aria-hidden="true" class="ant-table-measure-row"
																	style="height: 0px; font-size: 0px;">
																	<td style="padding: 0px; border: 0px; height: 0px;"><div
																			style="height: 0px; overflow: hidden;">&nbsp;</div></td>
																	<td style="padding: 0px; border: 0px; height: 0px;"><div
																			style="height: 0px; overflow: hidden;">&nbsp;</div></td>
																</tr>
																<tr class="ant-table-placeholder">
																	<td colspan="2" class="ant-table-cell"><div
																			class="ant-table-expanded-row-fixed"
																			style="width: 0px; position: sticky; left: 0px; overflow: hidden;"></div></td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<em
								class="HelperMessage_helperMessage__1qZPy HelperMessage_error__2qxyN"></em>
						</div>
						<div class="spacing-8" style="width: 50%;">
							<div
								class="TextField_textField__23rCe TextField_md__2zsQn TextField_right__1qt_G">
								<label>제한 수량</label>
								<div class="TextField_field__1E9vt">
									<input placeholder="0" type="text"
										class="Input_input__2kAAL Input_md__3-eZ6"
										aria-invalid="false" value=""><span
										class="TextField_fixedText__2vIuK TextField_endText__3jIeG">개</span>
								</div>
							</div>
						</div>
						<div class="spacing-8">
							<label class="wz label Label_label__3oH0h">배송 여부</label>
							<div
								class="FundingConditionRewardModalContainer_selectButtonGroup__3KXbf">
								<button
									class="Button_button__1e2A2 Button_secondary__JuhOu Button_lg__3vRQD Button_startIcon__19sdm FundingConditionRewardModalContainer_button__MT7qc"
									type="button" id="deliveryUsedBtn">
									<span><svg viewBox="0 0 48 48" focusable="false"
											role="presentation"
											class="withIcon_icon__3lrgp Button_icon__1qsE3"
											id="deliveryUsedCheckIcon" aria-hidden="true"
											style="color: rgb(173, 181, 189);">
											<path
												d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg><span
										class="Button_children__q9VCZ">배송</span></span>
								</button>
								<button
									class="Button_button__1e2A2 Button_secondary__JuhOu Button_lg__3vRQD Button_startIcon__19sdm FundingConditionRewardModalContainer_button__MT7qc"
									type="button" id="deliveryNotUsedBtn">
									<span><svg viewBox="0 0 48 48" focusable="false"
											role="presentation"
											class="withIcon_icon__3lrgp Button_icon__1qsE3"
											id="deliveryNotUsedCheckIcon" aria-hidden="true"
											style="color: rgb(173, 181, 189);">
											<path
												d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg><span
										class="Button_children__q9VCZ">배송 없음</span></span>
								</button>
							</div>
						</div>
						<div class="spacing-8" style="width: 50%;">
							<div
								class="TextField_textField__23rCe TextField_md__2zsQn TextField_right__1qt_G">
								<label>배송비</label>
								<div class="TextField_field__1E9vt">
									<input placeholder="0" type="text"
										class="Input_input__2kAAL Input_md__3-eZ6"
										aria-invalid="false" value=""><span
										class="TextField_fixedText__2vIuK TextField_endText__3jIeG">원</span>
								</div>
								<em class="HelperMessage_helperMessage__1qZPy">무료배송인 경우 0원을
									입력해 주세요.</em>
							</div>
						</div>
						<div class="spacing-9">
							<label class="wz label Label_label__3oH0h">발송 시작일</label>
							<div
								class="FundingConditionRewardModalContainer_selectButtonGroup__3KXbf">
								<div
									class="select-menu FundingConditionRewardModalContainer_selectMenu__2SdtX">
									<div class=" css-2b097c-container">
										<span aria-live="polite" aria-atomic="false"
											aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>
										<div class="select-menu__control css-1m205as-control">
											<div class="select-menu__value-container css-1hwfws3">
												<div
													class="select-menu__placeholder css-1wa3eu0-placeholder">연도/월</div>
												<input id="react-select-716-input" readonly="" tabindex="0"
													aria-autocomplete="list" class="css-62g3xt-dummyInput"
													value="">
											</div>
											<div class="select-menu__indicators css-1wy0on6">
												<span class="select-menu__indicator-separator css-0"></span>
												<div
													class="select-menu__indicator select-menu__dropdown-indicator css-egf9x8-indicatorContainer"
													aria-hidden="true">
													<svg viewBox="0 0 32 32" focusable="false"
														role="presentation" class="withIcon_icon__3lrgp"
														aria-hidden="true" style="color: rgb(134, 142, 150);">
														<path
															d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path></svg>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div
									class="select-menu FundingConditionRewardModalContainer_selectMenu__2SdtX">
									<div class=" css-2b097c-container">
										<span aria-live="polite" aria-atomic="false"
											aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>
										<div class="select-menu__control css-1m205as-control">
											<div class="select-menu__value-container css-1hwfws3">
												<div
													class="select-menu__placeholder css-1wa3eu0-placeholder">시기</div>
												<input id="react-select-717-input" readonly="" tabindex="0"
													aria-autocomplete="list" class="css-62g3xt-dummyInput"
													value="">
											</div>
											<div class="select-menu__indicators css-1wy0on6">
												<span class="select-menu__indicator-separator css-0"></span>
												<div
													class="select-menu__indicator select-menu__dropdown-indicator css-egf9x8-indicatorContainer"
													aria-hidden="true">
													<svg viewBox="0 0 32 32" focusable="false"
														role="presentation" class="withIcon_icon__3lrgp"
														aria-hidden="true" style="color: rgb(134, 142, 150);">
														<path
															d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path></svg>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							class="FundingConditionRewardModalContainer_buttonGroup__3TYhj">
							<button
								class="Button_button__1e2A2 Button_secondary__JuhOu Button_lg__3vRQD Button_block__2mEqp"
								id="reward_modal_cancle" type="button">
								<span><span class="Button_children__q9VCZ">취소</span></span>
							</button>
							<button
								class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD Button_block__2mEqp"
								type="button" id="rewardAddBtn">
								<span><span class="Button_children__q9VCZ">추가</span></span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
	<div id="root">
		<div id="AppLayout_Container" class="AppLayout_container__3zbzb">
			<div class="AppLayout_main__14bCi">

				<!-- 왼쪽 사이드바 -->
				<jsp:include page="../inc/create_project_side.jsp"></jsp:include>

				<div id="AppLayout_Contents" class="AppLayout_contents__wv3DF">
					<nav class="ProjectNavbar_container__3ybm3">
						<div
							style="background: url(&amp;quot;https://static.wadiz.kr/studio/funding/static/media/wadiz-logo.549edcd7.svg&amp;quot;) 50% center/contain no-repeat; width: 129px; height: 48px; cursor: pointer;"></div>
						<div class="ProjectNavbar_maker__3c-SX">
							<div class="Avatar_avatar__2DI5d Avatar_xs__i50kh">
								<span></span>
							</div>
							<div>김동욱</div>
						</div>
						<div class="ProjectNavbar_buttonGroup__219eP">
							<div class="PreviewButton_container__1P-_4">
								<button
									class="Button_button__1e2A2 Button_primary__PxOJr Button_md__1FRMG Button_circular__3NpOv"
									type="button">
									<span><span class="Button_children__q9VCZ">미리 보기</span></span>
								</button>
							</div>
							<button
								class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_md__1FRMG Button_circular__3NpOv"
								type="button">
								<span><span class="Button_children__q9VCZ">임시 저장</span></span>
							</button>
							<div class="AnnouncementButton_container__1p1gr" role="button">
								<img class="AnnouncementButton_icon__29AtY"
									src="https://static.wadiz.kr/studio/funding/static/media/announcement.56f4b8e3.svg"
									alt="" aria-hidden="true"><span
									class="Badge_container__3mdFR AnnouncementButton_badge__2Jq25"></span>
								<div class="AnnouncementPopover_container__51hBA">
									<div
										class="AnnouncementList_container__3Y83C AnnouncementPopover_list__2F5OR">
										<h2 class="AnnouncementList_title__3ydqj">안내</h2>
										<ul class="AnnouncementList_list__SiNbg">
											<li class="AnnouncementListItem_container__1RcK9"><div
													class="AnnouncementListItem_badgeArea__1SUhX">
													<span class="Badge_container__3mdFR Badge_visible__2c54z"><span
														class="Badge_badge__zKi0D Badge_label__2iNzD Badge_md__YzReR Badge_info__MW_1H Badge_tertiary__-ciUe">중요</span></span>
												</div>
												<div class="AnnouncementListItem_content__JdK0M">
													<div class="AnnouncementListItem_info__3TWyQ">
														<div class="AnnouncementListItem_header__72g1V">서비스</div>
														<div class="AnnouncementListItem_registeredDate__3QNjz">4월
															19일</div>
													</div>
													<div
														class="AnnouncementListItem_title__3s-2e AnnouncementListItem_bold__2IKe5">서포터
														안심번호 서비스 도입</div>
												</div></li>
											<li class="AnnouncementListItem_container__1RcK9"><div
													class="AnnouncementListItem_badgeArea__1SUhX">
													<span class="Badge_container__3mdFR Badge_visible__2c54z"><span
														class="Badge_badge__zKi0D Badge_label__2iNzD Badge_md__YzReR Badge_info__MW_1H Badge_tertiary__-ciUe">중요</span></span>
												</div>
												<div class="AnnouncementListItem_content__JdK0M">
													<div class="AnnouncementListItem_info__3TWyQ">
														<div class="AnnouncementListItem_header__72g1V">서비스</div>
														<div class="AnnouncementListItem_registeredDate__3QNjz">4월
															19일</div>
													</div>
													<div
														class="AnnouncementListItem_title__3s-2e AnnouncementListItem_bold__2IKe5">프리오더
														서비스 정책 변경 안내</div>
												</div></li>
											<li class="AnnouncementListItem_container__1RcK9"><div
													class="AnnouncementListItem_badgeArea__1SUhX"></div>
												<div class="AnnouncementListItem_content__JdK0M">
													<div class="AnnouncementListItem_info__3TWyQ">
														<div class="AnnouncementListItem_header__72g1V">서비스</div>
														<div class="AnnouncementListItem_registeredDate__3QNjz">4월
															19일</div>
													</div>
													<div class="AnnouncementListItem_title__3s-2e">정보제공고시
														개정에 따른 서비스 변경</div>
												</div></li>
											<li class="AnnouncementListItem_container__1RcK9"><div
													class="AnnouncementListItem_badgeArea__1SUhX"></div>
												<div class="AnnouncementListItem_content__JdK0M">
													<div class="AnnouncementListItem_info__3TWyQ">
														<div class="AnnouncementListItem_header__72g1V">서비스</div>
														<div class="AnnouncementListItem_registeredDate__3QNjz">2월
															2일</div>
													</div>
													<div class="AnnouncementListItem_title__3s-2e">SNS 광고
														수수료 변경 안내</div>
												</div></li>
											<li class="AnnouncementListItem_container__1RcK9"><div
													class="AnnouncementListItem_badgeArea__1SUhX"></div>
												<div class="AnnouncementListItem_content__JdK0M">
													<div class="AnnouncementListItem_info__3TWyQ">
														<div class="AnnouncementListItem_header__72g1V">정책</div>
														<div class="AnnouncementListItem_registeredDate__3QNjz">12월
															13일</div>
													</div>
													<div class="AnnouncementListItem_title__3s-2e">프리오더
														서비스 심사 정책 변경</div>
												</div></li>
											<li class="AnnouncementListItem_container__1RcK9"><div
													class="AnnouncementListItem_badgeArea__1SUhX"></div>
												<div class="AnnouncementListItem_content__JdK0M">
													<div class="AnnouncementListItem_info__3TWyQ">
														<div class="AnnouncementListItem_header__72g1V">정책</div>
														<div class="AnnouncementListItem_registeredDate__3QNjz">12월
															2일</div>
													</div>
													<div class="AnnouncementListItem_title__3s-2e">펀딩 요금제
														수수료 개편 안내</div>
												</div></li>
											<li class="AnnouncementListItem_container__1RcK9"><div
													class="AnnouncementListItem_badgeArea__1SUhX"></div>
												<div class="AnnouncementListItem_content__JdK0M">
													<div class="AnnouncementListItem_info__3TWyQ">
														<div class="AnnouncementListItem_header__72g1V">서비스</div>
														<div class="AnnouncementListItem_registeredDate__3QNjz">11월
															4일</div>
													</div>
													<div class="AnnouncementListItem_title__3s-2e">앵콜/글로벌
														펀딩의 [프리오더] 노출</div>
												</div></li>
											<li class="AnnouncementListItem_container__1RcK9"><div
													class="AnnouncementListItem_badgeArea__1SUhX"></div>
												<div class="AnnouncementListItem_content__JdK0M">
													<div class="AnnouncementListItem_info__3TWyQ">
														<div class="AnnouncementListItem_header__72g1V">정책</div>
														<div class="AnnouncementListItem_registeredDate__3QNjz">10월
															18일</div>
													</div>
													<div class="AnnouncementListItem_title__3s-2e">개인 후원
														펀딩 정책 개정 안내</div>
												</div></li>
											<li class="AnnouncementListItem_container__1RcK9"><div
													class="AnnouncementListItem_badgeArea__1SUhX"></div>
												<div class="AnnouncementListItem_content__JdK0M">
													<div class="AnnouncementListItem_info__3TWyQ">
														<div class="AnnouncementListItem_header__72g1V">서비스</div>
														<div class="AnnouncementListItem_registeredDate__3QNjz">8월
															30일</div>
													</div>
													<div class="AnnouncementListItem_title__3s-2e">리워드 옵션
														단위 제한 수량 설정</div>
												</div></li>
											<li class="AnnouncementListItem_container__1RcK9"><div
													class="AnnouncementListItem_badgeArea__1SUhX"></div>
												<div class="AnnouncementListItem_content__JdK0M">
													<div class="AnnouncementListItem_info__3TWyQ">
														<div class="AnnouncementListItem_header__72g1V">정책</div>
														<div class="AnnouncementListItem_registeredDate__3QNjz">5월
															18일</div>
													</div>
													<div class="AnnouncementListItem_title__3s-2e">글로벌 펀딩
														프로젝트 정책 개정 안내</div>
												</div></li>
										</ul>
										<div
											class="AnnouncementDetailDrawer_container__3upVM AnnouncementPopover_drawer__2SiY_">
											<div class="AnnouncementDetailDrawer_buttonGroup__3uOYT">
												<button class="AnnouncementDetailDrawer_backButton__29Lhc"
													type="button">
													<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3lrgp AnnouncementDetailDrawer_icon__1Uxof"
														aria-hidden="true" style="width: 24px; height: 24px;">
														<path
															d="M12 20L25 7l1.4 1.4L14.8 20l11.6 11.6L25 33 12 20z"></path></svg>
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<button
								class="Button_button__1e2A2 Button_tertiaryGrey__3gRf4 Button_text__3KyLl Button_md__1FRMG"
								type="button">
								<span><span class="Button_children__q9VCZ">나가기</span></span>
							</button>
						</div>
					</nav>
					<section class="Page_container__1PffN">
						<ol class="Breadcrumb_container__3YjD4">
							<li class="Breadcrumb_item__2r9Ym">프로젝트 관리</li>
							<li class="Breadcrumb_item__2r9Ym">리워드 설계</li>
						</ol>
						<div class="Page_title__1tce_" role="heading" aria-level="2">리워드
							설계</div>
						<div class="Page_description__VzZod">서포터님들에게 제공할 리워드를 입력해
							주세요.</div>
						<div class="Page_guide__3JgBF">
							<button class="BannerLinkButton_container__3MHMT" type="button">
								<div class="BannerLinkButton_icon__UDYk2">
									<i class="BannerGuide_guideIcon__1bhqD" aria-hidden="true"></i>
								</div>
								<div class="BannerLinkButton_content__BzS52">
									<div class="BannerLinkButton_title__rE4Eg">다른 메이커들 다 본다는</div>
									<div class="BannerLinkButton_description__yl6rf">필수 가이드
										모음집</div>
								</div>
							</button>
						</div>
						<div class="Page_content__1d0Vb">
							<section
								class="FundingConditionGuideSection_container__7ZmHI spacing-8">
								<div class="FundingConditionGuideSection_content__BPu9e">
									<h4 class="FundingConditionGuideSection_title__3WoCK">리워드
										설계 조건</h4>
									<ul class="FundingConditionGuideSection_list__2hGJ2">
										<li class="FundingConditionGuideSection_item__2HEgM"><h5
												class="FundingConditionGuideSection_name__2bCqQ">정렬 순서</h5>
											<p class="FundingConditionGuideSection_description__1NZyz">혜택이
												좋은 순서대로 등록해 주세요.</p></li>
										<li class="FundingConditionGuideSection_item__2HEgM"><h5
												class="FundingConditionGuideSection_name__2bCqQ">제한 수량</h5>
											<p class="FundingConditionGuideSection_description__1NZyz">각
												리워드별 제공할 수 있는 수량을 입력해 주세요. 제한된 수량이 모두 소진되면 이 리워드를 선택할 수 없어요.</p></li>
										<li class="FundingConditionGuideSection_item__2HEgM"><h5
												class="FundingConditionGuideSection_name__2bCqQ">발송 시작일</h5>
											<p class="FundingConditionGuideSection_description__1NZyz">
												리워드 발송은 모든 서포터님들의 최종 결제가 완료된 다음 날(프로젝트 종료일+5영업일째)부터 가능해요.<br>설정한
												발송 기간 내에 리워드를 발송하지 않으면 서포터님들이 환불 신청할 수 있으니 신중하게 설정해 주세요.
											</p></li>
										<li class="FundingConditionGuideSection_item__2HEgM"><h5
												class="FundingConditionGuideSection_name__2bCqQ">옵션 조건</h5>
											<p class="FundingConditionGuideSection_description__1NZyz">사이즈,
												색상 등의 옵션 설정이 필요하면 추가해 주세요.</p></li>
									</ul>
								</div>
								<a class="link FundingConditionGuideSection_link__21qCD"
									href="https://www.wadiz.kr/link/reward_plan" target="_blank"
									rel="nofollow noopener noreferrer">프로젝트를 성공으로 이끄는 리워드 설계법</a>
							</section>
							<section class="Section_container__3md8M" style="">
								<div style="max-width: 420px;">
									<div class="Section_content__3OkLZ">
									
										<!-- 리워드 추가될 곳-->
										<section
											class="FundingConditionRewardSection_container__a4jlz spacing-9" id="rewardAddSection">
										</section>
										<section
											class="FundingConditionControlSection_container__dS_HI spacing-5">
											<div class="FundingConditionControlSection_inner__2irbO">
												<div class="AddBox_container__39RWm">
													<div>
														<svg viewBox="0 0 32 32" focusable="false"
															role="presentation"
															class="withIcon_icon__3lrgp AddBox_icon__1HBNk"
															aria-hidden="true"
															style="width: 40px; height: 40px; color: rgb(173, 181, 189);">
															<path
																d="M16 1.6C8.047 1.6 1.6 8.047 1.6 16S8.047 30.4 16 30.4 30.4 23.953 30.4 16 23.953 1.6 16 1.6zm8 15.2h-7.2V24h-1.6v-7.2H8v-1.6h7.2V8h1.6v7.2H24z"></path></svg>
														<p>리워드를 추가해 주세요</p>
													</div>
												</div>
											</div>
										</section>
										
										<button
											class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_xl__2x3J_ Button_block__2mEqp"
											type="button">
											<span><span class="Button_children__q9VCZ">저장하기</span></span>
										</button>
									</div>
								</div>
								<div class="Section_guideMessage__3XqrM">
									<h4>
										<a class="link spacing-3"
											href="https://www.wadiz.kr/link/reward_plan"
											rel="nofollow noopener noreferrer" target="_blank"
											data-role="title">프로젝트를 성공으로 이끄는 리워드 설계법</a>
									</h4>
									<p>얼리버드 리워드는 더 빠르고 더 많이 참여하게 해요. 가이드를 따라 차근차근 설계해 보세요.</p>
								</div>
							</section>
						</div>
					</section>
					<div class="ChannelTalk_container__3OcHU">
						<button type="button"></button>
					</div>
				</div>
			</div>
		</div>
		<div class="Toast_toast__1b_B2">
			<div class="Toast_content__G-bTq"></div>
		</div>
	</div>
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
</body>
</html>