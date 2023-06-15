<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html><head>
<meta charset="UTF-8">
<title>title here</title>
<link rel="stylesheet" href="../resources/css/mypage.css">
<script src="/yata/resources/js/jquery-3.6.4.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	
<body>
	<div class="container py-5">
		<div class="row">
			<div class="col-md-8 pb-6" style="margin-left: 156px">
				<div class="mypage-section on" id="mypage_section_point" style="">
					<form action="writePro" name="writeForm" method="post">
						<fieldset>
							<section class="section-form">
								<div class="form-header">
									<h2 class="tit-size-mid">메이커 문의</h2>
								</div>
								<div class="form-cont">
									<div class="row type2">
										<label for="input02" class="input-tit">제목<span class="txt-red">*</span></label>
										<div class="input-cont">
											<div class="inputT">
												<input type="text" id="board_subject" name="board_subject" value="" placeholder="제목을 입력하세요">
											</div>
										</div>
									</div>
									<div class="row type2">
										<label for="" class="input-tit">문의내용<span class="txt-red">*</span></label>
										<div class="textarea">
											<textarea name="board_content" id="board_content" cols="30" rows="10" placeholder="문의내용을 입력해주세요."></textarea>
										</div>
									</div>
								</div>
							</section>
						</fieldset>

						<section id="btnArea">
							<input type="button" value="취소" onclick="history.back()"> &nbsp;&nbsp;
								<input type="submit" value="등록"> 
						</section>
					</form>
				</div>
			</div>
		</div>
	</div>
	

</body></html>