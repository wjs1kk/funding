<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본정보설정 : 와디즈 MY 정보설정</title>
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="../resources/css/mypage.css">

<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/css/vendor.5f64dbd5.chunk.css">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/common.css?201f1414">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/layout.css?e1e51710">
<link rel="stylesheet" href="/resources/static/css/style.css">

<link
	href="https://cdn.wadiz.kr/resources/static/css/wlayout.css?v=20230502"
	rel="stylesheet">
<link rel="stylesheet"
	href="/resources/static/css/account.css?v=20230502">
<link rel="stylesheet"
	href="/resources/static/css/waccount.css?v=20230502">
<link rel="stylesheet"
	href="/resources/static/css/common.css?v=20230502">
<link rel="stylesheet" href="/resources/static/css/style.css">
<link rel="Stylesheet" type="text/css"
	href="/resources/static/lib/cropper.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/floating-buttons/main.8755d521.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/resources/static/lib/cropper.min.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
<style>
.default-profile-img {
	background-image:
		url(https://static.wadiz.kr/assets/icon/profile-icon-4.png);
}
</style>
<script type="text/javascript">
	$(function() {
		// 		$("#profileImg").html('<img alt="" src="${pageContext.request.contextPath }/resources/images/profile/'+ $("#member_image").val() +'">');
		$('#profileImg')
				.css(
						{
							'background-image' : 'url(${pageContext.request.contextPath }/resources/images/profile/'
									+ $("#member_image").val() + ')'
						});

	});
</script>
</head>
<body>
	<div id="page-container">
		<div class="black-bg-wrap" style="display: none;"></div>
		<jsp:include page="../inc/top.jsp"></jsp:include>

		<div id="accountWrap">
			<div id="newContainer">
				<!-- account-wrap -->
				<div class="account-wrap" style="padding: 80px 20px;">
					<h2>기본 정보 설정</h2>
					<form id="saveForm" method="post" action="myInfoPro"
						enctype="multipart/form-data">
						<div class="profileimg-wrap">
							<button type="button" id="resultProfileImg" class="profileimg">
								<!-- 								<em style="background-image: url(https://static.wadiz.kr/assets/icon/profile-icon-4.png)"></em> -->
								<em id="profileImg" class=""></em>
							</button>
							<p class="setting-profileimg">
								<button type="button" onclick="$('#uploadProfileImg').click()"
									id="btn_updatePhoto">
									<span>바꾸기</span>
								</button>
								<button type="button" onclick="deletePhoto()"
									id="btn_deletePhoto">삭제</button>
							</p>
						</div>

						<input type="file" name="image" id="uploadProfileImg"
							style="display: none;">


						<script>
							$('#uploadProfileImg').on(
									'change',
									function(e) {
										var file = e.target.files[0];
										var reader = new FileReader();

										reader.onload = function(e) {
											var imageURL = e.target.result;
											$('#profileImg').removeClass(
													'default-profile-img');
											$('#profileImg').css(
													'background-image',
													'url(' + imageURL + ')');
											uploadAndSaveImage(file);
										}

										reader.readAsDataURL(file);
									});

							function uploadAndSaveImage(file) {
								var formData = new FormData();
								formData.append('image', file);

								$.ajax({
									url : '/mypage/myInfoPro',
									type : 'POST',
									data : formData,
									processData : false,
									contentType : false,
									success : function(response) {
										// 이미지 업로드 및 DB 저장 성공 후 처리 로직
										console.log('이미지 업로드 성공');
									},
									error : function(xhr, status, error) {
										// 이미지 업로드 및 DB 저장 실패 시 처리 로직
										console.error('이미지 업로드 실패:', error);
									}
								});
							}
						</script>


						<input type="hidden" id="member_image"
							value="${member.member_image }">

						<div class="email-input-wrap">
							<input type="text" name="realName" class="input-text disable"
								placeholder="이름" value="${member.member_name}" disabled="">
							<div class="input-btn-wrap">
								<div class="" style="width: 310px">
									<input type="email" id="userName" name="userName"
										class="disable input-text" placeholder="이메일 계정"
										value="${member.member_email}" disabled="">
								</div>
							</div>
							
							<script>
							// 2023-06-05 박경은 - 휴대폰 인증
							// 2023-06-07 박경은 - ("value", $("#member_phone").val()); 수정
							function sendSMS() {
								alert('인증번호가 전송되었습니다.');
								var form = document.createElement('form');
								form.setAttribute("charset", "UTF-8");
								form.setAttribute('method', 'post');
								form.setAttribute('action', 'message');

								var hiddenField = document.createElement("input");
								hiddenField.setAttribute("type", "hidden");
								hiddenField.setAttribute("name", "member_phone");
								hiddenField.setAttribute("value", $("#member_phone").val());
								form.appendChild(hiddenField);

								document.body.appendChild(form);
								form.submit();

								$('#mobileRetryBtn').css('display', 'block');
								$('#mobileCheckBtn').css('display', 'none');
							}
							
							$('#authCode').blur(function () {
								var inputCode = $(this).val();
								var $resultMsg = $('#mobileAuthBtn');
								
								if(inputCode === code){
									$resultMsg.html('인증번호가 일치합니다.');
									$('#inputCode').attr('disabled',true);
									$('#mobileCheckBtn').attr('readonly',true);
								} else {
									$resultMsg.html('인증번호가 불일치합니다.');
								}
							});
							</script>
							
							<div class="input-btn-wrap">
								<div class="input" style="width: 218px;">
									<!-- 2023-06-05 박경은 - 휴대폰 인증 - id, name, class, value 값 수정 -->
									<input id="member_phone" name="member_phone" type="tel"
										class="member_phone input-text" placeholder="휴대폰 번호"
										value="${member.member_phone}">
								</div>
								<!-- 2023-06-11 박경은 인증하기 cursor: pointer 추가 -->
								<div id="mobileCheckBtn" class="mobileAuthBtn btn"
									style="cursor: pointer" data-status="check">
									<!-- 2023-06-05 박경은 - 휴대폰 인증 onclick="sendSMS()" 추가 -->
									<a onclick="sendSMS()"> <span>인증하기</span></a>
								</div>
								<div id="mobileRetryBtn" class="mobileAuthBtn btn" data-status="retry" style="display: none">
									<a onclick="sendSMS()"> <span>재전송</span></a>
								</div>
							</div>
							<div id="mobileConfirmArea" class="input-btn-wrap"
								style="">
								<div class="input">
									<input type="text" id="authCode" name="authCode"
										class="input-text" placeholder="인증번호" style="width: 218px;" hidden="hidden">
									<input type="text" id="authCode" name="authCode"
										class="input-text" placeholder="인증번호" style="width: 218px;">
								</div>
								<div id="mobileAuthBtn" class="mobileAuthBtn btn"
									data-status="confirm">
									<a href="#" onclick="return false;"> <span>인증확인</span>
									</a>
								</div>
								<div id="mobileAuthBtn" class="mobileAuthBtn btn"
									data-status="confirm" style="display: none;">
									<a href="#" onclick="return false;"> <span>인증완료</span>
									</a>
								</div>
							</div>

							
							<p id="mobileNumberError"
								class="checkMobileError error-text mobileMsg">유효한 전화번호를
								입력해주세요.</p>
							<p id="mobileCheckNumberError" class="error-text mobileMsg">
								인증번호를 잘못 입력하셨습니다. 다시 입력해주세요.</p>
							<p id="mobileTimeOutError" class="error-text mobileMsg">시간이
								종료되었습니다. 다시 인증해주세요.</p>
							<p id="mobileSuccessNumberCheckMsg" class="error-text mobileMsg"
								style="color: #50e3c2;">인증이 완료되었습니다.</p>
							<div class="email-input-wrap">
								<input type="password" id="newPassword" name="newPassword"
									class="input-text" placeholder="새 비밀번호" maxlength="17">
								<p id="passwordError" class="pwd-text">영문, 숫자, 특수문자
									(!@#$%^&amp;*+=-)를 모두 조합한 8자 이상</p>
								<input type="password" id="newPassword2" name="newPassword2"
									class="input-text" placeholder="새 비밀번호 확인" maxlength="17">
								<p class="error-text">비밀번호가 같지 않습니다.</p>
							</div>
							
							<!-- 2023-06-11 박경은 - 계좌 인증 -->
							<script type="text/javascript">
								$(function() {
									$("#btnAccountAuth").on("click", function() {
										let authWindow = window.open("about:blank",  "authWindow", "width=500, height=700");
											authWindow.location = "https://testapi.openbanking.or.kr/oauth/2.0/authorize"
																+ "?response_type=code"
																+ "&client_id=${client_id}"
																+ "&redirect_uri=http://localhost:8082/ifund/callback"
																+ "&scope=login inquiry transfer oob"
																+ "&state=12345678901234567890123456789012"
																+ "&auth_type=0";
																// 산업은행 - 12345678 계좌 입력했음
									});
								});
							</script>

							<!-- 2023-06-11 박경은 - 계좌 인증 -->
							<div class="input-btn-wrap">
									<c:choose>
										<c:when test="${empty member.account_auth_status or member.account_auth_status eq 'N'}">
											<div id="btnAccountAuth" class="btnAccountAuth btn"
												data-status="check" style=" width: 100%; color: #fff; margin: 0 0 40px 0; line-height: 46px; cursor: pointer;">
												<input type="button" id="btnAccountAuth">계좌인증
											</div>
										</c:when>
										<c:otherwise>
											<div class="btnAccountAuth btn"
												data-status="check" style=" width: 100%; background-color: #ddd; color: #fff; margin: 0 0 40px 0; line-height: 46px; cursor: default;">
												<input type="button" disabled>계좌인증완료
											</div>
										</c:otherwise>
									</c:choose>
								
							</div>
							
							<div class="waccount-wrap">
								<h5>관심사</h5>
								
								<p class="sub-text">최소 5개 이상 관심사를 선택해주세요.</p>
								<div class="check-list-wrap">
									<ul>
										<li><input type="checkbox" id="interest_1"
											name="interestGroup" value="SRV0001_01"> <label
											class="input-check" for="interest_1"><i
												class="icon-radio-button-unchecked unchecked"></i><i
												class="icon-check-circle checked"></i>교육∙키즈</label></li>

										<li><input type="checkbox" id="interest_2"
											name="interestGroup" value="SRV0001_02"> <label
											class="input-check" for="interest_2"><i
												class="icon-radio-button-unchecked unchecked"></i><i
												class="icon-check-circle checked"></i>패션∙잡화∙뷰티</label></li>

										<li><input type="checkbox" id="interest_3"
											name="interestGroup" value="SRV0001_03"> <label
											class="input-check" for="interest_3"><i
												class="icon-radio-button-unchecked unchecked"></i><i
												class="icon-check-circle checked"></i>홈리빙∙디자인소품</label></li>

										<li><input type="checkbox" id="interest_4"
											name="interestGroup" value="SRV0001_04"> <label
											class="input-check" for="interest_4"><i
												class="icon-radio-button-unchecked unchecked"></i><i
												class="icon-check-circle checked"></i>공연∙컬쳐</label></li>

										<li><input type="checkbox" id="interest_5"
											name="interestGroup" value="SRV0001_05"> <label
											class="input-check" for="interest_5"><i
												class="icon-radio-button-unchecked unchecked"></i><i
												class="icon-check-circle checked"></i>스포츠∙모빌리티</label></li>

										<li><input type="checkbox" id="interest_6"
											name="interestGroup" value="SRV0001_06"> <label
											class="input-check" for="interest_6"><i
												class="icon-radio-button-unchecked unchecked"></i><i
												class="icon-check-circle checked"></i>출판</label></li>

										<li><input type="checkbox" id="interest_7"
											name="interestGroup" value="SRV0001_07"> <label
											class="input-check" for="interest_7"><i
												class="icon-radio-button-unchecked unchecked"></i><i
												class="icon-check-circle checked"></i>반려동물</label></li>

										<li><input type="checkbox" id="interest_8"
											name="interestGroup" value="SRV0001_08"> <label
											class="input-check" for="interest_8"><i
												class="icon-radio-button-unchecked unchecked"></i><i
												class="icon-check-circle checked"></i>테크∙가전</label></li>

									</ul>
								</div>
							</div>



							<div class="email-input-wrap small">
								<div class="btn-wrap">
									<button type="submit" id="saveBtn"
										class="wz button primary block btn-block-mint">확인</button>
								</div>
							</div>

							<div class="my-info" style="text-align: end; margin-top: 15px;"
								onclick="if(confirm('회원 탈퇴를 하시겠습니까?')) {fn_userDelete('${resultUser.userNo}');}return false;">
								<h3>
									<a href="deleteMember">회원 탈퇴</a>
								</h3>
							</div>

						</div>

						<input type="hidden" id="validEmail" value="1">
					</form>
				</div>
				<!-- //account-wrap -->
			</div>
			<!-- E : #newContainer -->
		</div>

	</div>

	<script src="/resources/static/lib/cropper.min.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {

							if (0 < "0") {

							}

							var defaultPhotoUrl = 'https://static.wadiz.kr/assets/icon/profile-icon-4.png';
							if (defaultPhotoUrl == undefined
									|| defaultPhotoUrl == '') {
								$('#btn_updatePhoto').text('프로필 사진 등록');
								$('#btn_deletePhoto').hide();
							}

							$('#uploadProfileImg').on('change', function() {
								readFile(this);
								this.value = null;
							});

							// toBlob ployfill
							// https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/toBlob
							if (!HTMLCanvasElement.prototype.toBlob) {
								Object
										.defineProperty(
												HTMLCanvasElement.prototype,
												'toBlob',
												{
													value : function(callback,
															type, quality) {

														var binStr = atob(this
																.toDataURL(
																		type,
																		quality)
																.split(',')[1]), len = binStr.length, arr = new Uint8Array(
																len);

														for (var i = 0; i < len; i++) {
															arr[i] = binStr
																	.charCodeAt(i);
														}

														callback(new Blob(
																[ arr ],
																{
																	type : type
																			|| 'image/png'
																}));
													}
												});
							}

							$('#registProfileImg')
									.on(
											'click',
											function() {
												if (window.cropper) {
													cropper
															.getCroppedCanvas({
																width : 300,
																height : 300
															})
															.toBlob(
																	function(
																			blob) {
																		ajaxChangeProfilePhoto(
																				blob,
																				cropper._fileName);
																		closeLyPop('profileImg');
																		$(
																				'#profileimgCrop')
																				.empty();
																	});
												}
												return false;
											});
						});

		function readFile(input) {
			var file = input.files && input.files[0];
			if (file) {
				var extPattern = /\.(png|jpe?g|gif)$/i;
				if (!extPattern.test(file.name)) {
					alertify.alert('프로필 사진은 이미지(JPG,PNG,GIF)만 등록이 가능합니다.');
				} else {
					showProfilePictureEditor(file);
				}
			}
		}

		function showProfilePictureEditor(file) {
			if (!file)
				return;
			var crop = $('#profileimgCrop');
			loadImage(file, function(img) {
				crop.html(img);
				var isTouchEvent = 'ontouchstart' in window;
				var touchedOptions = isTouchEvent ? {
					guides : false,
					cropBoxMovable : false,
					cropBoxResizable : false
				} : {};
				if (isTouchEvent) {
					crop.addClass('touch-mode');
				}
				window.cropper = new Cropper(img, $.extend({
					aspectRatio : 1,
					viewMode : 1,
					dragMode : 'move',
					minContainerWidth : 240,
					minContainerHeight : 240,
					autoCropArea : 1
				}, touchedOptions));
				cropper._fileName = file.name;
				showLyPop('profileImg');
			}, {
				orientation : true
			} // Options
			);
		}

		function ajaxChangeProfilePhoto(newImage, fileName) {
			var formData = new FormData();
			formData.append('uploadfile1', newImage, fileName);
			$
					.ajax({
						url : '/web/waccount/ajaxChangeProfilePhoto',
						type : 'POST',
						contentType : false,
						processData : false,
						data : formData,
						success : function(result) {
							var jsonObj = $.parseJSON(result);
							var getData = jsonObj.data;
							$(
									'#resultProfileImg em, #myMenuNav em.profile-img, #headerBar em.profile-img')
									.css('background-image',
											'url(' + getData.photoUrl + ')');
							$('#btn_updatePhoto').text('바꾸기');
							$('#btn_deletePhoto').show();
							wadiz.toast("프로필 사진이 등록되었습니다.");
							setTimeout(function() {
								location.reload();
							}, 1500);
						}
					});
		}

		function deletePhoto() {
			alertify
					.confirm(
							"프로필 사진을 삭제 하시겠습니까?",
							function(e) {
								if (e) {
									$
											.ajax({
												url : '/web/waccount/ajaxDeleteProfilePhoto',
												type : 'POST',
												contentType : false,
												processData : false,
												data : {},
												success : function(result) {
													alertify
															.alert("프로필 사진이 삭제되었습니다.");
													$('#resultProfileImg em')
															.css(
																	'background-image',
																	'url(/resources/static/img/common/img_blank.png)');
													$('#btn_deletePhoto')
															.hide();
													$('#btn_updatePhoto').text(
															'프로필 사진 등록');
												}
											});
								}
							});
		}

		function cancelModify() {
			alertify.confirm("취소 시, 설정하신 프로필 정보가 적용되지 않습니다.<br>취소하시겠습니까?",
					function(e) {
						if (e) {
							var myTarget = '';
							wdzLink.close("/web/wmypage/myprofile/fundinglist/"
									+ myTarget);
						}
					});
		}

		function modify() {
			var interestCodeList = new Array();
			$('input:checkbox[name=interestGroup]:checked').each(
					function(index, checkbox) {
						interestCodeList.push($(this).val());
					});

			if (0 < interestCodeList.length && interestCodeList.length < 5) {
				alertify.alert("관심사는 5개 이상 선택하셔야 합니다.");
				return false;
			}

			var modifyDatas = {};
			modifyDatas.interestCodeList = interestCodeList;
			modifyDatas.belongsTo = $('#belongsTo').val();
			modifyDatas.position = $('#position').val();
			modifyDatas.school = $('#school').val();
			modifyDatas.major = $('#major').val();
			modifyDatas.introduceme = $('#introduceme').val();
			modifyDatas.mainActivityCityCode = $('#city').val();
			modifyDatas.mainActivityRegionCode = $('#region').val();

			Wmask.on({
				spinner : true
			});
			$.ajaxSettings.traditional = true;
			ajax
					.post('/web/wmypage/myprofile/ajaxModifyProfile',
							modifyDatas)
					.done(
							function(result) {
								if (result.code == "ERR0000") {
									alertify.alert("정보 수정중 오류가 발생했습니다.");
									return false;
								} else {
									alertify
											.alert(
													"프로필 설정이 성공적으로 변경되었습니다.",
													function(e) {
														if (e) {
															var myTarget = '';
															wdzLink
																	.close("/web/wmypage/myprofile/fundinglist/"
																			+ myTarget);
														}
													});
								}
							}).fail(function(err) {
						alertify.alert('정보 수정중 오류가 발생했습니다.');
					}).always(function() {
						Wmask.off();
					});
		}
	</script>
	<jsp:include page="../inc/footer.jsp"></jsp:include>

</body>
</html>