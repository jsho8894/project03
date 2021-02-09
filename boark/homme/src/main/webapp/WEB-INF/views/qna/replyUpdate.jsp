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

<section id="container">
		<form role="form" method="post" autocomplete="off">
			<input type="hidden" id="bno" name="bno" value="${readReply.bno}" readonly="readonly" />
			<input type="hidden" id="rno" name="rno" value="${readReply.rno}" readonly="readonly" />	
			<input type="hidden" id="page" name="page" value="${scri.page}" readonly="readonly" />
			<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}" readonly="readonly" />
			<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}" readonly="readonly" />
			<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}" readonly="readonly" />
			
			<p>
				<label for="content">글 내용</label>
				<textarea id="content" name="content" >${readReply.content}</textarea>
			</p>
			
			<p>
				<button type="submit">수정</button>
				<button type="button" id="cancel_btn">취소</button>
				
				<script>
				// 폼을 변수에 저장
				var formObj = $("form[role='form']");  
				
				// 취소 버튼 클릭
				$("#cancel_btn").click(function(){			
					self.location = "/qna/read?bno=${readReply.bno}"
					+ "&num=${scri.page}"
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