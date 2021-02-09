<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
<style type="text/css">
			li {list-style: none; float: left; padding: 6px;}
		</style>
<%@ include file="../template/header.jspf" %>
</head>
<body>
<%@ include file="../template/menu.jspf" %>

<div class="page-header">
</div>
<section id="container">
		<form role="form" method="post" autocomplete="off">
			<p>
				<label for="bno">글 번호</label>
				<input type="text" id="bno" name="bno" value="${delete}" readonly="readonly" />
				
			</p>
			<p>정말로 삭제하시겠습니까?</p>
			<p>
				<button type="submit">예, 삭제합니다.</button><br />
				<button type="button" id="cancel_btn">아니오, 삭제하지 않습니다.</button>

				<script>
				// 폼을 변수에 저장
				var formObj = $("form[role='form']");  
				
				// 취소 버튼 클릭
				$("#cancel_btn").click(function(){
					
					self.location = "/qna/read?bno=${delete}"
						+ "&page=${scri.page}"
						+ "&perPageNum=${scri.perPageNum}"
						+ "&searchType=${scri.searchType}"
						+ "&keyword=${scri.keyword}";						
				});
				</script>
			</p>
		</form>
	</section>

<%@ include file="../template/footer.jspf" %>
</body>
</html>