<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Seoul MATJIP</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel = "stylesheet" href = "/static/css/style.css" type = "text/css">

</head>
<body>

	<div id = "warp">
	
		<header></header>
		
		<section class = "content d-flex justify-content-center">
			<div class = "login my-5">
				<form id = "loginForm">
					<span class = "text-center" style = "color:#32CD32;"><h1>Seoul MATJIP</h1></span>
					<input type = "text" class = "form-control mt-3" id = "loginIdInput" placeholder = "아이디">
					<input type = "password" class = "form-control mt-3" id = "passwordInput" placeholder = "비밀번호">
					<button type = "submit" class = "btn btn-block text-white mt-3" style = "background-color:#32CD32;">로그인</button>
				</form>
				
				<hr>
				<div class = "d-flex justify-content-center">
					<a href = "/user/signup_view" class = "btn text-secondary">회원가입</a>
				</div>
			</div>
		</section>
		
		<c:import url = "/WEB-INF/jsp/include/footer.jsp"/>
		
	</div>
	
	<script>
		$(document).ready(function() {
			
			// 로그인
			$("#loginForm").on("submit", function(e) {
				e.preventDefault();
				var loginId = $("#loginIdInput").val();
				var password = $("#passwordInput").val();
				
	 			if(loginId == "") {
					alert("아이디를 입력하세요");
					return;
				} 
				
				if(password == "") {
					alert("비밀번호를 입력하세요");
					return;
				}
				
 				$.ajax ({
					type:"post",
					url:"/user/sign_in",
					data:{"loginId":loginId, "password":password},
					success:function(data) {
						if(data.result == "success") {
							location.href = "/post/postList_view";
						} else {
							alert("로그인 실패");
						}
					},
					error:function() {
						alert("에러 발생");
					}
				}); 
			});
		});
	</script>
				
</body>
</html>