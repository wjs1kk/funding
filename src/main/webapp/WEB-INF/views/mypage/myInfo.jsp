<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<html lang="ko">
<head>
<title>기본정보설정 : 와디즈 MY 정보설정</title>
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="../resources/css/mypage.css">

<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/css/vendor.5f64dbd5.chunk.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/common.css?201f1414">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?e1e51710">
<link rel="stylesheet" href="/resources/static/css/style.css">

<link href="https://cdn.wadiz.kr/resources/static/css/wlayout.css?v=20230502" rel="stylesheet">
<link rel="stylesheet" href="/resources/static/css/account.css?v=20230502">
<link rel="stylesheet" href="/resources/static/css/waccount.css?v=20230502">
<link rel="stylesheet" href="/resources/static/css/common.css?v=20230502">
<link rel="stylesheet" href="/resources/static/css/style.css">
<link rel="Stylesheet" type="text/css" href="/resources/static/lib/cropper.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/floating-buttons/main.8755d521.css">

<script src="/resources/static/lib/cropper.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>


<style>
    .default-profile-img {
        background-image: url(https://static.wadiz.kr/assets/icon/profile-icon-4.png);
    }
</style>

<script type="text/javascript">
$(function() {
    //비밀번호 규칙 (숫자, 영어 대소문자, 특수문자 (!, @, #, $, %) 4~16자리 사용 가능)
    let passwdReg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/
    $("#newPassword").on("change", function() {
        if(!passwdReg.exec($("#newPassword").val())){
            $("#passwordError").html("비밀번호 형식을 확인해주세요.<br> 영문자, 숫자, 특수문자 (!, @, #, $, %) 포함하여 8~16자리 입력").css("color", "red");
        }else{
            $("#passwordError").html("사용 가능한 비밀번호 형식 입니다!").css("color", "blue");
        }
    })
    
    // 비밀번호가 일치하는 지 확인
    $("#newPassword2").on("change", function() {
        if(!passwdReg.exec($("#newPassword2").val())){
            $("#passwordError2").html("비밀번호 형식을 확인해주세요.<br> 영문자, 숫자, 특수문자 (!, @, #, $, %) 포함하여 8~16자리 입력").css("color", "red");
        }else{
            if($("#newPassword").val() != $("#newPassword2").val()){
                $("#passwordError2").html("비밀번호가 일치하지 않습니다!").css("color", "red");
            }else{
                $("#passwordError2").html("비밀번호가 일치합니다!").css("color", "blue");
            }
        }
    })
    
});
function checkForm() {
	  var form = document.getElementById("saveForm");
	  var fileInput = document.getElementById("uploadProfileImg");

	  // 필드가 변경된 경우에만 값을 전송하도록 설정
	  form.addEventListener("submit", function (event) {
	    var formData = new FormData(form);

	    // 파일 선택 여부 확인
	    var selectedFile = fileInput.files[0];
	    if (formData.get("newPassword") !== "" ||
	        formData.get("newPassword2") !== "" ||
	        selectedFile) {
	      // 필드가 변경되었거나 파일이 선택된 경우, 폼을 제출합니다.
	      return true;
	    } else {
	        // 변경된 필드가 없으므로 페이지를 새로고침합니다.
	        event.preventDefault();
// 	        location.reload();
	        window.location.href = "mypage/supporter";
	        return false;
	      }
	  });
	}

	
	$(function() {
		  checkForm();
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
					<form id="saveForm" method="post" action="myInfoPro" enctype="multipart/form-data" onsubmit="return checkForm()">
						<div class="profileimg-wrap">
							<button type="button" id="resultProfileImg" class="profileimg" >
							<em id="profileImg" style="background-image: url('${pageContext.request.contextPath }/resources/images/profile/${member.member_image }')"  class=""></em>
							</button>
							<p class="setting-profileimg">
								<button type="button" onclick="$('#uploadProfileImg').click()" id="btn_updatePhoto">
									<span>바꾸기</span>
								</button>
								<button type="button" onclick="deletePhoto()" id="btn_deletePhoto">삭제</button>
							</p>
						</div>
						
						<input type="file" name="image" id="uploadProfileImg" style="display: none;">
						<input type="hidden" id="member_image" value="${member.member_image }">
						
						
						<script>
						    $('#uploadProfileImg').on('change', function(e) {
						        var file = e.target.files[0];
						        var reader = new FileReader();
						
						        reader.onload = function(e) {
						            var imageURL = e.target.result;
						            $('#profileImg').removeClass('default-profile-img');
						            $('#profileImg').css('background-image', 'url(' + imageURL + ')');
						            uploadAndSaveImage(file);
						        }
						
						        reader.readAsDataURL(file);
						    });
						    
						    function uploadAndSaveImage(file) {
						        var formData = new FormData();
						        formData.append('image', file);
						
						        $.ajax({
						            url: '/mypage/myInfoPro',
						            type: 'POST',
						            data: formData,
						            processData: false,
						            contentType: false,
						            success: function(response) {
						                // 이미지 업로드 및 DB 저장 성공 후 처리 로직
						                console.log('이미지 업로드 성공');
						            },
						            error: function(xhr, status, error) {
						                // 이미지 업로드 및 DB 저장 실패 시 처리 로직
						                console.error('이미지 업로드 실패:', error);
						            }
						        });
						    }
						    
						 // 2023-06-05 박경은 - 휴대폰 인증
						 	// 2023-06-07 박경은 - ("value", $("#member_phone").val()); 수정
						 	function sendSMS() {
								const member_phone = $('#member_phone').val();
								console.log('보내는 번호: ' + member_phone);
								const authCode = $('#authCode');
								
								$.ajax({
									type: 'post',
									url: 'message?member_phone=' + member_phone,
									success: function (data) {
										console.log("data: " + data);
										authCode.attr('disabled', false);
										code = data;
										alert('인증번호가 전송되었습니다.');
									}
								});
								
								$('#authCode').blur(function () {
									const authCode = $(this).val();
									
									if(authCode == code){
										$('#mobileCheckBtn').attr('disabled',true);
										$('#authCode').attr('readonly',true);
										alert('인증이 완료되었습니다.');
									} else {
										alert('인증오류.');
									}
								});
							}
						 	
						</script>
						
						
						
						
						
						<div class="email-input-wrap">
							<input type="text" name="realName" class="input-text disable" 
								placeholder="이름" value="${member.member_name}" disabled="" >
							<div class="input-btn-wrap">
								<div class="" style="width: 310px">
									<input type="email" id="userName" name="userName"
										class="disable input-text" placeholder="이메일 계정" value="${member.member_email}" disabled="">
								</div>
							</div>

							<div class="input-btn-wrap">
								<div class="input" style="width: 218px;">
									<!-- 2023-06-05 박경은 - 휴대폰 인증 - id, name, class, value 값 수정 -->
									<input id="member_phone" name="member_phone" type="tel" class="member_phone input-text" placeholder="휴대폰 번호" value="${member.member_phone}">
								</div>
								<div id="mobileCheckBtn" class="mobileCheckBtn btn" data-status="check">
									<!-- 2023-06-05 박경은 - 휴대폰 인증 onclick="sendSMS()" 추가 -->
									<a id="mobileCheckBtn" onclick="sendSMS()"><span>인증하기</span></a>
								</div>
								<div id="mobileRetryBtn" class="mobileRetryBtn btn" style="display: none;" data-status="retry">
									<a onclick="sendSMS()"><span>재전송</span></a>
								</div>
							</div>
							
							<div id="mobileConfirmArea" class="input-btn-wrap mobileConfirmArea">
								<div class="input">
									<input type="text" id="authCode" name="authCode" class="input-text" placeholder="인증번호" style="width: 218px;"> 
								</div>
								<div id="confirmMobileBtn" class="confirmMobileBtn btn" data-status="confirm">
									<a href="#" onclick="return false;"> <span>인증완료</span>
									</a>
								</div>
							</div>
							<p id="mobileNumberError" class="checkMobileError error-text mobileMsg">
								유효한 전화번호를 입력해주세요.</p>
							<p id="mobileCheckNumberError" class="error-text mobileMsg">
								인증번호를 잘못 입력하셨습니다. 다시 입력해주세요.</p>
							<p id="mobileTimeOutError" class="error-text mobileMsg">
								시간이 종료되었습니다. 다시 인증해주세요.</p>
							<p id="mobileSuccessNumberCheckMsg" class="error-text mobileMsg" style="color: #50e3c2;">
								인증이 완료되었습니다.</p>
							<div class="email-input-wrap">
		                        <input type="password" id="newPassword" name="newPassword" class="input-text" placeholder="새 비밀번호" maxlength="16">
		                        <p id="passwordError" class="pwd-text">영문, 숫자, 특수문자 (!@#$%^&amp;*+=-)를 모두 조합한 8자 이상</p>
		                        <input type="password" id="newPassword2" name="newPassword2" class="input-text" placeholder="새 비밀번호 확인" maxlength="16">
		                        <p id="passwordError2" class="pwd-text"></p>
                   			 </div>
                   			 
							<div class="email-input-wrap small">
								<div class="btn-wrap">
									<button type="submit" id="saveBtn" class="wz button primary block btn-block-mint">확인</button>
								</div>
							</div>
							
							<div class="my-info" style="text-align: end; margin-top: 15px;" >
                       			 <h3><a href="deleteMember"onclick="if(confirm('회원 탈퇴를 하시겠습니까?')) {fn_userDelete('${resultUser.userNo}');}return false;">
                       			 회원 탈퇴</a></h3>
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
	<jsp:include page="../inc/footer.jsp"></jsp:include>
	
</body>

</html>