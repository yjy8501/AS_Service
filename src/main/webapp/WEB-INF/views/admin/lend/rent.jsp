<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
div.container {
	width: 600px;
	margin: auto;
}

form {
	box-shadow: 0 0 4px lightgray, 2px 2px 4px gray;
	overflow: auto;
	font-size: 10pt;
}

div.title {
	font-size: 20pt;
	padding: 10px;
	background-color: #eee;
}

table {
	margin: 20px;
}

td {
	min-width: 100;
	padding: 5px;
}

td:nth-child(1) {
	text-align: left;
}

input {
	padding: 4px;
}

button {
	padding: 0.5em 2em;
	margin: 0px 0 0px 0px;
}

div.message {
	border-radius: 10px;
	padding: 12px;
	margin: 10px;
	background-color: #ffa;
	border: 1px solid #cc0;
}
</style>
</head>
<body>

	<div class="container">
		<form method="post" action="rentsave">
			<div class="title">장비선택하기</div>
			<table>
				<tr>
					<td>장비넘버: <select name="detail_no">
							<c:forEach var="device_detail" items="${ device_details }">
								<option value=${ device_detail.detail_no }>${ device_detail.detail_no }</option>
							</c:forEach>
					</select></td>
					<!-- 선택된 lend의 no 넘겨주기 -->
					<td><input type="hidden" name=lend_no value="${ lend_no }"></td>
				</tr>
				<tr>
					<td>대여일: <fmt:formatDate pattern="yyyy-MM-dd"
							value="${ currenttime }" /></td>
				</tr>
				<tr>
					<td>반납예정일: <fmt:formatDate pattern="yyyy-MM-dd"
							value="${ end_date }" var="b" /> 
							<input type="date" name="end_date" value="${ b }" /></td>
				</tr>
				<tr>
					<td>
						<button type="submit" class="button">저장</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>

