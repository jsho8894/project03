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
		
		.product_option_S, .product_option_M, .product_option_L {
			margin-top: 10px;
			width : 250px;
			font-size: 12px;
			color : #111111;
		}

		.Ssize, .Msize, .Lsize {
		    float:left;
		    width:10%;
		    text-align:center;
		}

		.Scount, .Mcount, .Lcount{
			text-align : center;
		    float: left;
		    width:10%;
		}
				
		.Splus, .Sminus, .Mplus, .Mminus, .Lplus, .Lminus{
			border : 1px solid black;
			font-size : 15px;
		 	text-align : center;
			margin-left : 5px;
		    float: left;
		    width:10%;
		    cursor: pointer;
		}
		
		.Sprice, .Mprice, .Lprice {
			float: left;
			margin-left: 30px;
		    width:10%;
		}

		.Sclose, .Mclose, .Lclose {
		    float: right;
		    width:5%;
		    cursor: pointer;
		}
		
		.Total_price {
			width : 240px;
			height: 20px;

		}		
	</style>	
	<script type="text/javascript">
		$(function(){
			$('.login').remove();
		});
								
 $(function(){
 	 	var scount = 1;
 	 	var mcount = 1;
 	 	var lcount = 1;
 	 	var price = $(".Productprice").val();
 	 	var total = 0;
 	 	//total = *(parseInt($(".Sprice").text());
 	 	//클릭시 값이 같이 바뀌어야되고 지워지면 값이 빼져야 함
 	 		
		$("#Size").change(function(){	
			
			if($("#Size option:selected").val()=='s'){				
				$(".pantsSize").append("<div class = 'product_option_S'>"+
						"<div class = 'Ssize'>S</div>"+
							"<div class = 'Scount'>"+scount+"</div>"+
							"<div class = 'Splus'>+</div>"+
							"<div class = 'Sminus'>-</div>"+
							"<div class = 'Sprice'>"+${detail.jprice}+"</div>"+
							"<div class = 'Sclose'>x</div>"+
							"<br/>"+
						"</div>");
								
				total = total + parseInt($(".Sprice").text());
			}
			
								
			if($("#Size option:selected").val()=='m'){
				$(".pantsSize").append("<div class = 'product_option_M'>"+
						"<div class = 'Msize'>M</div>"+
							"<div class = 'Mcount'>"+mcount+"</div>"+
							"<div class = 'Mplus'>+</div>"+
							"<div class = 'Mminus'>-</div>"+
							"<div class = 'Mprice'>"+${detail.jprice}+"</div>"+
							"<div class = 'Mclose'>x</div>"+
							"<br/>"+
						"</div>");	
				
				total = total + parseInt($(".Mprice").text());
			}

			if($("#Size option:selected").val()=='l'){
				$(".pantsSize").append("<div class = 'product_option_L'>"+
						"<div class = 'Lsize'>L</div>"+
							"<div class = 'Lcount'>"+lcount+"</div>"+
							"<div class = 'Lplus'>+</div>"+
							"<div class = 'Lminus'>-</div>"+
							"<div class = 'Lprice'>"+${detail.jprice}+"</div>"+
							"<div class = 'Lclose'>x</div>"+
							"<br/>"+
						"</div>");	
				
				total = total + parseInt($(".Lprice").text());
			}	 
			
			
			/* Size S */			
		 	 $('.Sclose').click(function(){
				$('.product_option_S').remove();
				scount = 1;
			 });

		 	 $('.Splus').off().click(function(e){
				scount = scount+1;
				$('.Scount').text(scount);
				$('.Sprice').text(scount*price);
					
				total = total + parseInt($(".Sprice").text());
		 	 });
		 	 	
		 	 $('.Sminus').off().click(function(e){
				scount = scount-1;	
				$('.Scount').text(scount);
				$('.Sprice').text(scount*price);
				
				total = total - parseInt($(".Sprice").text());
		 	 });
			
			/* Size M */
		 	 $('.Mclose').click(function(){
				$('.product_option_M').remove();
				mcount = 1;
		 	 });
	
		 	 $('.Mplus').off().click(function(e){
				mcount = mcount+1;
				$('.Mcount').text(mcount);
				$('.Mprice').text(mcount*price);
				
				total = total + parseInt($(".Mprice").text());
		 	 });
							
		 	 $('.Mminus').off().click(function(e){
				mcount = mcount-1;	
				$('.Mcount').text(mcount);	
				$('.Mprice').text(mcount*price);
				
				total = total - parseInt($(".Mprice").text());
		 	 });
			
			/* Size L */
			 $('.Lclose').click(function(){
				$('.product_option_L').remove();
				lcount = 1;
			 	 });
				
			 	$('.Lplus').off().click(function(){
				lcount = lcount+1;
				$('.Lcount').text(lcount);
				$('.Lprice').text(lcount*price);
				total = total + parseInt($(".Lprice").text());
			 	 });

			 	$('.Lminus').off().click(function(){
				lcount = lcount-1;	
				$('.Lcount').text(lcount);
				$('.Lprice').text(lcount*price);
				
				total = total - parseInt($(".Lprice").text());
			  });
			 	 
				/* Total price*/
					$(function(){
						$('.tprice').text(total);
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
	 <div class = "pantsTitle" style = "text-align: left; font-size: 17px;" >
	 	${detail.jname }
	 </div><br/>
	 <div class = "pantsPrice" style = "text-align: left; font-size: 12px;" >
	 	₩ ${detail.jprice}
	 </div><br/>
	 <div class = "pantsSize">
	 <input type="hidden" class="Jprice" value="${detail.jprice}"/>
		<select id = "Size" class="form-control" >
		  	<option value = "" >SIZE</option>
		  	<option value = "s">S</option>
		  	<option value = "m">M</option>
		  	<option value = "l">L</option>
		</select>
	</div><br/>
	
	<table class = "Total_price">
		<tr>
			<th>총 상품 금액</th>
			<td class = "tprice">0원</td>
		</tr>

	</table>
	<br/>
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
	<button >BUY NOW</button>
</div>
	<ul id = "jeans" class="row">
	  <li class = "col-md-12">
	   <div class = "jeansImg" >
	 	 <c:forEach begin="1" end="${detail.jcount}" varStatus="st">
	 	  <img src = "${pageContext.request.contextPath }/resources/jeanImgs/${jname}/${jname}${st.index}.jpg">
	 	 </c:forEach>
	   </div>
	  </li>
	</ul>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>