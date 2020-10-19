<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="template/header.jspf" %>
<style type="text/css">
	#content{
	}
</style>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/login";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#user_name").val()==""){
					alert("이름을 입력해주세요.");
					$("#user_name").focus();
					return false;
				}
				if($("#user_id").val()==""){
					alert("아이디를 입력해주세요.");
					$("#user_id").focus();
					return false;
				}
				if($("#user_password").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#user_password").focus();
					return false;
				}
				if($("#user_contact").val()==""){
					alert("전화번호를 입력해주세요.");
					$("#user_contact").focus();
					return false;
				}
				if($("#user_addr").val()==""){
					alert("주소를 입력해주세요.");
					$("#user_addr").focus();
					return false;
				}
				if($("#user_email").val()==""){
					alert("이메일을 입력해주세요.");
					$("#user_email").focus();
					return false;
				}
			});
			
				
			
		})
	</script>
<body>
<%@ include file="template/menu.jspf" %>
<section id="container">
			<form action="./registerresult" method="post">
				<div class="form-group has-feedback">
					<label class="control-label" for="user_name">이름</label>
					<input class="form-control" type="text" id="user_name" name="user_name" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="user_id">아이디</label>
					<input class="form-control" type="text" id="user_id" name="user_id" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="user_password">패스워드</label>
					<input class="form-control" type="password" id="user_password" name="user_password" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="user_contact">전화번호</label>
					<input class="form-control" type="text" id="user_contact" name="user_contact" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="user_addr">주소</label>
					<input class="form-control" type="text" id="user_addr" name="user_addr" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="user_email">이메일</label>
					<input class="form-control" type="text" id="user_email" name="user_email" />
				</div>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원가입</button>
					<button class="cencle btn btn-danger" type="button">취소</button>
				</div>
			</form>
		</section>


<%@ include file="template/footer.jspf" %>

</body>
</html>