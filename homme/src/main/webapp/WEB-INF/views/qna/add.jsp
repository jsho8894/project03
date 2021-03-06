<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력</title>
<%@ include file="../template/header.jspf" %>
</head>
<body>
<%@ include file="../template/menu.jspf" %>
<div class="page-header">
</div>
<form class="form-horizontal" method="post" action="./">
  <div class="form-group">
    <label for="title" class="col-sm-2 control-label">제 목</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="title" id="title" />
    </div>
  </div>
   <div class="form-group">
    <label for="user_id" class="col-sm-2 control-label">작성자</label>
    <div class="col-sm-10">
       <input type="text" class="form-control" name="user_id" id="user_id" value="${customer.user_id }"readonly="readonly"/>
    </div>
  </div>
  <div class="form-group">
    <label for="content" class="col-sm-2 control-label">내 용</label>
    <div class="col-sm-10">
      <textarea rows="10" cols="50" class="form-control" name="content" id="content" name="content" placeholder="content">${bean.content }</textarea>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">입 력</button>
    </div>
  </div>
</form>
<%@ include file="../template/footer.jspf" %>
</body>
</html>