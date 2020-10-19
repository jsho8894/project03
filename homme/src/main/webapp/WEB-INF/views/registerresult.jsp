<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<%@ include file="template/header.jspf" %>
<style type="text/css">
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
			<p>회원가입이 완료 되었습니다</p>
				<button type="button" class="btn" onclick="location.href='login'" >로그인</button>
			</div>
<%@ include file="template/footer.jspf" %>
</body>
</html>