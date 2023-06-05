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
<!-- 05-29 김동욱 jquery 라이브러리 추가 -->
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
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
									
									
									<h3>funding_project_shipmentRefund.jsp</h3>
									<table id="list"></table>
									<div id="pager"></div>
									<div style="margin-top:20px; font-size:30px;" id="click_result"></div>
									
									
									
									
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
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/themes/redmond/jquery-ui.css" type="text/css" />
<!-- jqGrid CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/jqgrid/4.6.0/css/ui.jqgrid.css" type="text/css" />
<!-- The actual JQuery code -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js" /></script>
<!-- The JQuery UI code -->
<script type="text/javascript" src="https://code.jquery.com/ui/1.10.3/jquery-ui.min.js" /></script>
<!-- The jqGrid language file code-->
<script type="text/javascript" src="//cdn.jsdelivr.net/jqgrid/4.6.0/i18n/grid.locale-kr.js" /></script>
<!-- The atual jqGrid code -->
<script type="text/javascript" src="//cdn.jsdelivr.net/jqgrid/4.6.0/jquery.jqGrid.src.js" /></script>
<script>
	$(document).ready(function() {
		var mydata = [
			{date:"2022-09-01", user_name:"test0", user_id:"id1",product:"상품1", idx:"1"},
			{date:"2022-09-02", user_name:"test2", user_id:"id2",product:"상품1", idx:"2"},
			{date:"2022-09-03", user_name:"test3", user_id:"id3",product:"상품1", idx:"3"},
			{date:"2022-09-04", user_name:"test3", user_id:"id4",product:"상품1", idx:"4"},
			{date:"2022-09-05", user_name:"test2", user_id:"id2",product:"상품1", idx:"5"},
			{date:"2022-09-06", user_name:"test3", user_id:"id3",product:"상품2", idx:"6"},
			{date:"2022-09-07", user_name:"test4", user_id:"id5",product:"상품2", idx:"7"},
			{date:"2022-09-08", user_name:"test2", user_id:"id2",product:"상품2", idx:"8"},
			{date:"2022-09-09", user_name:"test3", user_id:"id3",product:"상품2", idx:"9"},
			{date:"2022-09-10", user_name:"test6", user_id:"id6",product:"상품2", idx:"10"},
			{date:"2022-09-11", user_name:"test2", user_id:"id2",product:"상품2", idx:"11"},
			{date:"2022-09-12", user_name:"test3", user_id:"id3",product:"상품2", idx:"12"},
			{date:"2022-09-13", user_name:"test7", user_id:"id7",product:"상품2", idx:"13"},
			{date:"2022-09-14", user_name:"test2", user_id:"id2",product:"상품2", idx:"14"},
			{date:"2022-09-15", user_name:"test3", user_id:"id3",product:"상품2", idx:"15"},
			{date:"2022-09-16", user_name:"test8", user_id:"id7",product:"상품2", idx:"16"},
			{date:"2022-09-17", user_name:"test2", user_id:"id2",product:"상품2", idx:"17"},
			{date:"2022-09-18", user_name:"test3", user_id:"id3",product:"상품2", idx:"18"},
			{date:"2022-09-19", user_name:"test4", user_id:"id4",product:"상품2", idx:"19"}
		];
	
		$("#list").jqGrid({
			datatype: "local",
			data: mydata,
			colNames:['날짜', '아이디', '이름','상품','수정','발송','idx'],
			colModel:[
				{name:'date', index:'date', width:90, align: "center"},
				{name:'user_name', index:'user_name', width:100 , align: "center" },
				{name:'user_id', index:'user_id', width:150, align: "center"},
				{name:'product', index:'product', width:80, align: "center"},
				{name:'btn1', index:'btn1', width:80, align: "center", formatter:formatOpt1, sortable: false},
				{name:'btn2', index:'btn2', width:80, align: "center", formatter:formatOpt2, sortable: false},
				{name:'idx', index: 'idx', hidden: true}
			],
			autowidth: true,
			multiselect: true,
			pager:'#pager',
			rowNum: 20,
			rowList: [20, 50],
			sortname: 'date',
			sortorder: 'desc',
			height: 500,
		});
		function formatOpt1(cellvalue, options, rowObject){
			var str = "";
			var row_id = options.rowId;
			var idx = rowObject.idx;
	
			str += "<div class=\"btn-group\">";
			str += "<button type='button' class='btn btn-default btn-sm'  onclick=\"javascript:fn_update('" + row_id + "','" + idx + "' )\">수정</button>";
			str += "</div>";
	
			return str;
		}
		function formatOpt2(cellvalue, options, rowObject){
			var str = "";
			var row_id = options.rowId;
			var idx = rowObject.idx;
	
			str += "<div class=\"btn-group\">";
			str += "<button type='button' class='btn btn-default btn-sm' onclick=\"javascript:fn_delete('" + row_id + "','" + idx + "' )\">발송</button>";
			str += "</div>";
	
			return str;
		}
	
		$(window).on('resize.jqGrid', function() {
			$("#list").jqGrid('setGridWidth', $("#list").parent().parent().parent().parent().parent().width());
		})
		$(".jarviswidget-fullscreen-btn").click(function(){
				setTimeout(function() {
					$("#list").jqGrid('setGridWidth', $("#list").parent().parent().parent().parent().parent().width());
				}, 100);
			});
		
			$("#list").on("click", function() {
				$('#list tr').removeClass("ui-state-highlight");
		    });
		});
		function fn_update(rowid, idx){
			var str = "rowid 는 "+rowid+" / idx 는 "+idx+" 입니다.";
			$("#click_result").html(str);
	
		}
		function fn_delete(rowid, idx){
			var str = "rowid 는 "+rowid+" / idx 는 "+idx+" 입니다.";
			$("#click_result").html(str);
		}
</script>
