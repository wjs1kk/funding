<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="ko" class="">

<head>
	<title>아이펀드 프로젝트만들기 기본정보</title>

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


<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">

	$(function() {
		$('#save').click(function(){
			var formData = new FormData();
			var files = $('#project_thumbnail')[0].files;
			 formData.append('files', files[0]);
			 if(files[0] == undefined){
				 alert("대표 이미지를 확인해주세요");
				 return false;
			 } else if($("#project_title").val() == ""){
				 alert("프로젝트 제목을 확인해주세요");
				 return false;
			 }
				$.ajax({
					type: "post",
					url: "projectBaseInfoFileUpdate?project_idx=" + ${param.project_idx},
					processData: false,
		          	contentType: false,
					data: formData,
					success: function() {
						if($('#project_adult').is(':checked')){
							$('#project_adult').val(1);
						}else{
							$('#project_adult').val(0);			
						}
						
					$.ajax({
						type: "post",
						url: "projectBaseInfoUpdate",
						data:{
							project_idx: ${param.project_idx},
							project_title: $("#project_title").val(),
							project_end_date: $("#project_end_date").val(),
							project_adult: $("#project_adult").val()
						},
						success: function() {
							location.href = "main?project_idx=" + ${param.project_idx};
						}
					})
					}
				});
			})
			
			// 05-31 김동욱 승인 여부 확인 후 저장버튼 비활성화
			$.ajax({
				 url: 'projectUpdateCheck',
		          type: 'POST',
		          data: {project_idx: ${param.project_idx}},
		          dataType: "json",
		          success: function(response) {
		        	 
		        	 $("#project_title").val(response.project_title);
		        	 
		        	 if(response.project_adult == "1"){
			        	 $("#project_adult").prop("checked", true);
		        	 }
		        	  
					// project_approve_status가 2(승인)또는 3(거부)이면 저장버튼 비활성화
					if(response.project_approve_status == "2" || response.project_approve_status == "3"){
					 $("#save").attr("disabled", true);
					}
					
					// project_approve_status가 2(승인)가 된 상태에서 project_update_status(수정 권한)가 2(승인)가 되면 저장하기 버튼 활성화
					if(response.project_approve_status == "2" && response.project_update_status == "2"){
					 $("#save").attr("disabled", false);
					}
		        	  
	          	}
			})					
		})	
		$(function() {
			$("#project_thumbnail").off().on("change", function(){
				if (this.files && this.files[0]) {
					
					var file_path = $(this).val();
					var maxSize = 3 * 1024 * 1024;
					var fileSize = this.files[0].size;
					var reg = /(.*?)\.(jpg|jpeg|png)$/;
					
					if(fileSize > maxSize){
						alert("첨부파일 사이즈는 3MB 이내로 등록 가능합니다.");
						$(this).val('');
						return false;
					} else if(file_path != "" && (file_path.match(reg)) == null || reg.test(file_path) == false){
						alert("허용된 확장자만 업로드 가능합니다.");
						$(this).val('');
						return false;
					}
				}
			
			});
	})
</script>
</head>

<body class="ReactModal__Body--open" aria-hidden="true">
	<div id="root">
		<div id="AppLayout_Container" class="AppLayout_container__3zbzb">
			<div class="AppLayout_main__14bCi">
				<jsp:include page="../inc/create_project_side.jsp"></jsp:include>
				<div id="AppLayout_Contents" class="AppLayout_contents__wv3DF">
					<!-- 05-17 김동욱 모든 프로젝트 페이지 상단탭 project_top.jsp include로 변경 -->
					<nav class="DetailNavbar_container__3SkEf">
						<jsp:include page="../inc/project_top.jsp"></jsp:include>
					</nav>
					<section class="Page_container__1PffN">
						<ol class="Breadcrumb_container__3YjD4">
							<li class="Breadcrumb_item__2r9Ym">프로젝트 관리</li>
							<li class="Breadcrumb_item__2r9Ym">기본 정보</li>
						</ol>
						<div class="Page_title__1tce_" role="heading" aria-level="2">기본
							정보</div>
						<div class="Page_description__VzZod">프로젝트를 대표하는 중요한 정보들을 입력해
							주세요.</div>
						<div class="Page_content__1d0Vb">
							<section class="Section_container__3md8M spacing-9" style="">
								<div style="max-width: 630px;">
									<div class="Section_header__1qwS7 spacing-4">
										<h2 class="Section_title__ikPIm Section_isRequired__F8rij">프로젝트
											제목</h2>
										<div class="Section_guide__2xeJO"></div>
									</div>
									<div class="Section_content__3OkLZ">
										<div class="TextField_textField__23rCe TextField_md__2zsQn">
											<label></label>
											<div class="TextField_field__1E9vt">
												<input placeholder="제목을 입력해 주세요" maxlength="40" type="text"
													class="Input_input__2kAAL Input_md__3-eZ6"
													id="project_title"
													aria-invalid="false" value="">
											</div>
										</div>
									</div>
								</div>
								<div class="Section_guideMessage__3XqrM">
									<h4>프로젝트 제목은 핵심을 간결하게</h4>
									<p>리워드의 장점과 특징이 잘 드러나는 키워드를 한 가지 이상 포함해 주세요.</p>
									<p>중요한 키워드는 눈에 잘 띄도록 제목 앞부분에 적는 것을 추천해요.</p>
									<p>
										예시)<br>바지걸이+옷걸이가 하나로! 옷 정리에 1초만 투자하자<br>[8만 원대 국민
										무스탕] 가죽으로 26억 펀딩받은 비결?<br>[아이펀드 한정] 광화문, 블록으로 재탄생하다!
									</p>
								</div>
							</section>
							<section class="Section_container__3md8M spacing-9"
								style="max-width: 630px;">
								<div style="" class="Section_header__1qwS7">
									<h2 class="Section_title__ikPIm Section_isRequired__F8rij">
										대표 이미지
										<div>
											
										</div>
									</h2>
									<div class="Section_guide__2xeJO"></div>
								</div>
								<div class="Section_description__10Uwo">
									<ul>
										<li>3MB 이하의 JPG, JPEG, PNG 파일</li>
										<li>텍스트나 로고는 넣을 수 없어요.</li>
									</ul>
								</div>
								<div class="Section_content__3OkLZ">
											<div class="FileUpload_container__3FuFH container">
												<input type="file" id="project_thumbnail" name="file" accept=".jpeg, .jpg, .png"/>
											</div>
										</div>
							</section>
							<section class="Section_container__3md8M spacing-9"
								style="max-width: 630px;">
								<div class="Section_header__1qwS7" style="">
									<h2 class="Section_title__ikPIm Section_isRequired__F8rij">
										프로젝트 종료일
										<div>
											
										</div>
									</h2>
									<div class="Section_guide__2xeJO"></div>
								</div>
								<div class="Section_description__10Uwo">프로젝트 심사부터 리워드 제작
									기간 등 전체 일정을 고려해 설정해 주세요.</div>
								<div class="Section_content__3OkLZ">
									<div>
										<div color="basic"
											class="MessageBox_messageBox__3acWS MessageBox_basic__2vbop spacing-3">
											<span><svg viewBox="0 0 40 40" focusable="false"
													role="presentation"
													class="withIcon_icon__1Oal1 MessageBox_icon__31KWI MessageBox_withoutTitle__2S2r8"
													aria-hidden="true">
													<path fill="none" d="M0 0h40v40H0z"></path>
													<path
														d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm1 28.6h-2v-13h2zm-1-15.84A1.8 1.8 0 1 1 21.8 12a1.8 1.8 0 0 1-1.8 1.76z"></path></svg></span>
											<div class="MessageBox_content__3db50">
												<div class="MessageBox_description__1bCQv">리워드 발송은
													프로젝트 종료 후 결제까지 완료된 다음에 시작할 수 있어요.</div>
											</div>
										</div>
										
										<div class="DateField_container__2FQ6X">
											<div class="ant-picker css-57nriz date-picker"
												style="width: 100%;">
												<div class="ant-picker-input">

													<input type="text" id="project_end_date" name="project_end_date" placeholder="">
													<script>
													   $(function() {
													       //input을 datepicker로 선언
													       $("#project_end_date").datepicker({
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
													       $('#project_end_date').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
													   });
													</script>
												</div>
											</div>
										</div>
										
										
									</div>
								</div>
							</section>
							
							<section class="Section_container__3md8M spacing-9"
								style="max-width: 630px;">
								<div class="Section_header__1qwS7">
									<h2 class="Section_title__ikPIm Section_isOptional__DtcQ8">🚫
										성인 인증</h2>
									<div class="Section_guide__2xeJO"></div>
								</div>
								<div class="Section_description__10Uwo">19세 이상만 사용할 수 있는
									리워드인 경우 체크해 주세요. 체크 시 성인 인증을 완료한 서포터만 해당 프로젝트에 참여할 수 있어요.</div>
								<div class="Section_content__3OkLZ">
									<div class="CheckboxField_container__1FHmG">
										<label
											class="Checkbox_checkbox__27KzI Checkbox_md__28FjK Checkbox_labeled__uRUNZ">
											<input type="checkbox" id="project_adult" class="Checkbox_input__304VX"><span
											class="Checkbox_icon__3gYsg" aria-hidden="true"><svg
													viewBox="0 0 16 2" focusable="false" role="presentation"
													class="withIcon_icon__1Oal1 Checkbox_removeIcon__3mPDx"
													aria-hidden="true">
													<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg>
												<svg viewBox="0 0 48 48" focusable="false"
													role="presentation"
													class="withIcon_icon__1Oal1 Checkbox_checkIcon__165W2"
													aria-hidden="true">
													<path
														d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span><span
											class="Checkbox_content__3WSlM"><span>19세 이상 참여
													가능한 리워드예요.</span></span></label>
									</div>
								</div>
							</section>
							
							<div class="ProjectTypeFormContainer_buttonWrapper__3fh_J">
									<input type="button" style="width: 420px; max-width: 100%;"
										id="save" name="savePlan" value="저장하기"
										class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD FundingPlanLayout_submitBtn__1EzVj">
								</div>
						</div>
					</section>
				</div>
			</div>
		</div>

</body>
</html>
<!-- 데이트피커를 위한 라이브러리 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 데이트피커를 위한 라이브러리 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>