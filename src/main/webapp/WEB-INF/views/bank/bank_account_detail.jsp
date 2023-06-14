<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${user_name } 고객님의 계좌 상세정보</h1>
	<table border="1">
		<tr>
			<th>은행명</th>
			<th>계좌번호</th>
			<th>상품명</th>
			<th>계좌잔액</th>
			<th>출금가능금액</th>
		</tr>
		<tr>
			<td>${account.bank_name }</td>
			<td>${account_num_masked }</td>
			<td>${account.product_name }</td>
			<td>${account.balance_amt }</td>
			<td>${account.available_amt }</td>
			<%--입금 할 계좌 한개 정해서 하드코딩 금액은 정산금액으로--%>
		</tr>
	</table>
</body>
</html>