<%@ page language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
   <title>Home</title>
	<meta charset="utf-8">
<%@ include file="template/header.jspf" %>
      <style type="text/css">
      .item > img {
         margin: 0px auto;
      }
      .item > img{
         height: 650px;
         width: 335px;
      }
   </style>
</head>
<body>
<%@ include file="template/menu.jspf" %>


<!-- content start -->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources/imgs/big01.png" alt="...">
      <div class="carousel-caption">
        <h2>B E S T</h2>
      </div>
    </div>
    <div class="item">
      <img src="resources/imgs/big02.png" alt="...">
      <div class="carousel-caption">
        <h2>S A L E</h2>
      </div>
    </div>
    <div class="item">
      <img src="resources/imgs/big03.png" alt="...">
      <div class="carousel-caption">
       <h2>OUTER</h2>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<%@ include file="template/footer.jspf" %>
</body>
</html>