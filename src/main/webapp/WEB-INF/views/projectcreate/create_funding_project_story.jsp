<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css" rel="stylesheet">
	<link href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/1.d6f42453.chunk.css">
	<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/6.eb91f874.chunk.css">
	<!-- 05-15 김동욱 (스토리 상세페이지 작성 폼) 라이브러리 추가 -->
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jodit.min.js"></script>
	<!-- 05-15 김동욱 (스토리 상세페이지 작성 폼) 라이브러리 추가 -->
	<link href="${pageContext.request.contextPath }/resources/css/jodit.min.css" rel="stylesheet" type="text/css">
	<!-- 05-19 김동욱 jquery 라이브러리 추가 -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	
	// 05-22 김동욱 ajax 이미지 리스트 가져오기
	function getPorjectImages() {
		$.ajax({
	          url: 'getProjectImages',
	          type: 'POST',
	          data: {project_idx: ${param.project_idx}},
	          dataType: "json",
	          success: function(response) {
	        	if(response == ""){
	        		$("#imageCheck").val("N");
	        	}else {
	        		$("#imageCheck").val("Y");
	        	}
	        	
   	  			$("#addImagesList").html("<br>")
        	  	for(let imagesList of response) {
        	  		if(imagesList != ""){
						$("#addImagesList").append('<img alt="" src="${pageContext.request.contextPath }/resources/images/project_images/'+ imagesList +'" width="300" height="200"><button id="deleteBtn" onclick="deleteImage(\''+imagesList+'\')"><img alt="" src="${pageContext.request.contextPath }/resources/images/delete-icon.png" width="15" height="15" ></button>')
        	  		}else if(imagesList == "" || imagesList == null){
						$("#addImagesList").append('<br><p style="color: lightgray">추가된 이미지가 없습니다!</p><br>')
        	  		}
        	  	}
	          },
      	});
	}
	
	// 05-22 김동욱 ajax 프로젝트 요약, 프로젝트 컨텐트 정보 가져오기
	function getProjectStory() {
		$.ajax({
	          url: 'getProjectStory',
	          type: 'POST',
	          data: {project_idx: ${param.project_idx}},
	          dataType: "json",
	          success: function(response) {
	        	  $("#project_summary").html(response.project_summary)
	        	  $(".jodit-wysiwyg").html("");
	        	  $(".jodit-wysiwyg").html(response.project_content)
	        	  // 포커스를 한번 하지 않고 저장하기를 누르면 기존 정보가 null String이 들어가서 기존 정보가 사라지기 때문에 한번 포커스를 함
	        	  $(".jodit-wysiwyg").focus();
	        	  // 한번 포커스 이후 페이지 스크롤 위로 이동
	        	  $("#AppLayout_Contents").scrollTop(0);
	        	  
	          }
    	});
	}
	// 05-22 김동욱 ajax 이미지 리스트 삭제
	
	function deleteImage(image) {
		$.ajax({
			 url: 'projectUpdateCheck',
	          type: 'POST',
	          data: {project_idx: ${param.project_idx}},
	          dataType: "json",
	          success: function(response) {
        		  let result = confirm("이미지를 삭제하시겠습니까?");
	        	  if(response.project_approve_status == "2" && response.project_update_status == "2"){ // project_approve_status가 이미 승인된 상태이지만 수정신청을 해서 승인이 되면 수정 가능
	        			if(result == true){
	        				$.ajax({
	        			          url: 'deleteProjectImage',
	        			          type: 'POST',
	        			          data: {project_idx: ${param.project_idx},
	        			        	     deleteImage: image},
	        			          success: function() {
	        			        	  getPorjectImages();
	        			          },
	        			          error: function(xhr, status, error) {
	        			            console.log(error);
	        			          }
	        		    	});
	        			}
					}else if(response.project_approve_status == "2" || response.project_approve_status == "3"){ // project_approve_status가 승인상태이거나 거부 상태이면 수정 불가능
						alert("이미 진행이된 프로젝트는 수정이 불가능합니다");
					}else if(response.project_approve_status == "0" || response.project_approve_status == "1"){ // project_approve_status가 제출하기 전이나 제출상태이면 삭제 가능
						if(result == true){
	        				$.ajax({
	        			          url: 'deleteProjectImage',
	        			          type: 'POST',
	        			          data: {project_idx: ${param.project_idx},
	        			        	     deleteImage: image},
	        			          success: function() {
	        			        	  getPorjectImages();
	        			          },
	        			          error: function(xhr, status, error) {
	        			            console.log(error);
	        			          }
	        		    	});
	        			}
					}
	          }
		})
	}
	
	$(function() {
		// 이미지 리스트 출력
		getPorjectImages()
		// 프로젝트 요약, 프로젝트 컨텐트 정보 출력
		getProjectStory()
		// 이미지 추가
		$("#addImageBtn").on("click", function() {
			var formData = new FormData();
	        var files = $('#images')[0].files;
	        for (var i = 0; i < files.length; i++) {
	          formData.append('files', files[i]);
	        }
			$.ajax({
		          url: 'imagesUpaload?project_idx='+${param.project_idx},
		          type: 'POST',
		          data: formData,
		          processData: false,
		          contentType: false,
		          success: function(response) {
		        	$("#preview").html("");
	        	  	$("input[id=images]").val("");
	        	  	getPorjectImages()
	        	  	alert("이미지가 등록되었습니다!")
		          }
	        });
		})
		
		// 05-31 김동욱 승인 여부 확인 후 저장버튼, 이미지 추가버튼, 이미지 삭제버튼 비활성화
		$.ajax({
			 url: 'projectUpdateCheck',
	          type: 'POST',
	          data: {project_idx: ${param.project_idx}},
	          dataType: "json",
	          success: function(response) {
	        		// project_approve_status가 2(승인)또는 3(거부)이면 저장버튼 비활성화
					if(response.project_approve_status == "2" || response.project_approve_status == "3"){
	        		  $("#addImageBtn").attr("disabled", true);
	        		  $("#saveBtn").attr("disabled", true);
					}
					
					// project_approve_status가 2(승인)가 된 상태에서 project_update_status(수정 권한)가 2(승인)가 되면 저장하기 버튼 활성화
					if(response.project_approve_status == "2" && response.project_update_status == "2"){
	        		  $("#addImageBtn").attr("disabled", false);
	        		  $("#saveBtn").attr("disabled", false);
					}
	          }
		})
	})
</script>
	
</head>
<body class="" style="overflow: auto;">
	<div data-react-modal-body-trap="" tabindex="0"
		style="position: absolute; opacity: 0;"></div>
	<noscript>You need to enable JavaScript to run this app.</noscript>
	<div id="root">
		<div id="AppLayout_Container" class="AppLayout_container__3zbzb">
			<div class="AppLayout_main__14bCi">
				<div class="AppSidebarLayout_contents__2thGr" id="sidebar">
					<!-- 05-17 김동욱 사이드바 삭제 후 include로 변경 -->
					<jsp:include page="../inc/create_project_side.jsp"></jsp:include>
				</div>
				<div id="AppLayout_Contents" class="AppLayout_contents__wv3DF">
					<div id="container" class="ContentsLayout_container__11k-W">
						<div class="FundingStoryContainer_container__33WY0">
							<ol class="Breadcrumb_container__3YjD4">
								<li class="Breadcrumb_item__2r9Ym">프로젝트 관리</li>
								<li class="Breadcrumb_item__2r9Ym">스토리 작성</li>
							</ol>
							<!-- 05-17 김동욱 모든 프로젝트 페이지 상단탭 project_top.jsp include로 변경 -->
							<nav class="DetailNavbar_container__3SkEf">
								<jsp:include page="../inc/project_top.jsp"></jsp:include>
							</nav>
							<div class="HeaderLayout_container__3fXkO">
								<div class="HeaderLayout_contents__F4hlC">
									<h2 class="FundingStoryContainer_title__1r0ZE">스토리 작성</h2>
									<p class="FundingStoryContainer_description__1sMTR">메이커님의
										프로젝트를 소개해 주세요.</p>
								</div>
								
							</div>
							<!-- 05-17 김동욱 파일 업로드를 위해 enctype="multipart/form-data" 추가 및 action과 method 설정 -->
								<section class="Section_container__3md8M"
									style="max-width: 630px;">
									<div style="" class="Section_header__1qwS7">
										<h2 class="Section_title__ikPIm Section_isRequired__F8rij">
											사진 등록
											
										</h2>
										<div class="Section_guide__2xeJO"></div>
									</div>
									<div class="Section_description__10Uwo">프로젝트의 맨 위에서 가장 먼저
										보여 주고 싶은 영상이나 사진을 등록해 주세요.</div>
									<div class="Section_content__3OkLZ">
										<div class="StoryVideoOrImageField_container__1lnfV">
											<div
												class="field Form_field__35I9T required ImageFormField_field__X1jTW StoryImageField_field__3O6yy">
												<div class="ImageFormField_buttonWrapper__su3pO">
														<!-- 05-17 김동욱 name : images로 변경 -->
														<!-- 05-19 김동욱 다중 이미지 업로드를 위해  multiple="true" 추가  -->
															<input accept="image/JPG,image/JPEG,image/GIF,image/PNG" id="images"
																name="images" placeholder="" type="file" value="" multiple="true">
													<label
														class="wz label ImageFileButton_label__3thB2 Label_label__3oH0h">
														<div class="wz input right ImageFileButton_input__1Dnch">
														</div></label><em class="helper error"></em>
														<br>
														<em
														class="helper ImageFormField_helper__3XC5c">2MB 이하의
														JPG, JPEG, GIF, PNG 파일</em>
														<br>
														<em
														class="helper ImageFormField_helper__3XC5c">해상도
														630x400 픽셀 이상</em>
														<br>
														<em
														class="helper ImageFormField_helper__3XC5c">여러 장
														등록돼요.
														<br>
														<span id="error"></span>
													<div id="preview"></div>
													
												</div>
												
												<!-- 05-23 김동욱 이미지 해상도 제한 -->
												<script type="text/javascript">
													var sel_files = [];
													
													$(function() {
														$("#images").on("change", handleImgFileSelect)
													})
													
													function fileUploadAction() {
														console.log("fileUploadAction");
														$("#images").trigger('click');
														
													}
													
													function handleImgFileSelect(e) {
														
														sel_files = [];
														$("#images").empty();
														
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
// 																var html = "<div id=\"img_id_" + index + "\"><img src=\"" + e.target.result + "\" data-file='"+f.name+"' style=\"width: 250px; height: 170px;\" class='selProductFile' title='Click to remove'</div>";
																$("#preview").append(html);
																index++;
																
																// 이미지 해상도 확인 및 용량 확인
																var img = new Image();
																img.src = e.target.result;
																img.onload = function() {
																	// 업로드된 이미지가 2MB를 초과하면 용량이 초과한다 경고 문구 표시
																	// 2MB 이하에 해당되면 이미지 해상도 크기 비교후해상도가 630 * 400 미만이면 조건에 맞는 해상도의 이미지를 업로드하라고 경고 문구 표시
																	if(e.total < 2048000){
																		if(this.width < 630 && this.height < 400){
																			$("input[id=images]").val("");
																			$("#preview").html("업로드된 이미지가 해상도 조건에 적합하지 않습니다! <br> 해상도 630x400 픽셀 이상 이미지를 등록하세요!").css("color", "red");
																		}
																	} else {
																		$("input[id=images]").val("");
																		$("#preview").html("업로드된 이미지 파일의 용량이 2MB를 초과합니다").css("color", "red");
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
												
												
												<script>
// 												  const inputElement = document.getElementById('images');
// 												  const errorElement = document.getElementById('error');
												
// 												  inputElement.addEventListener('change', (e) => {
// 												    const file = e.target.files[0];
// 												    const img = new Image();
												
// 												    img.onload = function() {
// 												      const minWidth = 640; // 허용하는 최대 너비
// 												      const minHeight = 400; // 허용하는 최대 높이
												
// 												      if (img.width < minWidth || img.height < minHeight) {
// 												        errorElement.textContent = '해상도 640px/400px 이상의 이미지만 등록 가능합니다.';
// 												        inputElement.value = ''; // 업로드한 이미지 제거
// 												      } else {
// 												    	  errorElement.textContent = '';
// 												      }
// 												    };
												
// 												    img.src = URL.createObjectURL(file);
// 												  });
												</script>
												
												 <script>
// 												    const uploadInput = document.getElementById('images');
// 												    const previewContainer = document.getElementById('preview');
												
// 												    uploadInput.addEventListener('change', handleUpload);
												
// 												    function handleUpload(event) {
// 												      const files = event.target.files;
												
// 												      // 이전에 미리보기 이미지가 있으면 삭제
// 												      while (previewContainer.firstChild) {
// 												        previewContainer.firstChild.remove();
// 												      }
												
// 												      // 파일을 순회하며 미리보기 이미지 생성
// 												      for (let i = 0; i < files.length; i++) {
// 												        const file = files[i];
// 												        const reader = new FileReader();
												
// 												        reader.onload = function (event) {
// 												          const imageUrl = event.target.result;
												
// 												          const previewImage = document.createElement('img');
// 												          previewImage.setAttribute('src', imageUrl);
// 												          previewImage.setAttribute('class', 'preview-image');
												
// 												          previewContainer.appendChild(previewImage);
// 												        }
												
// 												        reader.readAsDataURL(file);
// 												      }
// 												    }
												  </script>
												  <style>
													#preview {
													  display: flex;
													  flex-wrap: wrap;
													}
													
													.preview-image {
													  width: 250px;
													  height: 170px;
													  margin: 10px;
													}
												</style>
											</div>
										</div>
									</div>
									<button id="addImageBtn"
										class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD"
										style="width: 420px; max-width: 100%;" >이미지 추가하기
									</button>
								</section>
								<br>
								<div style="" class="Section_header__1qwS7">
									<h3 class="Section_title__ikPIm Section_isRequired__F8rij">
										추가된 이미지
										<div id="addImagesList">
											<br>
										</div>
									</h3>
									<div class="Section_guide__2xeJO"></div>
								</div>
								<br>
								<section class="Section_container__3md8M"
									style="max-width: 630px;">
									<div style="" class="Section_header__1qwS7">
										<h2 class="Section_title__ikPIm Section_isRequired__F8rij">
											프로젝트 요약
											
										</h2>
										<div class="Section_guide__2xeJO"></div>
									</div>
									<div class="Section_description__10Uwo">소개 영상이나 사진과 함께
										보이는 글이에요. 프로젝트를 쉽고 간결하게 소개해 주세요.</div>
									<div class="Section_content__3OkLZ">
										<div class="StorySummaryField_container__25ePA">
											<div
												class="field Form_field__35I9T FormFieldTextarea_field__33Ncu">
												<div class="wide column-2"></div>
												<div class="wide column-4">
													<div class="wz input">
														<textarea placeholder="내용 입력" helper="[object Object]"
															maxlength="100" name="project_summary" rows="3" id="project_summary"></textarea>
													</div>
													<em class="helper FormFieldTextarea_helper__3-iK_">100자
														남음</em>
												</div>
											</div>
										</div>
									</div>
								</section>
								
								<div class="StoryMakerAgreementNoticeBox_container__3Klad"></div>
								<section
									class="Section_container__3md8M StoryEditorWrapperItemWeb_container__3bMs8"
									style="max-width: 720px;">
									<div class="Section_header__1qwS7 spacing-4">
										<h2 class="Section_title__ikPIm Section_isRequired__F8rij">프로젝트
											스토리</h2>
										
									</div>
									<div class="Section_content__3OkLZ">
										<div>
											<ul class="StoryEditorTip_tipList__3DIf1">
												<li class="StoryEditorTip_tipListItem__2ovAi"><strong
													class="StoryEditorTip_infoTitle__2uyPG"><span
														class="Badge_container__3mdFR Badge_visible__2c54z StoryEditorTip_badge__3IsIc"><span
															class="Badge_badge__zKi0D Badge_label__2iNzD Badge_sm__3truG Badge_primary__3jwLR Badge_tertiary__-ciUe">TIP
																1</span></span>스토리는 이렇게 작성해 보세요</strong>
												<ul class="StoryEditorTip_infoList__1IJ3n">
														<li class="StoryEditorTip_listItem__1RKbt">이미지와 설명글
															구성으로 스토리를 작성하면 내외부 포털 검색 결과에 상위 노출될 확률이 높아져요.</li>
														<li class="StoryEditorTip_listItem__1RKbt">이미지로만 구성된
															스토리는 이미지 로딩 속도가 느려 서포터가 상세 페이지를 벗어날 확률이 높아져요.</li>
														
													</ul></li>
												<li class="StoryEditorTip_tipListItem__2ovAi"><strong
													class="StoryEditorTip_infoTitle__2uyPG"><span
														class="Badge_container__3mdFR Badge_visible__2c54z StoryEditorTip_badge__3IsIc"><span
															class="Badge_badge__zKi0D Badge_label__2iNzD Badge_sm__3truG Badge_primary__3jwLR Badge_tertiary__-ciUe">TIP
																2</span></span>서포터에게 꼭 알려 주세요</strong>
												<ul class="StoryEditorTip_infoList__1IJ3n">
														<li class="StoryEditorTip_listItem__1RKbt">도서산간 배송비가
															있다면 정확한 추가 금액과 지불 방법을 스토리에 작성해 주세요.</li>
													</ul></li>
											</ul>
										</div>
										<div
											class="WYSIWYGEditor_container__3MZO0 StoryEditorWrapperItemWeb_editor__3AvV7">
											<div class="WYSIWYGEditor_editor__V4Eam">
												<div class="wysiwyg-editor">

													<!--  05-15 김동욱 스토리 상세페이지 관련 폼 (jodit 라이브러리 추가) -->
														<textarea id="project_content" name="project_content">
														</textarea>
													<script>
														var editor = new Jodit('#project_content', {
														  uploader: {
														    insertImageAsBase64URI: true
														  }
														});
														
														
															
															
															window.onload = function() {
																
																
																// 05-22 김동욱 저장버튼 클릭시 project_summary, project_content 업데이트
																// 05-28 김동욱 저장버튼 클릭시 project_content의 null값을 인식할 수 없어 아래로 이동
																$("#saveBtn").on("click", function() {
																	let project_summary = $("#project_summary").val();
																	
																	if(project_summary == null || project_summary == ""){
																		alert("프로젝트 요약 정보를 입력해주세요!")
																		return false;
																	}
																	
																	// 값을 입력하지 않으면 아래의 공백으로 보이는 값이 들어가 있는데 아래 값이 들어가면 return false
																	if(editor.value == "<p><br></p>" || editor.value == "														"){
																		alert("프로젝트 내용을 입력해주세요!")
																		return false;
																	}
																	
																	if($("#imageCheck").val() == "N"){
																		alert("프로젝트 이미지를 등록해주세요!")
																		return false;
																	}
																	
																	$.ajax({
																          url: 'projectStoryUpdate',
																          type: 'POST',
																          data: {project_idx: ${param.project_idx},
																        	  	 project_summary: $("#project_summary").val(),
																        	  	 project_content: $("#project_content").val()
																          		},
																          success: function() {
																        	  alert("프로젝트 스토리 정보가 저장 되었습니다!")
																        	  location.href = "main?project_idx="+${param.project_idx};
																          },
																          error: function(xhr, status, error) {
																            console.log(error);
																          }
															        });
																});
																
															}
															
														
														
													</script>

												</div>
											</div>
										</div>
									</div>
								</section>
								
									<input type="hidden" name="project_idx" value="${param.project_idx}">
									<div class="FundingStoryContainer_btnWrapper__32tvJ">
<!-- 										<button -->
<!-- 											class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD" -->
<!-- 											type="submit" style="width: 420px; max-width: 100%;"> -->
<!-- 											<span><span class="Button_children__q9VCZ">저장하기</span></span> -->
<!-- 										</button> -->

<!-- 										<button -->
<!-- 											class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD" -->
<!-- 											style="width: 420px; max-width: 100%;" id="saveBtn" > -->
<!-- 											<span><span class="Button_children__q9VCZ">저장하기</span></span> -->
<!-- 										</button> -->
									</div>
							<input type="hidden" id="imageCheck" value="">
							<button id="saveBtn"
								class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD"
								style="width: 420px; max-width: 100%;" id="saveBtn" >저장하기
							</button>
						</div>
					</div>
					<div class="ChannelTalk_container__3OcHU">
						<button type="button" ></button>
					</div>
				</div>
			</div>
		</div>
		<div class="Toast_toast__1b_B2">
			<div class="Toast_content__G-bTq"></div>
		</div>
	</div>
</body>
</html>