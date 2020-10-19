<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
<%@ include file="../template/header.jspf" %>
</head>
<body>
<%@ include file="../template/menu.jspf" %>
<div class="page-header">
</div>
<form class="form-horizontal" method="post" action="../${bean.bno }">
	<input type="hidden" name="_method" value="put">
  <div class="form-group">
    <label for="bno" class="col-sm-2 control-label">번호</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="bno" id="bno" value="${bean.bno }" readonly="readonly"/>
    </div>
  </div>
  <div class="form-group">
    <label for="writer" class="col-sm-2 control-label">작성자</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="writer" id="writer" value="${bean.user_id }" readonly="readonly"/>
    </div>
  </div> 
  <div class="form-group">
    <label for="title" class="col-sm-2 control-label">제목</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="title" id="title" value="${bean.title }"/>
    </div>
  </div>
  <div class="form-group">
    <label for="content" class="col-sm-2 control-label">내용</label>
    <div class="col-sm-10">
      <textarea rows="10" cols="50" class="form-control" name="content" id="content" name="content">${bean.content }</textarea>
    </div>
   </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">수 정</button>
      <button type="reset" class="btn btn-default">취 소</button>
    </div>
  </div>
</form>
<%@ include file="../template/footer.jspf" %>
</body>
</html>
