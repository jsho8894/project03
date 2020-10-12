<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Pants</title>
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
			font-size: 12px;
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
		
		#jeans {
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
	<h2>&nbsp;&nbsp;Jean Page</h2>
<ul id = "jeans" class="row">
  <li class = "col-md-4">
  	<div class = "jeansImg" >
  		<a href = "${pageContext.request.contextPath }/detail/"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean1.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "${pageContext.request.contextPath }/detail/">
	  			<span>Waste Land</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "${pageContext.request.contextPath }/detail/">
  				<span style="font-size:10px;color:#111111;">₩ 99,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
  	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean2.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  			<span>Pale Blue</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 99,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
  	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean3.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  			<span>Cross Damage</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 99,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
  	 <div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean4.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  			<span>Overtime</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 109,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
  	 	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean5.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  			<span>Night Ranger</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 99,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
  	 	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean6.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  			<span>Perfect Day</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 96,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
  	 	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean71.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  			<span>Red Route 707</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 123,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
  	 	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean8.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  			<span>Black Hound</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 87,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
  	 	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean9.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  			<span>After Glow</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 99,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
  	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean10.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  		<span>Unbreaker</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 106,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
  	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean11.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  			<span>Uncanny Blue</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 107,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
  	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean12.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  			<span>Stellar White</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 93,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
  	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean13.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  			<span>Undercover Bartender</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 99,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
  	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean14.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  			<span>Moonlight Blue</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 106,000</span>
  			</a>
  		</div>
  	</div>
  </li>
  <li class="col-md-4">
    <div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean15.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  			<a href = "#">
	  			<span>Shadow Chaser</span><br/>
  			</a>
  		</div>
  		<div class = "price">
  			<a href = "#">
  				<span style="font-size:10px;color:#111111;">₩ 98,000</span>
  			</a>
  		</div>
  	</div>
  </li>
</ul>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>