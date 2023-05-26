<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/11.e00806b3.chunk.css">
<link href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css" rel="stylesheet">
<link href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>

<script type="text/javascript">


	$(function() {
		
		$("#makerAddbtn").on("click", function() {
			$("#maker_name").val("");
			$("#maker_phone").val("");
			$("#maker_email").val("");
			$("#maker_idx").val(0);
			$("#preview").html("");
			$("#saveBtn").text("추가하기");
		});
		
		$.ajax({
			type: "post",
			url: "getMakerList",
			dataType: "JSON",
			data: {member_idx:${sessionScope.member_idx}
			},
			success: function(response) {
				for(let myMakerList of response){
					$("#makerAddList").append('<button type="button" class="wz button primary" onclick="getMakerInfo('+myMakerList.maker_idx+')">' + myMakerList.maker_name+ '</button>')
				}
			}
		});
		

		$.ajax({
			type: "post",
			url: "myProjectMakerInfo",
			dataType: "JSON",
			data: {project_idx:${param.project_idx}
			},
			success: function(response) {
				$("#myPorjectMakerInfo").append('<button type="button" class="wz button primary" onclick="getMakerInfo('+response.maker_idx+')">' + response.maker_name+ '</button>')
			}
		});
		
				
	});
	
	function getMakerInfo(maker_idx) {
		
		$.ajax({
			type: "post",
			url: "getMakerInfo",
			dataType: "JSON",
			data: {maker_idx:maker_idx,
				   project_idx:${param.project_idx}
			},
			success: function(response) {
				
				let root = '/funding/resources/images/maker_images/' + response.maker_image
				$("#maker_name").val(response.maker_name)
				$("#maker_phone").val(response.maker_phone)
				$("#maker_email").val(response.maker_email)
				$("#maker_idx").val(response.maker_idx)
				$("#preview").html('<a href="javascript:void(0);" onclick="deleteImageAction(0)" id="img_id_0"><img style="width: 250px; height: 170px;" src="'+ root +'" class="selProductFile" title="Click to remove"></a>');
				$("#saveBtn").text("수정하기");
				alert("해당 프로젝트에 메이커 정보가 등록되었습니다!")
				
			}
		});
		
		$.ajax({
			type: "post",
			url: "myProjectMakerInfo",
			dataType: "JSON",
			data: {project_idx:${param.project_idx}
			},
			success: function(response) {
				$("#myPorjectMakerInfo").html('')
				$("#myPorjectMakerInfo").html('<button type="button" class="wz button primary" onclick="getMakerInfo('+response.maker_idx+')">' + response.maker_name+ '</button>')
			}
		});
		
		
	}

</script>

</head>
<body class="ReactModal__Body--open" aria-hidden="true">
	

	<div id="root">
		<div id="AppLayout_Container" class="AppLayout_container__3zbzb">
			<div class="AppLayout_main__14bCi">
				<jsp:include page="../inc/create_project_side.jsp"></jsp:include>
				<div id="AppLayout_Contents" class="AppLayout_contents__wv3DF">
					<div id="container" class="ContentsLayout_container__11k-W">
						<div>
							<ol class="Breadcrumb_container__3YjD4">
								<li class="Breadcrumb_item__2r9Ym">프로젝트 관리</li>
								<li class="Breadcrumb_item__2r9Ym">메이커 정보</li>
							</ol>
							<!-- 05-17 김동욱 모든 프로젝트 페이지 상단탭 project_top.jsp include로 변경 -->
							<nav class="DetailNavbar_container__3SkEf">
								<jsp:include page="../inc/project_top.jsp"></jsp:include>
							</nav>
							<div class="HeaderLayout_container__3fXkO">
								<div class="HeaderLayout_contents__F4hlC">
									<h2 class="MakerInfoFormContainer_title__2_urf">메이커 정보</h2>
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
							<div class="MouseOverGuide_container__3jDBz">
								<div class="MouseOverGuide_contents__APrXG"></div>
								<div class="MouseOverGuide_guideWrapper__28wbb">
									<div
										class="MouseOverGuide_guide__13NEZ MouseOverGuide_isEmpty__2pOmW">
										<h5 class="MouseOverGuide_title__1sJjC"></h5>
										<div class="MouseOverGuide_content__I9HrE"></div>
									</div>
								</div>
							</div>
							<div >
								<h3>해당 프로젝트에 등록된 메이커 정보</h3>
								<div id="myPorjectMakerInfo"></div>
							</div>
							<div id="makerAddList">
								<h3>추가된 메이커 정보</h3>
							</div>
							<button type="button" id="makerAddbtn">메이커 정보 추가</button>
							<br>
							<br>
							<hr>
							<form class="wz form" action="makerInsertUpdate" method="post" enctype="multipart/form-data">
								<div class="MakerInfoWrapper_container__VyCZ5">
									<div class="MouseOverGuide_container__3jDBz">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="MakerInfoInputField_container__4b8t-">
												<div class="TextField_textField__23rCe TextField_md__2zsQn">
													<label><div>
															<div class="ToolTipMobile_toolTipContainer__2tYPd">
																<div
																	class="ToolTipMobile_label__1dBSo ToolTipMobile_required__3WiIn">메이커명</div>
															</div>
															<p class="MakerInfoInputField_desc__1La-Q">법인 사업자는
																법인등기부상 법인명 / 개인 사업자는 주민등록상 성명 또는 상호 / 개인은 주민등록상 성명을 입력해
																주세요.</p>
														</div></label>
													<div class="TextField_field__1E9vt">
														<input name="maker_name" placeholder="메이커명 입력"
															maxlength="64" type="text" id="maker_name"
															class="Input_input__2kAAL Input_md__3-eZ6"
															aria-invalid="false">
													</div>
													<em class="HelperMessage_helperMessage__1qZPy">61자 남음</em>
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
											<div
												class="field Form_field__35I9T required ImageFormField_field__X1jTW">
												<div class="ImageFormField_labelWrapper__2bUMF">
													<label class="wz label Label_label__3oH0h"><div
															class="ToolTipMobile_toolTipContainer__2tYPd">
															<div class="ToolTipMobile_label__1dBSo">
																<span
																	class="MakerProfileImageFieldContainer_label__1jYxl">메이커
																	프로필 이미지</span>
															</div>
															<div
																class="HelpFloating_wrap__6QNWy ToolTipMobile_helpFloating__fNzSX"
																style="font-size: 14px;">
																<button type="button" title="도움말 보기"
																	class="HelpFloating_button__2EATP"
																	style="font-size: 14px;">
																	<i class="icon help-o" aria-hidden="true"></i>
																</button>
																<div
																	class="HelpFloating_message__1c-6d HelpFloating_black__1v2uo"
																	style="min-width: 350px;">
																	<div data-role="title">사진으로 신뢰감을 주세요.</div>
																	브랜드 로고 또는 메이커 사진을 등록해 주세요. 서포터님들이 더 쉽게 메이커님을 알아볼 수 있어요.
																</div>
															</div>
														</div></label>
												</div>
												<div class="ImageFormField_buttonWrapper__su3pO">
													<label
														class="wz label ImageFileButton_label__3thB2 Label_label__3oH0h"><button
															type="button"
															class="wz button gray ImageFileButton_button__3gAHD">
															<i class="icon-camera-o" aria-hidden="true"></i>등록하기
														</button>
														<div class="wz input right ImageFileButton_input__1Dnch">
															<input accept="image/jpg,image/jpeg,image/png" id="maker_image"
																name="makerImage" placeholder="" type="file" value="">
														</div></label><em class="helper error"></em><em
														class="helper ImageFormField_helper__3XC5c">3MB 이하의
														JPG, JPEG, PNG 파일, 해상도 300x300 픽셀 이상</em>
														<div id="preview">
															<img alt="" src="">
														
														</div>
														
														<script type="text/javascript">
															var sel_files = [];
															
															$(function() {
																$("#maker_image").on("change", handleImgFileSelect)
															})
															
															function fileUploadAction() {
																console.log("fileUploadAction");
																$("#maker_image").trigger('click');
																
															}
															
															function handleImgFileSelect(e) {
																
																sel_files = [];
																$("#maker_image").empty();
																
																var files = e.target.files;
																var filesArr = Array.prototype.slice.call(files);
																
																var index = 0;
																$("#preview").html("");
																filesArr.forEach(function(f) {
																	if(!f.type.match("image.*")){
																		alert("이미지 확장자만 업로드 가능합니다.")
																		return;
																	}
																	
																	sel_files.push(f);
																	
																	var reader = new FileReader();
																	reader.onload = function(e) {
																		var html = "<a href=\"javascript:void(0);\" onclick=\"deleteImageAction("+index+")\" id=\"img_id_" + index + "\"><img style=\"width: 250px; height: 170px;\" src=\"" + e.target.result + "\" data-file='"+f.name+"' class='selProductFile' title='Click to remove'</a>";
// 																		var html = "<div id=\"img_id_" + index + "\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' style=\"width: 250px; height: 170px;\" class='selProductFile' title='Click to remove'</div>";
																		$("#preview").append(html);
																		index++;
																		
																		// 이미지 해상도 확인 및 용량 확인
																		var img = new Image();
																		img.src = e.target.result;
																		img.onload = function() {
																			// 업로드된 이미지가 2MB를 초과하면 용량이 초과한다 경고 문구 표시
																			// 2MB 이하에 해당되면 이미지 해상도 크기 비교후해상도가 630 * 400 미만이면 조건에 맞는 해상도의 이미지를 업로드하라고 경고 문구 표시
																			if(e.total < 3072000){
																				if(this.width < 300 && this.height < 300){
																					$("input[id=images]").val("");
																					$("#preview").html("업로드된 이미지가 해상도 조건에 적합하지 않습니다! <br> 해상도 300x300 픽셀 이상 이미지를 등록하세요!").css("color", "red");
																				}
																			} else {
																				$("input[id=images]").val("");
																				$("#preview").html("업로드된 이미지 파일의 용량이 3MB를 초과합니다").css("color", "red");
																			}
																			
																		}
																		
																	}
																	reader.readAsDataURL(f);
																})
																
															}
															
															function deleteImageAction(index) {
																console.log("index : " + index);
																var img_id = "#img_id_"+index;
																$(img_id).remove();
																sel_files.splice(index, 1);
																console.log(sel_files);
															}
	
													</script>
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div class="MouseOverGuide_guide__13NEZ">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE">
													<div data-role="title">사진으로 신뢰감을 주세요.</div>
													브랜드 로고 또는 메이커 사진을 등록해 주세요. 서포터님들이 더 쉽게 메이커님을 알아볼 수 있어요.
												</div>
											</div>
										</div>
									</div>
									<div class="MouseOverGuide_container__3jDBz">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="MakerInfoInputField_container__4b8t-">
												<div class="TextField_textField__23rCe TextField_md__2zsQn">
													<label><div>
															<div class="ToolTipMobile_toolTipContainer__2tYPd">
																<div
																	class="ToolTipMobile_label__1dBSo ToolTipMobile_required__3WiIn">문의
																	이메일</div>
																<div
																	class="HelpFloating_wrap__6QNWy ToolTipMobile_helpFloating__fNzSX"
																	style="font-size: 14px;">
																	<button type="button" title="도움말 보기"
																		class="HelpFloating_button__2EATP"
																		style="font-size: 14px;">
																		<i class="icon help-o" aria-hidden="true"></i>
																	</button>
																	<div
																		class="HelpFloating_message__1c-6d HelpFloating_black__1v2uo"
																		style="min-width: 350px;">
																		<div data-role="title">메이커님께 문의 이메일을 보내고 싶어요.</div>
																		프로젝트 공개 후 서포터님들이 문의할 수 있는 이메일을 안내해 주세요.
																	</div>
																</div>
															</div>
														</div></label>
													<div class="TextField_field__1E9vt">
														<input name="maker_email" placeholder="이메일 입력"
															maxlength="64" type="text" id="maker_email"
															class="Input_input__2kAAL Input_md__3-eZ6"
															aria-invalid="false">
													</div>
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div class="MouseOverGuide_guide__13NEZ">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE">
													<div data-role="title">메이커님께 문의 이메일을 보내고 싶어요.</div>
													프로젝트 공개 후 서포터님들이 문의할 수 있는 이메일을 안내해 주세요.
												</div>
											</div>
										</div>
									</div>
									<div class="MouseOverGuide_container__3jDBz">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="MakerInfoInputField_container__4b8t-">
												<div class="TextField_textField__23rCe TextField_md__2zsQn">
													<label><div>
															<div class="ToolTipMobile_toolTipContainer__2tYPd">
																<div
																	class="ToolTipMobile_label__1dBSo ToolTipMobile_required__3WiIn">문의
																	전화번호</div>
																<div
																	class="HelpFloating_wrap__6QNWy ToolTipMobile_helpFloating__fNzSX"
																	style="font-size: 14px;">
																	<button type="button" title="도움말 보기"
																		class="HelpFloating_button__2EATP"
																		style="font-size: 14px;">
																		<i class="icon help-o" aria-hidden="true"></i>
																	</button>
																	<div
																		class="HelpFloating_message__1c-6d HelpFloating_black__1v2uo"
																		style="min-width: 350px;">
																		<div data-role="title">메이커님께 문의 전화를 하고 싶어요.</div>
																		프로젝트 공개 후 서포터님들이 유선 문의할 수 있는 전화번호를 안내해 주세요.
																	</div>
																</div>
															</div>
														</div></label>
													<div class="TextField_field__1E9vt">
														<input name="maker_phone" placeholder="전화번호 입력" id="maker_phone"
															maxlength="20" type="tel"
															class="Input_input__2kAAL Input_md__3-eZ6"
															aria-invalid="false">
													</div>
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div class="MouseOverGuide_guide__13NEZ">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE">
													<div data-role="title">메이커님께 문의 전화를 하고 싶어요.</div>
													프로젝트 공개 후 서포터님들이 유선 문의할 수 있는 전화번호를 안내해 주세요.
												</div>
											</div>
										</div>
									</div>
								</div>
								<input type="hidden" name="project_idx" id="project_idx" value="${param.project_idx }">
								<input type="hidden" name="maker_idx" id="maker_idx" value="0">
								<div class="MakerInfoFormContainer_btnWrapper__2EVfb">
									<button type="submit" class="wz button primary" id="saveBtn">추가하기</button>
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