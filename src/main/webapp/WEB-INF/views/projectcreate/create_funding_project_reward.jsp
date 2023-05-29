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
<!-- 05-18 김동욱 데이트피커를 위한 라이브러리 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 05-18 김동욱 데이트피커를 위한 라이브러리 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
</head>

<script type="text/javascript">
	//리워드 ajax 리스트 출력 함수
	function getProjectReward() {
		$.ajax({
			type: "post",
			url: "getProjectReward",
			dataType: "json",
			data: {"project_idx" : ${param.project_idx}},
			success: function(jsonRewardList) {
				$("#rewardAddSection").html("");
				for(let rewardList of jsonRewardList){
					// 배송비가 있으면 '배송비 + 원' 배송비가 없으면 '없음' 배송비가 0원이면 '무료'
					let reward_delivery_fee = rewardList.reward_delivery_fee;
					let delivery = "배송비";
					if(reward_delivery_fee == null){
						reward_delivery_fee = "";
						delivery = "배송 없음";
					}else if(reward_delivery_fee == 0){
						reward_delivery_fee = "무료";
					}else {
						reward_delivery_fee += "원";
					}
					$("#rewardAddSection").append('<div class="FundingConditionRewardItem_container__1aQKY spacing-4">'
						+'<div class="FundingConditionRewardItem_header__3LoHV">'
						+'<div class="FundingConditionRewardItem_amount__13WhI">'+rewardList.reward_amount+'원</div>'
						+'<span class="Badge_container__3mdFR Badge_visible__2c54z">'
						+'<span class="Badge_badge__zKi0D Badge_label__2iNzD Badge_md__YzReR Badge_primary__3jwLR Badge_tertiary__-ciUe">제한 수량 '+rewardList.reward_quantity+'개</span>'
						+'</span>'
						+'</div>'
						+'<hr class="Divider_divider__iEd6P Divider_horizontal__2aRDB Divider_lightBG__1SKWl Divider_spacing5__1JRsJ Divider_caption2__1zTI_">'
						+'<h4 class="FundingConditionRewardItem_name__Q9cMr">'+rewardList.reward_name+'</h4>'
						+'<p class="FundingConditionRewardItem_description__3Yhpu">'+rewardList.reward_content+'</p>'
						+'<div class="FundingConditionRewardItem_shipping__1XIAG">'
						+'<div class="FundingConditionRewardItem_shippingCharge__J2R07">'
						+'<div>'+ delivery +'</div>'
						+'<div>'+reward_delivery_fee+'</div>'
						+'</div>'
						+'<div class="FundingConditionRewardItem_shippingPeriod__1BURI">'
						+'<div>리워드 발송 시작일</div>'
						+'<div>'+rewardList.reward_delivery_date+'</div>'
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
						+'<button class="Button_button__1e2A2 Button_xs__x1b7M Button_startIcon__19sdm" type="button" onclick = "rewardDetail('+ rewardList.reward_idx +')">'
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
						+'<button class="Button_button__1e2A2 Button_xs__x1b7M Button_startIcon__19sdm" type="button" onclick = "rewardDelete('+ rewardList.reward_idx +')">'
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
					);
				}
				
			}
		});
		
	}

	// 05-19 김동욱 리워드 수정
	$(document).on("click","#rewardModifyBtn",function(){
		
		//  05-29 김동욱 null 값과 정규표현식 확인 후 수정
		if(regexCheck() != false){
			$.ajax({
				type: "post",
				url: "rewardModify",
				data: {reward_idx:$("#reward_idx").val()
				   ,reward_name:$("#reward_name").val()
				   ,reward_amount:$("#reward_amount").val()
				   ,reward_content:$("#reward_content").val()
				   ,reward_option:$("#reward_option").val()
				   ,reward_quantity:$("#reward_quantity").val()
				   ,reward_delivery:$("#reward_delivery").val()
				   ,reward_delivery_fee:$("#reward_delivery_fee").val()
				   ,reward_delivery_date:$("#reward_delivery_date").val()
				},
				success: function() {
					getProjectReward();
					$("#reward_modal").css("opacity", 0);
				}
				
			})
			
		}
		
	});
	
	// 05-18 김동욱 리워드 삭제
	function rewardDelete(reward_idx) {
		let result = confirm("리워드를 삭제하시겠습니까?");
		if(result == true){
			$.ajax({
				type: "post",
				url: "rewardDelete",
				data: {reward_idx:reward_idx},
				success: function() {
					getProjectReward();
				}
			})
		}
		
	}
	
	// 05-18 김동욱 리워드 수정버튼을 누를 시 리워드 정보를 가져와 모달창에 출력하면서 타이틀 제목과 버튼 '수정'으로 변경
	function rewardDetail(reward_idx) {
		$("#reward_idx").val(reward_idx)
		$.ajax({
			type: "post",
			url: "getRewardDetail",
			dataType: "json",
			data: {"reward_idx" : reward_idx},
			success: function(rewardDetail) {
				$("#reward_modal_title").html('<div title="리워드 수정" id="reward_modal_title" class="ConfirmModal_title__sFrkL ConfirmModal_showCloseButton__1P8aT">리워드 수정</div>');
				$("#rewardModalBtns").html("")
				$("#rewardModalBtns").append('<button'
					+' class="Button_button__1e2A2 Button_secondary__JuhOu Button_lg__3vRQD Button_block__2mEqp"'
					+'id="reward_modal_cancle" type="button">'
					+'<span><span class="Button_children__q9VCZ">취소</span></span>'
					+'</button>'
					+'<button'
					+' class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD Button_block__2mEqp"'
					+'type="button" id="rewardModifyBtn">'
					+'<span><span class="Button_children__q9VCZ" id="rewardModalAddText">수정</span></span>'
					+'</button>')
			
				$("#reward_name").val(rewardDetail.reward_name);
				$("#reward_amount").val(rewardDetail.reward_amount);
				$("#reward_content").val(rewardDetail.reward_content);
				$("#reward_option").val(rewardDetail.reward_option);
				$("#reward_quantity").val(rewardDetail.reward_quantity);
				$("#reward_delivery").val(rewardDetail.reward_delivery);
				
				// 리워드 배송 값이 1일 경우 배송 버튼 CSS가 클릭된 스타일로 변경후 배송란이 생성되고 기존에 입력된 배송비 값 적용 
				if(rewardDetail.reward_delivery == 1){
					$("#deliveryUsedBtn").css("background", "#e7f9f9");
					$("#deliveryUsedBtn").css("border-color", "#00c4c4");
					$("#deliveryUsedCheckIcon").css("color", "#00c4c4");
					
					$("#deliveryNotUsedBtn").css("background", "transparent");
					$("#deliveryNotUsedBtn").css("border-color", "#cdd3d8");
					$("#deliveryNotUsedCheckIcon").css("color", "#adb5bd");
					
					
					$("#deliveryCheck").html("");
					$("#deliveryCheck").append(
						'<div class="TextField_textField__23rCe TextField_md__2zsQn TextField_right__1qt_G">'
						+'<label>배송비</label>'
						+'<div class="TextField_field__1E9vt">'
						+'<input placeholder="0" type="text" class="Input_input__2kAAL Input_md__3-eZ6" aria-invalid="false" value="'+ rewardDetail.reward_delivery_fee +'" id="reward_delivery_fee" name = "reward_delivery_fee">'
						+'<span class="TextField_fixedText__2vIuK TextField_endText__3jIeG">원</span>'
						+'</div>'
						+'<em class="HelperMessage_helperMessage__1qZPy">무료배송인 경우 0원을 입력해 주세요.</em>'
						+'</div>'
					);
					
				}else if(rewardDetail.reward_delivery == 0) {
					$("#deliveryCheck").html("");
					$("#deliveryNotUsedBtn").css("background", "#e7f9f9");
					$("#deliveryNotUsedBtn").css("border-color", "#00c4c4");
					$("#deliveryNotUsedCheckIcon").css("color", "#00c4c4");
					
					$("#deliveryUsedBtn").css("background", "transparent");
					$("#deliveryUsedBtn").css("border-color", "#cdd3d8");
					$("#deliveryUsedCheckIcon").css("color", "#adb5bd");
					
				}
				
				$("#reward_delivery_date").val(rewardDetail.reward_delivery_date);
				$("#reward_modal").css("opacity", 1);
			}
		});
		
	};
	
	
	// 05-29 김동욱 null값과 정규표현식 확인
	function regexCheck() {
		
		if($("#reward_amount").val() == ""){
			alert("리워드 금액을 입력해주세요!")
			return false;
		}
		if($("#reward_name").val() == ""){
			alert("리워드명을 입력해주세요!")
			return false;
		}
		if($("#reward_content").val() == ""){
			alert("리워드 설명을 입력해주세요!")
			return false;
		}
		if($("#reward_option").val() == ""){
			alert("리워드 옵션을 입력해주세요!")
			return false;
		}
		if($("#reward_quantity").val() == ""){
			alert("리워드 제한 수량을 입력해주세요!")
			return false;
		}
		if($("#reward_delivery").val() == ""){
			alert("리워드 배송여부를 선택해주세요")
			return false;
		}
		if($("#reward_delivery_fee").val() == ""){
			alert("리워드 배송비를 입력해주세요!")
			return false;
		}
		if($("#reward_delivery_date").val() == ""){
			alert("리워드 발송 날짜를 입력해주세요!")
			return false;
		}
		
		// 숫자
	 	var check_num = /[0-9]/;
		// 숫자, 한글 영어
	 	var check_eng_hangul_num = /[a-zA-Z가-힣0-9]/;
	 	
//	 	var check_num = /[0-9a-zA-Z가-힣+_()-]{2,30}/;    // 숫자 
//	 	var check_num = /[0-9]/;    // 숫자 
//	 	var check_eng = /[a-zA-Z]/;    // 문자 
//	 	var check_spc = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
//	 	var check_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 한글체크
		
		if(!check_num.exec($("#reward_amount").val())){
			alert("리워드 금액은 숫자만 입력 가능합니다!")
			return false;
		}
		
		if(!check_eng_hangul_num.exec($("#reward_name").val())){
			alert("리워드명은 한글, 영어, 숫자만 입력 가능합니다!")
			return false;
		}
		
		if(!check_eng_hangul_num.exec($("#reward_option").val())){
			alert("리워드 옵션은 한글, 영어, 숫자만 입력 가능합니다!")
			return false;
		}
		
		if(!check_num.exec($("#reward_quantity").val())){
			alert("리워드 제한 수량은 숫자만 입력 가능합니다!")
			return false;
		}
		
		if(!check_num.exec($("#reward_delivery_fee").val())){
			alert("배송비는 숫자만 입력 가능합니다!")
			return false;
		}
		
		$("#reward_modal").css("opacity", 0);
		
	}
	
	
	$(function() {
		// 리워드 ajax 리스트 출력
		getProjectReward();
		
		// '리워드를 추가해주세요' 버튼을 누르면 모달창 띄우기
		$(".AddBox_container__39RWm").on("click", function() {
			$("#reward_modal_title").html('<div title="리워드 추가" id="reward_modal_title" class="ConfirmModal_title__sFrkL ConfirmModal_showCloseButton__1P8aT">리워드 추가</div>');
			$("#rewardModalBtns").html("")
			$("#rewardModalBtns").append('<button'
				+' class="Button_button__1e2A2 Button_secondary__JuhOu Button_lg__3vRQD Button_block__2mEqp"'
				+'id="reward_modal_cancle" type="button">'
				+'<span><span class="Button_children__q9VCZ">취소</span></span>'
				+'</button>'
				+'<button'
				+' class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD Button_block__2mEqp"'
				+'type="button" id="rewardAddBtn">'
				+'<span><span class="Button_children__q9VCZ" id="rewardModalAddText">추가</span></span>'
				+'</button>')
			$("#reward_name").val("")
		    $("#reward_amount").val("")
		    $("#reward_content").val("")
		    $("#reward_option").val("")
		    $("#reward_quantity").val("")
		    $("#reward_delivery").val("")
		    $("#reward_delivery_fee").val("")
		    $("#reward_delivery_date").val("")
		    $("#deliveryNotUsedBtn").css("background", "transparent");
			$("#deliveryNotUsedBtn").css("border-color", "#cdd3d8");
			$("#deliveryNotUsedCheckIcon").css("color", "#adb5bd");
		    $("#deliveryUsedBtn").css("background", "transparent");
			$("#deliveryUsedBtn").css("border-color", "#cdd3d8");
			$("#deliveryUsedCheckIcon").css("color", "#adb5bd");
			$("#deliveryCheck").html("");
			$("#reward_modal").css("opacity", 1);
			
		});

		//모달창 X 버튼 누를 시 닫힘
		$(".ConfirmModal_closeIconWrapper__3vX7j").on("click", function() {
			$("#reward_modal").css("opacity", 0);
		});
		//모달창 취소 버튼 누를 시 닫힘
		$("#reward_modal_cancle").on("click", function() {
			$("#reward_modal").css("opacity", 0);
		});
		
		// 리워드 추가 모달창에서 '추가 버튼 누를 시 모달창이 꺼지고 입력된 정보들 reward 테이블에 insert후 다시 리스트 출력'
		$(document).on("click","#rewardAddBtn",function(){
			
			// 05-29 김동욱 null 값과 정규표현식 확인 후 추가
			if(regexCheck() != false){
				$.ajax({
					type: "post",
					url: "projectRewardAdd",
					data: {project_idx:${param.project_idx}
						   ,reward_name:$("#reward_name").val()
						   ,reward_amount:$("#reward_amount").val()
						   ,reward_content:$("#reward_content").val()
						   ,reward_option:$("#reward_option").val()
						   ,reward_quantity:$("#reward_quantity").val()
						   ,reward_delivery:$("#reward_delivery").val()
						   ,reward_delivery_fee:$("#reward_delivery_fee").val()
						   ,reward_delivery_date:$("#reward_delivery_date").val()
					},
					success: function() {
						// 성공시 AJAX 리스트 출력
						getProjectReward();
					}
				});
			}
		});
		
		
		// 모달창에서 배송 여부(배송, 배송 없음) 클릭시 버튼 색상 변경, hidden(reward_delivery) value의 값이 배송 누르면  1 배송 없음 누르면 0 
		$("#deliveryUsedBtn").on("click", function() {
			$("#deliveryUsedBtn").css("background", "#e7f9f9");
			$("#deliveryUsedBtn").css("border-color", "#00c4c4");
			$("#deliveryUsedCheckIcon").css("color", "#00c4c4");

			$("#deliveryNotUsedBtn").css("background", "transparent");
			$("#deliveryNotUsedBtn").css("border-color", "#cdd3d8");
			$("#deliveryNotUsedCheckIcon").css("color", "#adb5bd");
			
			$("#reward_delivery").val(1);
		});

		// 모달창에서 배송 여부(배송, 배송 없음) 클릭시 버튼 색상 변경, hidden(reward_delivery) value의 값이 배송 누르면  1 배송 없음 누르면 0 
		$("#deliveryNotUsedBtn").on("click", function() {
			$("#deliveryNotUsedBtn").css("background", "#e7f9f9");
			$("#deliveryNotUsedBtn").css("border-color", "#00c4c4");
			$("#deliveryNotUsedCheckIcon").css("color", "#00c4c4");

			$("#deliveryUsedBtn").css("background", "transparent");
			$("#deliveryUsedBtn").css("border-color", "#cdd3d8");
			$("#deliveryUsedCheckIcon").css("color", "#adb5bd");
			
			$("#reward_delivery").val(0);
		});
		
		// 리워드 추가 모달창 배송여부에서 배송 누를 시 배송비 입력란 생성
		$("#deliveryUsedBtn").on("click", function() {
			$("#deliveryCheck").html("");
			$("#deliveryCheck").append(
				'<div class="TextField_textField__23rCe TextField_md__2zsQn TextField_right__1qt_G">'
				+'<label>배송비</label>'
				+'<div class="TextField_field__1E9vt">'
				+'<input placeholder="0" type="text" class="Input_input__2kAAL Input_md__3-eZ6" aria-invalid="false" value="" id="reward_delivery_fee" name = "reward_delivery_fee">'
				+'<span class="TextField_fixedText__2vIuK TextField_endText__3jIeG">원</span>'
				+'</div>'
				+'<em class="HelperMessage_helperMessage__1qZPy">무료배송인 경우 0원을 입력해 주세요.</em>'
				+'</div>'
			);
			$("#reward_delivery_fee").val(0);
		});
		
		// 리워드 추가 모달창 배송여부에서 배송없음 누를 시 배송비 입력란 삭제
		$("#deliveryNotUsedBtn").on("click", function() {
			$("#deliveryCheck").html("");
		});
		
	});
	
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
						<div title="리워드 추가" id="reward_modal_title" 
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
									<input placeholder="0" type="text" name="reward_amount" id="reward_amount"
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
									type="text" class="Input_input__2kAAL Input_md__3-eZ6" name="reward_name" id="reward_name"
									aria-invalid="false" value="">
							</div>
							<em class="HelperMessage_helperMessage__1qZPy">60자 남음</em>
						</div>
						<div
							class="TextField_textField__23rCe TextField_md__2zsQn spacing-8">
							<label>리워드 설명</label>
							<div class="TextField_field__1E9vt">
								<textarea placeholder="리워드 구성과 혜택을 간결하게 설명해 주세요."
									maxlength="400" rows="3" name="reward_content" id="reward_content"
									class="Textarea_textarea__2swOj undefined"
									style="height: 106px;"></textarea>
							</div>
							<em class="HelperMessage_helperMessage__1qZPy">400자 남음</em>
						</div>
						<div class="select-menu spacing-2" style="width: 50%;">
							<div class="label">옵션 설정</div>
							<div class=" css-2b097c-container">
								<span aria-live="polite" aria-atomic="false"
									aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>
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
								<input placeholder="입력해 주세요" type="text" name="reward_option" id="reward_option"
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
									<input placeholder="0" type="text" name="reward_quantity" id="reward_quantity"
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
								<input type="hidden" value="" name="reward_delivery" id="reward_delivery">
							</div>
						</div>
						<!-- 05-17 배송여부에 따라 배송비 입력란 셍성 및 삭제  -->
						<div class="spacing-8" style="width: 50%;" id="deliveryCheck"></div>
						<div class="spacing-9">
							<label class="wz label Label_label__3oH0h">발송 시작일</label>

							<!-- 배송 시작일 타임피커 -->
							<input type="text" id="reward_delivery_date" name="reward_delivery_date">

							<script>
							   $(function() {
							       //input을 datepicker로 선언
							       $("#reward_delivery_date").datepicker({
							           dateFormat: 'yy-mm-dd' //달력 날짜 형태
							           ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
							           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
							           ,changeYear: true //option값 년 선택 가능
							           ,changeMonth: true //option값  월 선택 가능                
							           ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
							           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
							           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
							           ,buttonText: "선택" //버튼 호버 텍스트              
							           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
							           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
							           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
							           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
							           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
							           ,minDate: "+5d" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
							           ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
							       });                    
							       
							       //초기값을 오늘 날짜로 설정해줘야 합니다.
							       $('#reward_delivery_date').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
							   });
							</script>

						</div>
						<div id="rewardModalBtns"
							class="FundingConditionRewardModalContainer_buttonGroup__3TYhj">
							<button
								class="Button_button__1e2A2 Button_secondary__JuhOu Button_lg__3vRQD Button_block__2mEqp"
								id="reward_modal_cancle" type="button">
								<span><span class="Button_children__q9VCZ">취소</span></span>
							</button>
							
							<button
								class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD Button_block__2mEqp"
								type="button" id="rewardAddBtn">
								<span><span class="Button_children__q9VCZ" id="rewardModalAddText">추가</span></span>
							</button>
						</div>
						<input type="hidden" value="" id="reward_idx" name="reward_idx">
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
					<!-- 05-17 김동욱 모든 프로젝트 페이지 상단탭 project_top.jsp include로 변경 -->
						<nav class="DetailNavbar_container__3SkEf">
							<jsp:include page="../inc/project_top.jsp"></jsp:include>
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