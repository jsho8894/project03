<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Shirt</title>
	<%@ include file="../template/header.jspf" %>
	<style type="text/css">

		li {
			list-style: none;
		}
				
		img {
			width : 350px;
			heigth : 300px;
		}
		
		span {
			font-size: 13px;
			color : #111111;
		}
		
		.sidenav {
			  height: 80%; /* Full-height: remove this if you want "auto" height */
			  width: 160px; /* Set the width of the sidebar */
			  position: fixed; /* Fixed Sidebar (stay in place on scroll) */
			  z-index: 1; /* Stay on top */
			  top: 80px; /* Stay at the top */
			  right: 0;
			  overflow-x: hidden; /* Disable horizontal scroll */
		}
		
		.sidenav >a {
			  font-size: 11px;
			  color : #111111;
		}
		
		#footer {
			  height : 100px;
			  line-height: 50px;
		}
		
		#shirt {
			margin-left : 100px;
		}
	
		
	</style>
	<script type="text/javascript" 
	src="${pageContext.request.contextPath }/resources/js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" 
	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
	<script type="text/javascript">
	$(function(){
		 $('.login').remove();
	});
	</script>
</head>
<body>
<!-- Side navigation -->
<div class="sidenav">
  <a href="#">Cart</a><br/>
  <a href="#">My Order</a><br/>
  <a href="#">Login</a>
  	/
  <a href="#">Register</a>
</div>
<%@ include file="../template/menu.jspf" %>
<!-- 옷 이름,가격은 db에서 받아와야 함 -->
	<h2>&nbsp;&nbsp;Shirt Page</h2>
<ul id = "shirt" class="row">
<c:forEach items = "${list }" var = "bean">	
  <li class = "col-md-4">
  	<div class = "shirtsImg" >
  		<a href = "${bean.shname}">
  			<img src = "${pageContext.request.contextPath }/resources/shirtsImgs/${bean.shname }.jpg">
  		</a>
  	</div>
  		<div class = "ShirtsInfo">
  		  <div class = "name">
  			<a href = "${bean.shname}">
	  			<span>${bean.shname }</span><br/>
  			</a>	
  		  </div>
  		<div class = "price">
  		 	<a href = "${bean.shname}">
  				<span style="font-size:12px;color:#111111;">&#8361;&nbsp;${bean.shprice }</span>
  			</a>
  		</div>
  	</div>
  </li>
</c:forEach>
</ul>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>