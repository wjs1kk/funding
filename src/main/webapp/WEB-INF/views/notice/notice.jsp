<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?97a6eedb">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/common.css?6b20ab93">
<link rel="stylesheet" href="https://static.wadiz.kr/landing/board.ff97f96e.css">

</head>
<body>
	<div id="page-container">
		
		<!-- top.jsp -->
		<jsp:include page="../inc/top.jsp"></jsp:include>

		<form id="forwardForm" method="get">
			<input type="hidden" id="returnURL" name="returnURL">
		</form>
		<input type="hidden" id="sessionLoginCheck" value="true">

		<main class="board wzui">
			<div class="ui-header">
				<h2 class="title">공지 사항</h2>
			</div>
			<div aria-hidden="true"></div>
			<div class="ui-tabs">
				<ul>
					<!-- 전체, 이벤트 메뉴 삭제 -->
					<li class="active"><a href="#1">공지</a></li>

					<li><a href="#38">보도자료</a></li>

				</ul>
			</div>

			<div class="board-main">
				<ul>
					<li><a class="article "
						href="/web/wboard/newsBoardDetail/8459?headWordId=&amp;cPage=1">
							<em class="category">이벤트</em> <em class="status closed">진행 중</em>
							<em class="notice">중요</em> <em class="notice">BEST</em>
							<div class="info">
								<div class="thumb"
									style="background-image: url(https://cdn.wadiz.kr/ft/images/green001/2023/0510/20230510155628224_0.jpg/wadiz/resize/400/format/jpg/quality/80)"></div>

								<h3 class="title">[메이커 모집] 크리에이터 페스티벌 참여 메이커 모집 (~6/12)</h3>
								<span class="author">와디즈</span><span class="created-at">2023.05.10</span>
							</div>
					</a></li>
					<li><a class="article "
						href="/web/wboard/newsBoardDetail/8442?headWordId=&amp;cPage=1">
							<em class="category">이벤트</em> <em class="status closed">진행 중</em>
							<em class="notice">중요</em> <em class="notice">BEST</em>
							<div class="info">
								<div class="thumb"
									style="background-image: url(https://cdn.wadiz.kr/ft/images/green001/2023/0510/20230510094516134_0.jpg/wadiz/resize/400/format/jpg/quality/80)"></div>

								<h3 class="title">[팝업스토어] 5일간 반짝혜택! 아렌시아 옥풀세럼+바디떡솝 ㅣ전용
									쿠폰+최대 할인 (~5/14)</h3>
								<span class="author">와디즈</span><span class="created-at">2023.04.13</span>
							</div>
					</a></li>
					<li><a class="article "
						href="/web/wboard/newsBoardDetail/8439?headWordId=&amp;cPage=1">

							<em class="category">이벤트</em> <em class="status closed">진행 중</em>
							<em class="notice">중요</em> <em class="notice">BEST</em>
							<div class="info">
								<div class="thumb"
									style="background-image: url(https://cdn.wadiz.kr/ft/images/green001/2023/0508/20230508093613740_0.jpg/wadiz/resize/400/format/jpg/quality/80)"></div>
								<h3 class="title">[스토어] 월간 매거진 | 신상 뷰티 : 펀딩에서 검증받고 스토어에
									대거입점 + 최대 5만원 랜덤쿠폰</h3>
								<span class="author">와디즈</span><span class="created-at">2023.04.10</span>
							</div>
					</a></li>
					<li><a class="article "
						href="/web/wboard/newsBoardDetail/8403?headWordId=&amp;cPage=1">

							<em class="category">이벤트</em> <em class="status closed">진행 중</em>
							<em class="notice">중요</em> <em class="notice">BEST</em>
							<div class="info">
								<div class="thumb"
									style="background-image: url(https://cdn.wadiz.kr/ft/images/green001/2023/0328/20230328103841603_0.jpg/wadiz/resize/400/format/jpg/quality/80)"></div>

								<h3 class="title">[이벤트] 매월 3주차 OPEN | What day is it? 매일 혜택
									가득한, 와디즈데이</h3>
								<span class="author">와디즈</span><span class="created-at">2023.01.27</span>
							</div>
					</a></li>
					<li><a class="article "
						href="/web/wboard/newsBoardDetail/8453?headWordId=&amp;cPage=1">

							<em class="category">이벤트</em> <em class="status closed">종료</em> <em
							class="notice">중요</em> <em class="notice">BEST</em>


							<div class="info">

								<div class="thumb"
									style="background-image: url(https://cdn.wadiz.kr/ft/images/green001/2023/0428/20230428165927370_0.jpg/wadiz/resize/400/format/jpg/quality/80)"></div>

								<h3 class="title">[공간와디즈] LET’S GO GREEN TOGETHER 팝업 전시 및
									행사 안내(~5/7)</h3>
								<span class="author">와디즈</span><span class="created-at">2023.04.28</span>
							</div>
					</a></li>

					<li><a class="article "
						href="/web/wboard/newsBoardDetail/8433?headWordId=&amp;cPage=1">
							<em class="category">이벤트</em> <em class="status closed">종료</em> <em
							class="notice">중요</em> <em class="notice">BEST</em>
							<div class="info">

								<div class="thumb"
									style="background-image: url(https://cdn.wadiz.kr/ft/images/green001/2023/0327/20230327131455586_0.png/wadiz/resize/400/format/jpg/quality/80)"></div>

								<h3 class="title">[메이커 모집] 제 2회 와-이디어 콘테스트 참여 메이커 모집 (~5/8)</h3>
								<span class="author">와디즈</span><span class="created-at">2023.03.27</span>
							</div>
					</a></li>
					<li><a class="article "
						href="/web/wboard/newsBoardDetail/8432?headWordId=&amp;cPage=1">
							<em class="category">이벤트</em> <em class="status closed">종료</em> <em
							class="notice">중요</em> <em class="notice">BEST</em>
							<div class="info">
								<div class="thumb"
									style="background-image: url(https://cdn.wadiz.kr/ft/images/green001/2023/0428/20230428134131111_0.jpg/wadiz/resize/400/format/jpg/quality/80)"></div>

								<h3 class="title">[리뷰 있는 신상] 리뷰로 검증된 5월 신상품을 소개해요ㅣ 기간한정 쿠폰
									+ 얼리버드 혜택 (~5/4)</h3>
								<span class="author">와디즈</span><span class="created-at">2023.03.23</span>
							</div>
					</a></li>
					<li><a class="article "
						href="/web/wboard/newsBoardDetail/8407?headWordId=&amp;cPage=1">
							<em class="category">공지</em> <em class="notice">중요</em> <em
							class="notice">BEST</em>
							<div class="info">
								<div class="thumb"
									style="background-image: url(https://cdn.wadiz.kr/ft/images/green001/2023/0131/20230131110759569_0.png/wadiz/resize/400/format/jpg/quality/80)"></div>

								<h3 class="title">[서비스 안내] 프리오더 서비스가 리뉴얼됩니다.</h3>
								<span class="author">와디즈</span><span class="created-at">2023.01.30</span>
							</div>
					</a></li>
					<li><a class="article "
						href="/web/wboard/newsBoardDetail/8401?headWordId=&amp;cPage=1">
							<em class="category">공지</em> <em class="notice">중요</em>
							<div class="info">
								<div class="thumb"
									style="background-image: url(https://cdn.wadiz.kr/ft/images/green001/2023/0208/20230208181543268_0.png/wadiz/resize/400/format/jpg/quality/80)"></div>

								<h3 class="title">[서비스 안내] 지지서명 서비스와 포인트 정책 개편</h3>
								<span class="author">와디즈</span><span class="created-at">2023.01.20</span>
							</div>
					</a></li>
					<li><a class="article no-thumb"
						href="/web/wboard/newsBoardDetail/8377?headWordId=&amp;cPage=1">
							<em class="category">공지</em> <em class="notice">중요</em>
							<div class="info">
								<h3 class="title">[서비스 안내] 와디즈 SNS 광고 수수료 변경 및 정책 안내</h3>
								<span class="author">와디즈</span><span class="created-at">2022.12.02</span>
							</div>
					</a></li>

				</ul>
			</div>
			<div class="board-footer">
				<div class="pagination">
					<!-- 모바일용 버튼 -->
					<button class="prev-page icon-chevron-left mobile-only"
						onclick="movePage(0)" disabled="">
						<span class="text-hidden">이전 목록</span>
					</button>
					<div class="page">
						<!-- 모바일용 페이지 리스트 -->
						<div class="mobile-only">
							<span class="current-count">1</span>/<span class="total-count"><span>103</span>
								페이지</span>
						</div>

						<div class="desktop-only">
							<!-- 데스크탑용 버튼 -->
							<button class="prev-page icon-chevron-left" onclick="movePage(0)"
								disabled="">
								<span class="text-hidden">이전 목록</span>
							</button>

							<!-- 데스크탑용 페이지 리스트 -->
							<a class="current" href="#" onclick="movePage(1)">1</a> <a
								href="#" onclick="movePage(2)">2</a> <a href="#"
								onclick="movePage(3)">3</a> <a href="#" onclick="movePage(4)">4</a>

							<a href="#" onclick="movePage(5)">5</a> <a href="#"
								onclick="movePage(6)">6</a>

							<!-- 데스크탑용 버튼 -->
							<button class="next-page icon-chevron-right"
								onclick="movePage(7)">
								<span class="text-hidden">다음 목록</span>
							</button>
						</div>
					</div>
					<!-- 모바일용 버튼 -->
					<button class="next-page icon-chevron-right mobile-only"
						onclick="movePage(2)">
						<span class="text-hidden">다음 목록</span>
					</button>
				</div>
				<div class="search">
					<form method="post" id="news-board-search">
						<div class="filter-container">
							<select id="searchSelectInBoard" class="filter" name="">
								<option value="tc">제목+내용</option>
								<option value="t">제목</option>
								<option value="c">내용</option>
							</select>
						</div>
						<div class="field">
							<label class="text-hidden" for="">검색창</label> <input
								id="searchTextInBoard" name="searchTextInBoard"
								class="search-form" type="text" value="">
							<button class="btn-search dense" type="submit">검색</button>
						</div>
					</form>
					<form id="formSearch" name="formSearchBoard"
						action="/web/wboard/newsBoardList/" method="post">
						<input id="searchText1" name="searchText1" type="hidden" value="">
						<input id="searchSelect1" name="searchSelect1" type="hidden"
							value=""> <input id="searchSelect2" name="searchSelect2"
							type="hidden" value=""> <input id="searchSelect4"
							name="searchSelect4" type="hidden" value=""> <input
							id="searchSelect5" name="searchSelect5" type="hidden" value="">
					</form>
				</div>
			</div>
			<div aria-hidden="true"
				style="position: relative; left: 0px; bottom: 48px; width: 100%;"></div>
		</main>
		<jsp:include page="../inc/footer.jsp"></jsp:include>
</body>
</html>