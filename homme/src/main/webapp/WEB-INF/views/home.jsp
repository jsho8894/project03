<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<%@ include file="template/header.jspf" %>
      <style type="text/css">
      .item > img {
         margin: 0px auto;
      }
      .item > img{
         height: 350px;
         width: 900px;
      }
      .card-img-top{
      	margin-top : 20px;
      	margin-left: 20px;
      	width: 500px;
      	height: 600px;
      }
   </style>
  <title>Shop Homepage - Start Bootstrap Template</title>
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

  <!-- Page Content -->

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
         <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

        <div class="row">

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/shirtimgs/MUSINSASTANDARD.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">&nbsp;&nbsp;&nbsp;MUSINSASTANDARD</a>
                </h4>
                <h5>&nbsp;&nbsp;&nbsp;₩ 24900</h5>
              </div>
              <div class="card-footer">
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/sweaterImgs/MOSCHINO.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">MOSCHINO</a>
                </h4>
                <h5>₩ 69000</h5>
              </div>
              <div class="card-footer">
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/tshirtImgs/RALPH.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">RALPH</a>
                </h4>
                <h5>₩ 139000</h5>
              </div>
              <div class="card-footer">
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/jeanImgs/AfterGlow.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">&nbsp;&nbsp;&nbsp;AfterGlow</a>
                </h4>
                <h5>&nbsp;&nbsp;&nbsp;₩ 99000</h5>
              </div>
              <div class="card-footer">
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/jeanImgs/CrossDamage.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">CrossDamage</a>
                </h4>
                <h5>₩ 99000</h5>
              </div>
              <div class="card-footer">
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath }/resources/jeanImgs/ShadowChaser.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">ShadowChaser</a>
                </h4>
                <h5>₩ 93000</h5>
              </div>
              <div class="card-footer">
              </div>
            </div>
          </div>

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/bootstrap.bundle.min.js"></script>

</body>

</html>