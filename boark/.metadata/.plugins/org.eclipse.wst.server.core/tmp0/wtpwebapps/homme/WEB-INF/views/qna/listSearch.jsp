  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
<%@ include file="../template/header.jspf" %>
</head>
<body>
<%@ include file="../template/menu.jspf" %>

<div class="page-header">
</div>

<section>
		<h2>글 목록</h2>
		
		<table class="table table-hover">
		<thead>
			<tr><th>글 번호</th><th>글 제목</th><th>작성자</th><th>작성일자</th></tr>
		</thead>	
		<tbody>
	
		<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.bno}</td>
				<td>
					<a href="/qna/read?bno=${list.bno}">${list.title}</a>
				</td>
				<td>
					<fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd" />				
				</td>
				<td>${list.writer}</td>
			</tr>
		</c:forEach>
	
	</tbody>

</table>
		
<div>

	<c:if test="${page.prev}">
		<span>[ <a href="/qna/listSearch?num=${page.startPageNum - 1}${page.searchTypeKeyword}">이전</a> ]</span>
	</c:if>
	
	<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
		<span>
		
			<c:if test="${select != num}">
				<a href="/qna/listSearch?num=${num}${page.searchTypeKeyword}">${num}</a>
			</c:if> 			
			
			<c:if test="${select == num}">
				<b>${num}</b>
			</c:if>
	 			
		</span>
	</c:forEach>
	
	<c:if test="${page.next}">
		<span>[ <a href="/qna/listSearch?num=${page.endPageNum + 1}${page.searchTypeKeyword}">다음</a> ]</span>
	</c:if>
	
	
	<%-- <c:forEach begin="1" end="${pageNum}" var="num">
  		<span>
  			<a href="/board/listPage?num=${num}">${num}</a>
		</span>
	</c:forEach> --%>
	
	
	<div>
		<select name="searchType">
		    <option value="title" <c:if test="${page.searchType eq 'title'}">selected</c:if>>제목</option>
	        <option value="content" <c:if test="${page.searchType eq 'content'}">selected</c:if>>내용</option>
		    <option value="title_content" <c:if test="${page.searchType eq 'title_content'}">selected</c:if>>제목+내용</option>
		    <option value="writer" <c:if test="${page.searchType eq 'writer'}">selected</c:if>>작성자</option>
		</select>
		
		<input type="text" name="keyword" value="${page.keyword}"/>
		
		<button type="button" id="searchBtn">검색</button>
		<c:if test="${customer != null&&customer.user_level==2}">
		<p><a href="/qna/write" class="btn btn-default" role="btn">입 력</a></p>
		</c:if>
	</div>
	
</div>

<script>
	document.getElementById("searchBtn").onclick = function () {
		  
		let searchType = document.getElementsByName("searchType")[0].value;
		let keyword =  document.getElementsByName("keyword")[0].value;
		
		location.href = "/qna/listSearch?num=1" + "&searchType=" + searchType + "&keyword=" + keyword;
	};
</script>
</section>
<%@ include file="../template/footer.jspf" %>
</body>
</html>