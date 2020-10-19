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
<c:if test="${customer != null&&customer.user_level==2}">
<a href="./${bean.bno }/edit" class="btn btn-default" role="btn">수정</a>
</c:if>
<form method="post" >
<c:if test="${customer != null&&customer.user_level==2}">
<input type="hidden" name="_method" value="delete">
<button type="submit" class="btn btn-danger">삭제</button>
</c:if>
</form>
</div> 
<%-- <c:url var="reviewsPath" value="/reviews" />

 <f:form modelAttribute="review" action="${ reviewsPath }" method="post">
    <c:forEach var="error" items="${ fieldErrors }">
        <div class="alert alert-warning">
        </div>
    </c:forEach>
    <textarea path="text" cssClass="form-control" rows="5" ></textarea>
    <c:if test="${customer != null&&customer.user_level==2}">
    <button class="btn btn-block btn-primary" type="submit">리뷰 등록</button>
    </c:if>
</f:form>    --%>
<%-- <div class="card" id="comments">
  <div class="card-body">
    <form>
      <div class="form-group">
        <label>댓글 작성</label>
        <textarea class="form-control" id="comment-content" rows="3"></textarea>
      </div>
      <input type="hidden" id="comment-author" value="익명">
      <button type="button" class="btn btn-primary" id="comment-create-btn">제출</button>
    </form>
  </div>
</div> --%>
<%-- <c:if test="${customer != null&&customer.user_level==2}">
<div id="reply" style="border: 1px solid; width: 600px; padding: 5px">
    <form name="" action="" method="post">
        <input type="hidden" name="brdno" value="<c:out value="${boardInfo.brdno}"/>">
        <textarea name="rememo" rows="3" cols="60" maxlength="500" placeholder="댓글을 달아주세요."></textarea>
         <input type="hidden" id="comment-author" value="익명">
      <button type="button" class="btn btn-primary" id="comment-create-btn">제출</button>  <!-- <a href="#" onclick="fn_formSubmit()">입력</a> -->
    </form>
</div>
</c:if> --%>
<!-- 댓글 -->
<%-- <div id="reply">
  <ol class="replyList">
    <c:forEach items="${replyList}" var="replyList">
      <li>
        <p>
        작성자 : ${replyList.writer}<br />
        작성 날짜 :  <fmt:formatDate value="${replyList.regdate}" pattern="yyyy-MM-dd" />
        </p>

        <p>${replyList.content}</p>
      </li>
    </c:forEach>   
  </ol>
</div> --%>
<%@ include file="../template/footer.jspf" %>
</body>
</html>