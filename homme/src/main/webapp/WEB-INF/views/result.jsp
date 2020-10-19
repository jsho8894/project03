<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@ include file="template/header.jspf" %>
</head>
<body>
<%@ include file="template/menu.jspf" %>
				<div class="login">
				<c:if test="${customer != null}">
					<p>${customer.user_name }님 환영합니다</p><br/>
				</c:if>
<%@ include file="template/footer.jspf" %>
</body>
</html>