<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@ include file="template/header.jspf" %>
<style type="text/css">
	h1 {
		text-align: center;
	}
	h2{
		text-align: center;
		color: red;
	}
</style>

</head>
<body>
<%@ include file="template/menu.jspf" %>
	<div class="login">
		<c:if test="${customer != null}">
			<h1>${customer.user_name }님 환영합니다</h1><br/>
			<div align="center">
				<button type="button" class="btn" onclick="location.href='${pageContext.request.contextPath }'" >HOME</button>
			</div>
		</c:if>
		<c:if test="${customer ==null}">
			<h2>로그인 실패! 아이디와 비밀번호 확인해주세요.</h2>
			<div align="center">
				<button type="button" class="btn" onclick="location.href='./login'">로그인</button>
				<button type="button" class="btn" onclick="location.href='./register'">회원가입</button>
			</div>
		</c:if>
					<p>${customer.user_name }님 환영합니다</p><br/>
	</div>
<%@ include file="template/footer.jspf" %>
</body>
</html>