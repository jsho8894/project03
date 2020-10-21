  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
<%@ include file="../template/header.jspf" %>
</head>
<body>
<%@ include file="../template/menu.jspf" %>

<div class="page-header">
</div>

<div id="nav">
	<%@ include file="../include/nav.jsp" %>
</div>
<section id="container">
	
	<c:if test="${msg == null}">
		<form role="form" method="post" autocomplete="off">
			<p>
				<label for="title">글 제목</label><input type="text" id="title" name="title" />
			</p>
			<p>
				<label for="content">글 내용</label><textarea id="content" name="content"></textarea>
			</p>
			<p>
				<label for="writer">작성자</label>
				<input type="text" id="writer" name="writer" value="" readonly="readonly" />	
			</p>
			<p> 
				<button type="submit">작성</button>
			</p>		
		</form>
	</c:if>
		
	<c:if test="${msg == false}">
		<p>로그인을 하셔야 글을 작성할 수 있습니다.</p>
		
		<p><a href="/">홈으로</a></p>	
	</c:if>
	
	</section>
<%@ include file="../template/footer.jspf" %>
</body>
</html>