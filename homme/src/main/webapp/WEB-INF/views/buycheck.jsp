<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="template/header.jspf" %>
<style type="text/css">
		img{
			margin: 0px 130px;
			height: 100px;
			width: 150px;
		}
	</style>
</head>
<body>
<%@ include file="template/menu.jspf" %>

		<!-- start content -->
		 <div class="page-header">
	<h1>주문/결제</h1>
</div>
<div>
	<h3>수령자 정보</h3>
</div>
<form class="form-horizontal" method="post" action="./">
  <input type="hidden" name="_method" value="get">
  <div class="form-group">
       <label for="order_name" class="col-sm-2 control-label">수령인</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="order_name" id="order_name" placeholder="order_name"/>
    </div>
  </div>
  <div class="form-group">
       <label for="order_contact" class="col-sm-2 control-label">전화번호</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="order_contact" id="order_contact" placeholder="order_contact"/>
    </div>
  </div>
  <div class="form-group">
        <label for="order_addr" class="col-sm-2 control-label">주소</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="order_addr" id="order_addr" placeholder="order_addr"/>
    </div>
  </div>
  <div>
  <h3>상품정보</h3>
  </div>
  <div class="form-group">
  		<div class="col-sm-10">
        <img alt="" src="resources/imgs/big01.png"/>
        </div>
  </div>
  <div class="form-group">
        <label for="product_name" class="col-sm-2 control-label">상품명</label>
    <div class="col-sm-10">
   		${bean.product_name}
    </div>
  </div>
  <div class="form-group">
        <label for="product_type" class="col-sm-2 control-label">옵션</label>
    <div class="col-sm-10">
     	${bean.product_type}
    </div>
  </div>
  <div>
  <h3>결제</h3>
  </div>
  <div class="form-group">
        <label for="pay_info" class="col-sm-2 control-label">결제수단</label>
    <div class="col-sm-10">
      <label><input type="radio" name="pay_info" checked/>신용카드&nbsp;&nbsp;&nbsp;</label>
	<label><input type="radio" name="pay_info"/>무통장 입금&nbsp;&nbsp;&nbsp;</label>
	<label><input type="radio" name="pay_info"/>휴대폰 결제</label>
  </div>
 </div>
 <div class="form-group">
        <label for="product_price" class="col-sm-2 control-label">금액</label>
    <div class="col-sm-10">
     	${bean.product_price}
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <a href="#" class="btn btn-default" role="btn">결 제</a>
      <button type="reset" class="btn btn-default">취 소</button>
    </div>
  </div>
</form>
<%@ include file="template/footer.jspf" %>
</body>
</html>