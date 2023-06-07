<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css" rel="stylesheet">
<link href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/9.2112a1bf.chunk.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script> 
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
									
									
									<h3>funding_project_state.jsp</h3>
									 <canvas id="myChart" style="width: 100px;"></canvas>
									<script>
										const ctx = document.getElementById('myChart').getContext('2d'); 
									    // const 변수타입과 ctx 변수명은 Chart.js 기본문서에서 사용하고 있으니 따라했다.
									    // ctx는 sample 코드들에서 다 사용하기 때문에 불편하지 않게 ctx로 연습하자.
									    
									    const myChart = new Chart( ctx, {
									        type: 'line', 
									        data: {
									            labels: ['2020','2021','2022','2023','2024','2025','2026'],    // x축의 이름
									            datasets: [     // y축에 들어갈 데이터들
									                {    
									                label: '연봉',  //범례
									                data: [3000,3300,3500,4000,4200,4500,4800] // 값
									                }
									            ]
									        }
									    });


								    </script>

										
									
									
									
									
								</div>
							</div>
						</div>
					</div>
					<div class="ChannelTalk_container__3OcHU">
						<button type="button"></button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
