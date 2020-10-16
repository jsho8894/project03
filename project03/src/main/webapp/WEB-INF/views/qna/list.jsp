<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
<%@ include file="../template/header.jspf" %>
</head>
<body>
<%@ include file="../template/menu.jspf" %>

<div class="page-header">
</div>
<table class="table">
	<thead >
		<tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성일자</th>
            <th>작성자</th>
        </tr>
	</thead>
	<tbody>
		<c:forEach items="${list }" var="bean">
			<tr>
				<td><a href="./${bean.bno}">${bean.bno  }</a></td>
				<td><a href="./${bean.bno}">${bean.title  }</a></td>
				<td><a href="./${bean.bno}"><fmt:formatDate value="${bean.regdate}" pattern="yyyy-MM-dd HH:mm:ss" /></a></td>
				<td><a href="./${bean.bno}">${bean.user_id  }</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table> 
<form name="boardlist" method="post" action="/">
<div class="list">
<c:if test="${customer != null&&customer.user_level==1}">
<p><a href="./add" class="btn btn-primary btn-block" role="btn">입 력</a></p>
</c:if>
</div>
</form>
<%@ include file="../template/footer.jspf" %>
</body>
</html>
