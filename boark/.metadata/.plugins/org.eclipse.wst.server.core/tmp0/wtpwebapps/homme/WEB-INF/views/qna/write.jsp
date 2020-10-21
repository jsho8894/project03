  
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
	
	<c:if test="${msg == null}">
		<form role="form" method="post" autocomplete="off">
			 <div class="form-group">
   		 <label for="title" class="col-sm-2 control-label">제 목</label>
   		 <div class="col-sm-10">
    	  <input type="text" class="form-control" name="title" id="title" />
	    </div>
	 	 </div>
	   <div class="form-group">
	    <label for="user_id" class="col-sm-2 control-label">작성자</label>
	    <div class="col-sm-10">
	       <input type="text" class="form-control" name="writer" id="writer" value="${customer.user_id }"readonly="readonly"/>
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="content" class="col-sm-2 control-label">내 용</label>
	    <div class="col-sm-10">
	      <textarea rows="10" cols="50" class="form-control" name="content" id="content" name="content" placeholder="content"></textarea>
	    </div>
  </div>
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