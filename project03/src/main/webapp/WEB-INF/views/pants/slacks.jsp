<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="../template/header.jspf"%>
	<style type="text/css">
	</style>
	<script type="text/javascript" 	src="${pageContext.request.contextPath }/resources/js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" 	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
	<script type="text/javascript">
		$(function(){
			$('.login').remove();
		});
	</script>
</head>
<body>
	<%@ include file="../template/menu.jspf" %>
	<h2>&nbsp;&nbsp;slacks page</h2>
	
	<%@ include file="../template/footer.jspf" %>

</body>
</html>