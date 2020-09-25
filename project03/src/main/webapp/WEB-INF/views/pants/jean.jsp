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
			width : 200px;
			heigth : 300px;
		}
		
		span {
			font-size: 12px;
			color : #111111;
		}
		
		#side {
			
		}
		
	</style>
</head>
<body>
<%@ include file="../template/menu.jspf" %>
	<h2>&nbsp;&nbsp;Jean Page</h2>
<div id = "side" class="col-md-12">
    <div class="row">
      <div class="col-md-3">
<div class="panel panel-info">
    <div class="panel-heading">
      <h3 class="panel-title">Title</h3>
    </div>
    <!-- 사이드바 메뉴목록1 -->
    <ul class="list-group">
      <li class="list-group-item"><a href="#">미정</a></li>
      <li class="list-group-item"><a href="#">미정</a></li>
      <li class="list-group-item"><a href="#">미정</a></li>
    </ul>
</div>
  <!-- 패널 타이틀2 -->
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">Title</h3>
  </div>
    <!-- 사이드바 메뉴목록2 -->
      <ul class="list-group">
        <li class="list-group-item"><a href="#">미정</a></li>
        <li class="list-group-item"><a href="#">미정</a></li>
        <li class="list-group-item"><a href="#">미정</a></li>
      </ul>
</div>      
  <!-- 패널 타이틀3 -->
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">미정</h3>
  </div>
      <!-- 사이드바 메뉴목록3 -->
      <ul class="list-group">
        <li class="list-group-item"><a href="#">미정</a></li>
        <li class="list-group-item"><a href="#">미정</a></li>
        <li class="list-group-item"><a href="#">미정</a></li>
      </ul>
    </div>
</div> 
      <!-- 9단길이의 첫번째 열 -->
<ul id = "jeans" class="col-md-9">
  <li class = "col-md-3">
  	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean1.jpg"></a>
  	</div>
  	<div class = "jeansInfo">
  		<div class = "name">
  				<a href = "#">
	  				<span>Waste Land</span><br/>
  				</a>
  			</div>
  			<div class = "price">
  				<a href = "#">
  					<span style="font-size:10px;color:#111111;">₩ 99,000</span>
  				</a>
  			</div>
  	</div>
  </li>
  <li class="col-md-3">
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
  <li class="col-md-3">
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
  <li class="col-md-3">
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
  <li class="col-md-3">
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
  <li class="col-md-3">
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
  <li class="col-md-3">
  	 	<div class = "jeansImg" >
  		<a href = "#"><img src = "${pageContext.request.contextPath }/resources/jeanImgs/jean7.jpg"></a>
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
  <li class="col-md-3">
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
  <li class="col-md-3">
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
  <li class="col-md-3">
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
  <li class="col-md-3">
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
  <li class="col-md-3">
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
  <li class="col-md-3">
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
  <li class="col-md-3">
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
  <li class="col-md-3">
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
  <li class="col-md-3">
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
  <li class="col-md-3">
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
     </div>
</div> 		
	<%@ include file="../template/footer.jspf" %>
</body>
</html>