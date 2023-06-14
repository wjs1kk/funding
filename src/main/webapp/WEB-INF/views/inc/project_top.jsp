<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="AppNavbar_container__5uOnI">
	<div
		style="background: url(&amp;quot;https://static.wadiz.kr/studio/funding/static/media/wadiz-logo.549edcd7.svg&amp;quot;) 50% center/contain no-repeat; width: 129px; height: 48px; cursor: pointer;"></div>
	<div class="AppNavbar_maker__2WVfm">
		<div class="Avatar_avatar__2DI5d Avatar_xs__i50kh">
			<span></span>
		</div>
		<script type="text/javascript">
		//사용자이름 넣기
		$(document).ready(function(){
			$.ajax({
				 url: 'memberNameCheck',
			     type: 'POST',
			     data: {project_idx: ${param.project_idx}},
			     success: function(member) {
			    	 {
						$("#memberName2").text(member);
			    	 }
			     },
			     
			})
		})
		</script>
		<div id="memberName2"></div>
	</div>
	<div class="AppNavbar_buttonGroup__UcLfm">
		
		<button onclick="location.href='../'"
			class="Button_button__1e2A2 Button_tertiaryGrey__3gRf4 Button_text__3KyLl Button_md__1FRMG"
			type="button" >
			<span><span class="Button_children__q9VCZ">나가기</span></span>
		</button>
	</div>
</div>
