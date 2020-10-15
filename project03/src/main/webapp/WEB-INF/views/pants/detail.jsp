<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<%@ include file="../template/header.jspf"%>
	<style type="text/css">
		.sidenav {
			height: 80%; /* Full-height: remove this if you want "auto" height */
			width: 250px; /* Set the width of the sidebar */
			position: fixed; /* Fixed Sidebar (stay in place on scroll) */
			z-index: 1; /* Stay on top */
			top: 80px; /* Stay at the top */
			right: 0;
			overflow-x: hidden; /* Disable horizontal scroll */
			text-align: right;  
			margin-top : 2px;
			margin-right: 10px;
			
		}
		
		li {
			list-style: none;
		}
		
		#jeans{
			margin : 0px auto;
			margin-left : 300px;
		}
		
		img {
			width : 824px;
			margin-top : 30px;
		}
		
		.sidenav >a {
			font-size: 11px;
			color : #111111;
		}
		
		.detail {
			text-align : left;
			color : #111111;
			font-size: 11px;
			
		}
		
		.detailInfo {
			font-size : 11px;
			color : #111111;
			text-align : left;
		}
		
		button {
			margin-right: 30px;
			background-color: black;
			color : white;
			font-size: 11px;
			width: 200px;
		}
		
		.product_option_1 {
			margin-top: 10px;
			width : 250px;
			font-size: 12px;
			color : #111111;
		}
		.product_option_2 {
			margin-top: 10px;
			width : 250px;
			font-size: 12px;
			color : #111111;
		}
		.product_option_3 {
			margin-top: 10px;
			width : 250px;
			font-size: 12px;
			color : #111111;
		}	
		
		.one {
		    float: left;
		    width:10%;
		    text-align: left;
		}

		.two{
		    float: left;
		    width:10%;
		}
		
		.two_p1{
		    float: left;
		    width:10%;
		    cursor: pointer;
		}
		.two_m1{
		    float: left;
		    width:10%;
		    cursor: pointer;
		}
		
		.three {
			float: left;
			margin-left: 30px;
		    width:10%;
		}

		.four_1{
		    float: right;
		    width:5%;
		    cursor: pointer;
		}
		.four_2{
		    float: right;
		    width:5%;
		    cursor: pointer;
		}
		.four_3{
		    float: right;
		    width:5%;
		    cursor: pointer;
		}
		
	</style>	
	<script type="text/javascript" 	src="${pageContext.request.contextPath }/resources/js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" 	src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
	<script type="text/javascript">
		$(function(){
			$('.login').remove();
		});
		
						
 		$(function(){
 	 		var a = 1;
 	 		var b = 1;
 	 		var c = 1;
 	 		var hap = $(".jprice").val(); 
 	 		
			$("#Size").change(function(){
				if($("#Size option:selected").val()=='s'){
$(".pantsSize").append("<div class = 'product_option_1'>"+
							"<div class = 'one'>S</div>"+
							"<div class = 'two'>"+a+"</div>"+
							"<div class = 'two_p1'>+</div>"+
							"<div class = 'two_m1'>-</div>"+
							"<div class = 'three'>"+${detail.jprice}+"</div>"+
							"<div class = 'four_1'>x</div>"+
							"<br/>"+
						"</div>");	
				}
				$(function(){
			 	 	$('.four_1').click(function(){
						$('.product_option_1').remove();
						
			 	 	});
				});
				
				$(function(){
			 	 	$('.two_p1').click(function(){
						a = a+1;
						$('.two').text(a);
						$('.three').text(a*hap);
			 	 	});
				});
				
				$(function(){
			 	 	$('.two_m1').click(function(){
						a = a-1;					
						$('.two').text(a);
						$('.three').text(a*hap);
			 	 	});
				});
			 
			});			
		});
 	 	$(function(){
			$("#Size").change(function(){
				if($("#Size option:selected").val()=='m'){
$(".pantsSize").append("<div class = 'product_option_2'>"+
							"<div class = 'one'>M</div>"+
							"<div class = 'two'>수량</div>"+
							"<div class = 'two'>+</div>"+
							"<div class = 'two'>-</div>"+
							"<div class = 'three'>"+${detail.jprice}+"</div>"+
							"<div class = 'four_2'>x</div>"+
							"<br/>"+
						"</div>");	
				}
				$(function(){
			 	 	$('.four_2').click(function(){
						$('.product_option_2').remove();
			 	 	});
				});
			 
			});			
		});
 	 	$(function(){
			$("#Size").change(function(){
				if($("#Size option:selected").val()=='l'){
$(".pantsSize").append("<div class = 'product_option_3'>"+
							"<div class = 'one'>L</div>"+
							"<div class = 'two'>수량</div>"+
							"<div class = 'two'>+</div>"+
							"<div class = 'two'>-</div>"+
							"<div class = 'three'>"+${detail.jprice}+"</div>"+
							"<div class = 'four_3'>x</div>"+
							"<br/>"+
						"</div>");	
				}
				$(function(){
			 	 	$('.four_3').click(function(){
						$('.product_option_3').remove();
			 	 	});
				});
			 
			});			
		}); 

	 
	</script>
</head>
<body>
	<%@ include file="../template/menu.jspf" %>
	<h2>&nbsp;&nbsp;Detail Page</h2>
<!-- Side navigation -->
<div class="sidenav">
  <a href="#">CART</a><br/>
  <a href="#">MY ORDER</a><br/>
  <a href="#">LOGIN</a>
  	/
  <a href="#">REGISTER</a><br/><br/>
	 <div class = "pantsTitle" style = "text-align: left; font-size: 17px;"   >
	 	${detail.jname }
	 </div><br/>
	 <div class = "pantsPrice" style = "text-align: left; font-size: 12px;" >
	 	₩ ${detail.jprice}
	 </div><br/>
	 <div class = "pantsSize">
	 <input type="hidden" class="jprice" value="${detail.jprice}"/>
		<select id = "Size" class="form-control" >
		  	<option value = "" >SIZE</option>
		  	<option value = "s">S</option>
		  	<option value = "m">M</option>
		  	<option value = "l">L</option>
		</select>
	</div><br/>

	<div class ="dropdown">
		<div class = "detail" > DETAILS <br/>
			<span class = "detailInfo">
			• Fabric : Turkey denim <br/>
			
			• 100% cotton  / 14oz <br/>
			
			• Italy recycling leather <br/>
			
			• Metal Parts : made in Japan (YKK/MORITO) <br/><br/>
			
			• 고급스럽고 무게감 있는 텍스쳐 <br/>
			
			• 빈티지한 블랙 워싱 <br/> 
			
			• 탄탄하고 무게감 있는 착용감 <br/>
			
			• 친환경 리사이클링 가죽패치 <br/>
			
			• 일본산 최고급 금속 버튼과 리벳 <br/><br/>
			
			• model size : 180cm / 70kg / 30size <br/><br/>
			
			• 수작업 공정 상의 이유로 실측 0.5cm,<br/> 
			
			  기장의 경우 1~2cm 차이가 있을 수 있습니다. <br/>
			
			• 모니터 및 스마트폰의 사양, 기종에 따라 <br/>
			
			  색상이 다소 차이가 있을 수 있습니다. <br/>
			
			• 사이즈 측정 방법에 따라 실측의  차이가 <br/>
			
			   있을 수 있습니다.
			</span><br/>
		</div>
	</div><br/>
	<!-- 클릭시 같이 밀려나게... -->
	<button>BUY NOW</button>
</div>
	<ul id = "jeans" class="row">
	  <li class = "col-md-12">
	   <div class = "jeansImg" >
	 	 <c:forEach begin="1" end="${detail.jcount}" varStatus="st">
	 	  <img src = "${pageContext.request.contextPath }/resources/jeanImgs/${jname }/${jname}${st.index }.jpg">
	 	 </c:forEach>
	   </div>
	  </li>
	</ul>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>