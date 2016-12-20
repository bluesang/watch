<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/main.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file = "../module/top.jsp" %>
<br>
<br>
<br>
<br>
<div class="container">
	<form action="#" method="post">
		<table class="table">
			<tr>
				<td>상품 번호</td>
				<td>이미지</td>
				<td>상품명</td>
				<td>수량</td>
				<td>판매가</td>
				<td>적립금</td>
			</tr>
			<tr>
				<td>1</td>
				<td>이미지</td>
				<td>신발</td>
				<td>1</td>
				<td>30000</td>
				<td>300</td>
			</tr>
		</table>
		<br><br>
		<br><br>
		<table class="table" style="width:400px">
			<tr>
				<td>총 상품 금액</td>
				<td>배송비</td>
				<td>결제 금액</td>
			</tr>
			<tr>
				<td>30000원</td>
				<td>2500원</td>
				<td>32500원</td>
			</tr>
		</table>
		<input type="submit" value="주문하기">
		<input type="button" onclick ="location.href='<c:url value='/OrderList'/>'" value="계속 쇼핑하기"/>
	</form>
</div>
