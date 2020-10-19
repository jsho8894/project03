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
<%@ include file="../template/managermenu.jspf" %>

		 <!-- start content -->
		 <div class="customerlist">
	<h1>회원정보</h1>
</div>
<table class="table">
	<thead>
		<tr>
			<th>Level</th>
			<th>Name</th>
			<th>Id</th>
			<th>Password</th>
			<th>Contact</th>
			<th>Addr</th>
			<th>Email</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list }" var="bean">
		<tr>
			<td>${bean.user_level }</td>
			<td>${bean.user_name }</td>
			<td>${bean.user_id }</td>
			<td>${bean.user_password }</td>
			<td>${bean.user_contact }</td>
			<td>${bean.user_addr }</td>
			<td>${bean.user_email }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
		 <!-- end content -->
<%@ include file="../template/footer.jspf" %>
</body>
</html>