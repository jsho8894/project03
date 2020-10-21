  
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
	
		<form role="form" method="post" autocomplete="on">
			<div class="form-group">
    		<label for="bno" class="col-sm-2 control-label">번호</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" name="bno" id="bno" value="${modify.bno}" readonly="readonly"/>
    		</div>
  			</div>
  			<div class="form-group">
   			<label for="writer" class="col-sm-2 control-label">작성자</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" name="writer" id="writer" value="${modify.writer}" readonly="readonly"/>
   			</div>
  			</div>
  			<div class="form-group">
    		<label for="title" class="col-sm-2 control-label">제목</label>
   			<div class="col-sm-10">
      		<input type="text" class="form-control" name="title" id="title" value="${modify.title}"/>
    		</div>
  			</div><div class="form-group">
    		<label for="content" class="col-sm-2 control-label">내용</label>
    		<div class="col-sm-10">
    		<textarea rows="10" cols="50" class="form-control" name="content" id="content" name="content">${modify.content}</textarea>
    		</div>
  			</div>
			<p>
				<button type="submit">수정</button>
				<button type="button" id="cancel_btn">취소</button>
				
				<script>
				// 폼을 변수에 저장
				var formObj = $("form[role='form']");  
				
				// 취소 버튼 클릭
				$("#cancel_btn").click(function(){			
self.location = "/qna/read?bno=${modify.bno}"
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