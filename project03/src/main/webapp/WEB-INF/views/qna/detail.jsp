<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세</title>
<%@ include file="../template/header.jspf" %>
</head>
<body>
<%@ include file="../template/menu.jspf" %>
<div class="page-header">
</div>
<form class="form-horizontal" method="post" action="./">
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
      <input type="text" class="form-control" name="title" id="title" value="${bean.title }" readonly="readonly"/>
    </div>
  </div>
  <div class="form-group">
    <label for="content" class="col-sm-2 control-label">내용</label>
    <div class="col-sm-10">
    <textarea rows="10" cols="50" class="form-control" name="content" id="content" name="content" readonly="readonly">${bean.content }</textarea>
    </div>
  </div>
</form>
<div>
<c:if test="${customer != null&&customer.user_level==1}">
<a href="./${bean.bno }/edit" class="btn btn-default" role="btn">수정</a>
</c:if>
<form method="post" >
<c:if test="${customer != null&&customer.user_level==1}">
<input type="hidden" name="_method" value="delete">
<button type="submit" class="btn btn-danger">삭제</button>
</c:if>
</form>
</div> 
<c:url var="reviewsPath" value="/reviews" />

<%-- <f:form modelAttribute="review" action="${ reviewsPath }" method="post">
    <c:forEach var="error" items="${ fieldErrors }">
        <div class="alert alert-warning">
        </div>
    </c:forEach>
    --%>
    <textarea path="text" cssClass="form-control" rows="5" />
    <button class="btn btn-block btn-primary" type="submit">리뷰 등록</button>
<%@ include file="../template/footer.jspf" %>
</body>
</html>