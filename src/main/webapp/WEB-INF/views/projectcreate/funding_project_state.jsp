<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>프로젝트 현황</title>

<link href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css" rel="stylesheet">
<link href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/9.2112a1bf.chunk.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/main/main.c1266dc7.css">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/main/css/my-wadiz.ddf07734.chunk.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script> 
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<style type="text/css">
 .u.i-progressbar { position:relative; }
    .progress-label {
        position:absolute;
        left:50%;
        font-weight:bold;
        margin-left:-400px;
    }
</style>

<script type="text/javascript">


	
	
	// 06-13 김동욱 수정신청
    $(function() {
    	
    	$.ajax({
			 url: 'projectUpdateCheck',
	          type: 'POST',
	          data: {project_idx: ${param.project_idx}},
	          dataType: "json",
	          success: function(response) {
	        	  
	        	  if(response.project_update_status == "1"){
	        		  $("#saveBtn").attr("disabled", true);
	        		  $("#saveBtn").text("수정 신청 완료");
	        	  }else if(response.project_update_status == "2") {
	        		  $("#saveBtn").attr("disabled", false);
	        		  $("#saveBtn").text("수정 완료");
	        		  $("#updateStatus").val(0);
	        	  }
	        	  
	          }
		})
    	
    	
    	$("#saveBtn").on("click", function() {
		    $.ajax({
				 url: 'projectModifyApply',
		          type: 'POST',
		          data: {project_idx: ${param.project_idx},
		        	  updateStatus : $("#updateStatus").val()  
		          },
		          success: function(response) {
		        	  if($("#updateStatus").val() == 1){
		        	  	alert("수정신청이 완료되었습니다.");
		        	  }else if($("#updateStatus").val() == 0){
		        	  	alert("수정완료");
		        	  }
	        	  }
			})
		})
		
	})


</script>



</head>
<body class="ReactModal__Body--open" aria-hidden="true">
	<div data-react-modal-body-trap="" tabindex="0"
		style="position: absolute; opacity: 0;"></div>
	<div id="root">
		<div id="AppLayout_Container" class="AppLayout_container__3zbzb">
			<!-- 05-17 김동욱 모든 프로젝트 페이지 상단탭 project_top.jsp include로 변경 -->
			<nav class="DetailNavbar_container__3SkEf">
				<jsp:include page="../inc/project_top.jsp"></jsp:include>
			</nav>
			<div class="AppLayout_main__14bCi">
				<jsp:include page="../inc/create_project_side.jsp"></jsp:include>
				<div id="AppLayout_Contents" class="AppLayout_contents__wv3DF">
					<div class="FundingContainer_wrapper__3FtZE">
						<div class="FundingLayout_container___Cixh">
							<div class="FundingLayout_contents__12sTn">
								<div class="FundingContainer_listContainer__1jw_z">
									
									
									<h2 class="FundingStoryContainer_title__1r0ZE">프로젝트 현황</h2>
									
									<div class="MyWadizSection_section__3FCv1">
										<div class="MyWadizSupporterProject_container__2uWcZ">
											<div class="MyWadizSupporterProject_title__1IOfu">
												<div class="MyWadizSupporterProject_accumulate__1nyx5">
													<div class="MyWadizSupporterProject_value__7aQ4B">
														<a class="MyWadizSupporterAccumulate_container__h_OVK">
															<dl class="MyWadizSupporterAccumulate_info__2_7Is">
																<dt class="MyWadizSupporterAccumulate_title__3CiIs">
																	<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																		<g data-name="레이어 2">
																		<path d="M21.19 12.5h-5.91v15.16h2.16v-4.59h3.75a7 7 0 0 0 4.63-1.41 4.75 4.75 0 0 0 1.69-3.87 4.77 4.77 0 0 0-1.69-3.88 7 7 0 0 0-4.63-1.41zm3.07 7.81a4.84 4.84 0 0 1-3.14.88h-3.68v-6.8h3.68a4.9 4.9 0 0 1 3.14.87 3.06 3.06 0 0 1 1.09 2.53 3 3 0 0 1-1.09 2.52z"></path>
																		<path d="M20 1.67A18.33 18.33 0 1 0 38.33 20 18.35 18.35 0 0 0 20 1.67zm0 34.66A16.33 16.33 0 1 1 36.33 20 16.35 16.35 0 0 1 20 36.33z"></path>
																		<path fill="none" d="M0 0h40v40H0z"></path></g></svg>
																	<span class="MyWadizSupporterAccumulate_name__1mWXC">목표 금액</span>
																</dt>
																<dd class="MyWadizSupporterAccumulate_value__1oBSj">${myProjectStatus.project_target }원</dd>
															</dl>
														</a>
														<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__1qDCv">
														<a class="MyWadizSupporterAccumulate_container__h_OVK">
														<dl class="MyWadizSupporterAccumulate_info__2_7Is">
															<dt class="MyWadizSupporterAccumulate_title__3CiIs">
																<svg viewBox="0 0 40 40" focusable="false" role="presentation"
																	class="withIcon_icon__3VTbq" aria-hidden="true">
																	<path fill="none" d="M0 0h40v40H0z"></path>
																	<path
																		d="M38 24.64l-.01-16.26-15.6.01v2.4l11.74-.01L21.37 24.4l-6.53-6.75-12.9 13.2 1.72 1.67 11.17-11.43 6.57 6.79 14.19-15.15.01 11.91H38z"></path></svg>
																														
																	<span class="MyWadizSupporterAccumulate_name__1mWXC">총 결제된 금액</span>
																</dt>
																<dd class="MyWadizSupporterAccumulate_value__1oBSj">${myProjectStatus.todayTotalAmount }원</dd>
															</dl></a>
													</div>
												</div>
												<div class="MyWadizSupporterProjectInfo_container__3MC9F">
													<div class="MyWadizSupporterProjectInfo_project__3Vaun">
														<div class="MyWadizSupporterProjectInfo_projectLink__2K77b" style="height: 104px">
															<a><span>총 결제건수</span><b>${myProjectStatus.project_payment_count }건</b></a>
															<hr class="Divider_divider__ToZaf Divider_vertical__fJJKf Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProjectInfo_divider__2mXtA">
															<a><span>총 참여자수</span><b>${myProjectStatus.participantsCount }명</b></a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									
								    
								    <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
								    <script type="text/JavaScript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
									<script type="text/JavaScript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
									<script type="text/javascript">
									    jQuery(document).ready(function() {
									       
									        var barProgress = jQuery(".progressbar");
									       
									        // value 값의 숫자를 입력함으로서 내용을 채울 수 있다.
									        
									
									        barProgress.eq(0).progressbar({value:${myProjectStatus.completionRate }});
									        barProgress.eq(0).find(".ui-progressbar-value").css({"background":"#00c4c4"});
									       
									        barProgress.eq(1).progressbar({value:75});
									        barProgress.eq(1).find(".ui-progressbar-value").css({"background":"#FFCC66"});
									       
									        barProgress.eq(2).progressbar({value:50});
									        barProgress.eq(2).find(".ui-progressbar-value").css({"background":"#DDDDDDD"});
									    });
									</script>
									
									<br>
								    <div class="progressbar"><div class="progress-label">${myProjectStatus.completionRate}% 달성완료!</div></div>
									<br>
									 <canvas id="myChart" style="width: 100px;"></canvas>
									<hr>
									 
									<script>
									
									
										const ctx = document.getElementById('myChart').getContext('2d'); 
									    // const 변수타입과 ctx 변수명은 Chart.js 기본문서에서 사용하고 있으니 따라했다.
									    // ctx는 sample 코드들에서 다 사용하기 때문에 불편하지 않게 ctx로 연습하자.
									    
									    
									    const myChart = new Chart( ctx, {
									        type: 'line', 
									        data: {
									            labels: ['6일전','5일전','4일전','3일전','2일전','1일전','오늘'],    // x축의 이름
									            datasets: [     // y축에 들어갈 데이터들
									                {    
									                label: '누적 결제 금액',  //범례
									                data: [${myProjectStatus.sixDayAgoTotalAmount},
									                	${myProjectStatus.fiveDayAgoTotalAmount},
									                	${myProjectStatus.fourDayAgoTotalAmount},
									                	${myProjectStatus.threeDayAgoTotalAmount},
									                	${myProjectStatus.twoDayAgoTotalAmount},
									                	${myProjectStatus.oneDayAgoTotalAmount},
									                	${myProjectStatus.todayTotalAmount}] // 값
									                }
									            ]
									        }
									    });

								    </script>
								    
								    <br>
								    <div align="center">
								    	<input type="hidden" id="updateStatus" value="1">
									    <button type="button" class="wz button primary" id="saveBtn">해당 프로젝트 수정 신청하기</button>
								    </div>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
