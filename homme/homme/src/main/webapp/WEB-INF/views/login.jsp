<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<%@ include file="template/header.jspf" %>
	<style type="text/css">
	#login{
		text-align: center;
	}
	.btn{
		width: 100px;
		height: 50px;
		font-size: 15px;
		text-transform: uppercase;
		letter-spacing: 3px;
		font-weight: 500;
		color: "gray";
		background-color: white;
		border: 1px solid lightgray;
		border-radius: 10px;
		transition: all 0.3s ease 0s;
		cursor: pointer;
		outline: none;
	}
	
	</style>
</head>
<body>
<%@ include file="template/menu.jspf" %>
<div id="login">
	<form action="./result" method="post">
			<div>
				<label for="user_id"></label>
				<input type="text" id="user_id" name="user_id">
			</div>
			<div>
				<label for="user_password"></label>
				<input type="password" id="user_password" name="user_password">
			</div>
			<div>
				<button type="submit" class="btn">로그인</button>
				<button type="button" class="btn" onclick="location.href='./register'">회원가입</button>
			</div>
		
	</form>
</div>

<%@ include file="template/footer.jspf" %>
</body>
</html>