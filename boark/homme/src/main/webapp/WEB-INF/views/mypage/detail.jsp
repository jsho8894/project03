<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../template/header.jspf" %>
</head>
<body>
<%@ include file="../template/menu.jspf" %>

		<!-- start content -->
		 <div class="page-header">
	<h1>개인정보수정</h1>
</div>
<form class="form-horizontal" method="post" action="./">
  <input type="hidden" name="_method" value="get">
  <div class="form-group">
    <label for="deptno" class="col-sm-2 control-label">이름</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="user_name" id="user_name" value="${bean.user_name}" readonly="readonly"/>
    </div>
  </div>
  <div class="form-group">
    <label for="dname" class="col-sm-2 control-label">아이디</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="user_id" id="user_id" value="${bean.user_id }"readonly="readonly"/>
    </div>
  </div>
  <div class="form-group">
    <label for="loc" class="col-sm-2 control-label">비밀번호</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="user_password" id="user_password" value="${bean.user_password }"readonly="readonly"/>
    </div>
  </div>
  <div class="form-group">
    <label for="loc" class="col-sm-2 control-label">전화번호</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="user_contact" id="user_contact" value="${bean.user_contact }"readonly="readonly"/>
    </div>
  </div>
  <div class="form-group">
    <label for="loc" class="col-sm-2 control-label">주소</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="user_addr" id="user_addr" value="${bean.user_addr }"readonly="readonly"/>
    </div>
  </div>
  <div class="form-group">
    <label for="loc" class="col-sm-2 control-label">이메일</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="user_email" id="user_email" value="${bean.user_email }"readonly="readonly"/>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <a href="./${bean.user_id }/edit" class="btn btn-default" role="btn">수정</a>
      <button type="reset" class="btn btn-default">취 소</button>
    </div>
  </div>
</form>
		 <!-- end content -->
<%@ include file="../template/footer.jspf" %>
</body>
</html>