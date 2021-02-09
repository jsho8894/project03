  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
var formObj = $(".replyForm form[role='form']");

$(".repSubmit").click(function(){
 formObj.attr("action", "replyWrite");
 formObj.submit();
});
</script>
<meta charset="UTF-8">
<title>게시물 목록</title>
<%@ include file="../template/header.jspf" %>
</head>
<body>
<%@ include file="../template/menu.jspf" %>

<div class="page-header">
</div>
<section>
	
		<form  role="form" method="post" autocomplete="off">
			<input type="hidden" id="page" name="page" value="${scri.page}" readonly="readonly" />
			<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}" readonly="readonly" />
			<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}" readonly="readonly" />
			<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}" readonly="readonly" />
			
			<div class="form-group">
				<label for="bno" class="col-sm-2 control-label">글 번호</label>
				<div class="col-sm-10">
					<input type="text" id="bno" name="bno" class="form-control" value="${read.bno}" readonly="readonly" />
				</div>
			</div>
		
		</form>
			
			<div class="form-group">
				<label for="writer"class="col-sm-2 control-label">작성자</label>
				<div class="col-sm-10">
					<input type="text" id="writer" name="writer" class="form-control" value="${read.writer}" readonly="readonly" />
				</div>
			</div>
			<div class="form-group"> 
				<label for="title" class="col-sm-2 control-label">글 제목</label>
				<div class="col-sm-10">
					<input type="text" id="title" name="title" class="form-control" value="${read.title}" readonly="readonly"  />
				</div>
			</div>
			<div class="form-group">
				 <label for="content" class="col-sm-2 control-label">내용</label>
  			 	 <div class="col-sm-10">
      			 <textarea rows="10" cols="50" class="form-control" name="content" id="content" readonly="readonly">${read.content }</textarea>
    			 </div>
			</div>
			
			<div class="form-group">
				<button type="button" id="modity_btn" class="btn btn-warning">수정</button>
				<button type="button" id="delete_btn" class="btn btn-danger">삭제</button>
			
				<script>
				
				// 폼을 변수에 저장
				var formObj = $("form[role='form']");
				
				
				// 수정 버튼 클릭
				$("#modity_btn").click(function(){
					
					formObj.attr("action", "/qna/modify");
					formObj.attr("method", "get");		
					formObj.submit();					
					
				});
				
				
				// 삭제 버튼 클릭
				$("#delete_btn").click(function(){
					
					formObj.attr("action", "/qna/delete");
					formObj.attr("method", "get");
					formObj.submit();
					
				});
				</script>
			</div>	
			
			<div id="reply">
				<ol class="replyList">
				<c:forEach items="${repList}" var="repList">
				<li>
					<p>
					<span class="glyphicon glyphicon-user"></span>
						${repList.writer}
						(<fmt:formatDate value="${repList.regDate}" pattern="yyyy-MM-dd" />)
					</p>
					
					<p class="bg-info">${repList.content}</p>
					<c:if test="${customer != null&&customer.user_level==1}">
					<div class="form-group">													
						<button type="button" class="replyUpdate btn btn-warning btn-xs" data-rno="${repList.rno}">수정</button>
						<button type="button" class="replyDelete btn btn-danger btn-xs" data-rno="${repList.rno}">삭제</button>
						
						<script> 
							$(".replyUpdate").click(function(){
								self.location = "/qna/replyUpdate?bno=${read.bno}" + "&page=${scri.page}"
									+ "&perPageNum=${scri.perPageNum}" + "&searchType=${scri.searchType}"
									+ "&keyword=${scri.keyword}" + "&rno=" + $(this).attr("data-rno");								
							});
							
							$(".replyDelete").click(function(){
								self.location = "/qna/replyDelete?bno=${read.bno}" + "&page=${scri.page}"
									+ "&perPageNum=${scri.perPageNum}" + "&searchType=${scri.searchType}"
									+ "&keyword=${scri.keyword}" + "&rno=" + $(this).attr("data-rno");	
							});							
						</script>
					</div>
					</c:if>
				</li>
				</c:forEach>			
				</ol>
			
		<section class="replyForm">
		<form role="form" method="post" autocomplete="off" class="form-horizontal">
		
			<input type="hidden" id="bno" name="bno" value="${read.bno}" readonly="readonly" />
			<input type="hidden" id="page" name="page" value="${scri.page}" readonly="readonly" />
			<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}" readonly="readonly" />
			<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}" readonly="readonly" />
			<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}" readonly="readonly" />
			<c:if test="${customer != null&&customer.user_level==1}">
			<div class="form-group">
				<label for="writer" class="col-sm-2 control-label">작성자</label>
				<div class="col-sm-10">
					<input type="text" id="writer" name="writer" class="form-control" value="${customer.user_id }" readonly="readonly"  />
				</div>
			</div>			
			</c:if>
			<c:if test="${customer != null&&customer.user_level==1}">
			<div class="form-group">
				<label for="content" class="col-sm-2 control-label">댓글 내용</label>
				<div class="col-sm-10">
					<textarea id="content" name="content" class="form-control" ></textarea>
				</div>
			</div>
			</c:if>
			<c:if test="${customer != null&&customer.user_level==1}">
			<div class="form-group">
				 <div class="col-sm-offset-2 col-sm-10"> 
					<button type="button" class="repSubmit btn btn-success">작성</button> 
				</div>				
				<script>
				var formObj = $(".replyForm form[role='form']");
										
				$(".repSubmit").click(function(){
					formObj.attr("action", "replyWrite");
					formObj.submit();
				});				
				</script>				
			</div>
			</c:if>
		</form>		
		</section>
			
		</div>

	</section>

<!-- 댓글 끝 -->


<%@ include file="../template/footer.jspf" %>
</body>
</html>