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
	          error: function(xhr, status, error) {
	          }
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
	        	  
	          },
	          error: function(xhr, status, error) {
	            console.log(error);
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
	        	  
	        	  if(response.project_approve_status == "2" && response.project_update_status == "2"){
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
					}else if(response.project_approve_status == "2" || response.project_approve_status == "3"){
						
						alert("이미 진행이된 프로젝트는 수정이 불가능합니다");
						
					}else if(response.project_approve_status == "0" || response.project_approve_status == "1"){
						
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
	        	  
	          },
	          error: function(xhr, status, error) {
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
		          },
		          error: function(xhr, status, error) {
		            console.log(error);
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
	        	  
	        	  
	          },
	          error: function(xhr, status, error) {
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
							<!-- 05-17 김동욱 파일 업로드를 위해 enctype="multipart/form-data" 추가 및 action과 method 설정 -->
								<section class="Section_container__3md8M"
									style="max-width: 630px;">
									<div style="" class="Section_header__1qwS7">
										<h2 class="Section_title__ikPIm Section_isRequired__F8rij">
											사진 등록
											<div>
												<button type="button" class="Tooltip_button__26Zz0"
													aria-describedby="Tooltip_4">
													<span class="Tooltip_label__1s0-R"></span><span
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
											</div>
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
											<div>
												<button type="button" class="Tooltip_button__26Zz0" 
													aria-describedby="Tooltip_5">
													<span class="Tooltip_label__1s0-R"></span><span
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
											</div>
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
								<section class="Section_container__3md8M"
									style="max-width: 630px;">
									<div class="Section_header__1qwS7">
										<h2 class="Section_title__ikPIm Section_isRequired__F8rij">스토리
											광고 심의 동의</h2>
										<div class="Section_guide__2xeJO"></div>
									</div>
									<div class="Section_description__10Uwo">스토리를 작성하기 전 와디즈에서
										제공하는 광고 심의 가이드를 반드시 확인해 주세요.</div>
									<div class="Section_content__3OkLZ">
										<div class="StoryMakerAgreementField_container__3GnYX">
											<div class="StoryMakerAgreementInfo_container__PVGPV">
												<ul class="StoryMakerAgreementInfo_linkList__zZ8jX">
													<li><a
														href="https://www.wadiz.kr/link/funding_Common_AdGuide"
														rel="noopener noreferrer" target="_blank"
														download="공통 표시·광고 가이드라인.pdf">공통 표시·광고 가이드라인</a></li>
													<li><a
														href="https://www.wadiz.kr/link/funding_Food_AdGuide"
														rel="noopener noreferrer" target="_blank"
														download="식품 표시·광고 가이드라인.pdf">식품 표시·광고 가이드라인</a></li>
													<li><a
														href="https://www.wadiz.kr/link/funding_Cosmetic_AdGuide"
														rel="noopener noreferrer" target="_blank"
														download="화장품 표시·광고 가이드라인.pdf">화장품 표시·광고 가이드라인</a></li>
													<li><a
														href="https://www.wadiz.kr/link/funding_Healthcare_AdGuide"
														rel="noopener noreferrer" target="_blank"
														download="건강보조기구 표시·광고 가이드라인.pdf">건강보조기구 표시·광고 가이드라인</a></li>
												</ul>
												<p class="StoryMakerAgreementInfo_registered__12WHo">
													<span class="wz mini badge">동의 완료</span> 2023.05.15 12:34
													<button type="button"
														class="StoryMakerAgreementInfo_showTermBtn__24MFn">동의
														내용 보기</button>
												</p>
												<p class="StoryMakerAgreementInfo_userInfo__2KP5n">
													<span>김동욱</span>kdw940822@naver.com
												</p>
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
										<div class="Section_guide__2xeJO">
											<div class="Section_helperMessage__3V6GQ">
												<a class="link"
													href="https://www.wadiz.kr/link/funding_story_guide"
													target="_blank" rel="nofollow noopener noreferrer"
													data-ga-category="메이커스튜디오_스토리작성_스토리작성가이드"
													data-ga-action="클릭">스토리 작성 가이드<svg viewBox="0 0 40 40"
														focusable="false" role="presentation"
														class="withIcon_icon__3lrgp withIcon_inline__3A3d_ icon"
														aria-hidden="true" style="width: 14px; height: 14px;">
														<path
															d="M31.42 35.84h-27V8.4h14.76v-2H2.42v31.44h31V22.55h-2v13.29z"></path>
														<path

															d="M37.32 15.41l-.01-13-12.99.01v2l9.72-.01-18.19 19.42 1.46 1.37 18-19.22.01 9.43h2z"></path></svg></a>
											</div>
										</div>
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
														<li class="StoryEditorTip_listItem__1RKbt">스토리 작성이
															어렵다면 <a class="StoryEditorTip_link__2l34V"
															href="https://www.wadiz.kr/link/funding_story_partner_story"
															target="_blank" rel="noreferrer">파트너 서비스</a>로 전문가와 맞춤형
															스토리를 만들어 보세요.
														</li>
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
										<em class="helper error">필수 항목을 입력해 주세요.</em>
									</div>
								</section>
								<div class="StoryEditorForComingWrapper_container__1cngW">
									<section class="Section_container__3md8M"
										style="max-width: 630px;">
										<div class="Section_content__3OkLZ">
											<div class="StoryEditorForComingWrapper_notice__17_eT">
												<h4 class="StoryEditorForComingWrapper_title__3tgjs">오픈예정
													스토리</h4>
												<i
													class="icon-error-o StoryEditorForComingWrapper_icon__1vZQN"
													aria-hidden="true"></i>
												<p class="StoryEditorForComingWrapper_description__210jK">
													오픈예정 서비스를 신청하지 않으셨네요?<br>
												</p>
												<button
													class="Button_button__1e2A2 StoryEditorForComingWrapper_link__3TjuV"
													type="button">
													<span><span class="Button_children__q9VCZ">오픈예정
															서비스 신청하러 가기</span></span>
												</button>
												<div
													class="wz message OpenComingSoonAdMessage_container__39tu7">
													<div class="OpenComingSoonAdMessage_title__1KnPv">70%
														메이커가 오픈예정 서비스 이용 중!</div>
													<div class="OpenComingSoonAdMessage_text__3K9jK">
														<img class="OpenComingSoonAdMessage_image__1B2Zl"
															alt="emoji-pointing-up"
															src="https://static.wadiz.kr/studio/funding/static/media/emoji-pointing-up.5b356382.svg"
															aria-hidden="true">오픈 직후 3일 내 전체 프로젝트 금액의 <strong>약
															35% 모집</strong>
													</div>
													<div class="OpenComingSoonAdMessage_text__3K9jK">
														<img class="OpenComingSoonAdMessage_image__1B2Zl"
															alt="emoji-victory-hand"
															src="https://static.wadiz.kr/studio/funding/static/media/emoji-victory-hand.f827b84f.svg"
															aria-hidden="true">평균 프로젝트 금액 <strong>3배
															이상 달성</strong>
													</div>
													<ul class="OpenComingSoonAdMessage_description__3fldv">
														<li>데이터 기준: 2020.07 ~ 2020.12 종료된 프로젝트</li>
														<li>성공 프로젝트 평균 기준</li>
													</ul>
												</div>
											</div>
										</div>
									</section>

								</div>
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