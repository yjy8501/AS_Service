<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/notice.css">
<script src="/js/main.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
	<div class="navBar">
		<a href="/index" id="homeImg"><img src="/media/마크_성공회대학교.png"alt="MAIN" width="50px" height="50px"></a> 
		<a href="">공지사항</a> 
		<a href="">장비 예약</a> 
		<a href="">장비 목록</a> 
		<a href="">문의하기</a>
		<sec:authorize access="authenticated">
			<a class="btn" style="float: right;" href="/logout_processing">로그아웃</a>
		</sec:authorize>
		<a href="/front/mypages" style="float: right;">마이페이지</a>
	</div>
	<div class="container">
	
		<form method="post">
		
		<h1>공지사항 글쓰기</h1>
			
			<table>
				<thead>
					<tr><th>제목</th><th><input type="text" class="title" name="title" value="" placeholder="제목" /></th></tr>
				</thead>
				<tbody>
					<tr><td><h4>내용</h4></td><td><textarea class="body" rows="3" placeholder=" 내용을 적어주세요"></textarea></td></tr>
				</tbody>
				<tfoot>
					<tr><td colspan="2"><button type="submit">저장</button></td></tr>
				</tfoot>
			</table>
			

		</form>
	</div>
</body>
</html>
