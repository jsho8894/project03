  
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
	
		<form role="form" method="post" autocomplete="on">
			<p>
				<label for="bno">글 번호</label>
				<input type="text" id="bno" name="bno" value="${modify.bno}" readonly="readonly" />
			</p>
			
			<p>
				<label for="title">글 제목</label>
				<input type="text" id="title" name="title" value="${modify.title}" />
			</p>
			<p>
				<label for="content">글 내용</label>
				<textarea id="content" name="content" >${modify.content}</textarea>
			</p>
			<p>
				<label for="writer">작성자</label>
				<input type="text" id="writer" name="writer" value="${modify.writer}" readonly="readonly"/><br />
				<label>작성 날짜</label>
				<span><fmt:formatDate value="${modify.regDate}" pattern="yyyy-MM-dd" /></span>
			</p>
			<p>
				<button type="submit">수정</button>
				<button type="button" id="cancel_btn">취소</button>
				
				<script>
				// 폼을 변수에 저장
				var formObj = $("form[role='form']");  
				
				// 취소 버튼 클릭
				$("#cancel_btn").click(function(){			
self.location = "/qna/read?bno=${modify.bno}"
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