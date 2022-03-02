<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Seoul MATJIP 회원가입</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel = "stylesheet" href = "/static/css/style.css" type = "text/css">

</head>
<body>

	<div id = "warp">
		
		<c:import url = "/WEB-INF/jsp/include/header.jsp"/>
		
		<section class = "content d-flex justify-content-center">
			<div class = "login my-5">
				<div class = "d-flex">
					<input type = "text" class = "form-control" placeholder = "Username" id = "loginIdInput">
					<button type = "button" id = "duplicateBtn" class = "btn ml-3 text-white" style = "background-color:#32CD32;">중복확인</button>
				</div>
				
				<div id = "duplicateId" class = "text-danger mt-1 d-none">중복된 아이디 입니다</div>
				<div id = "noneDuplicateId" class = "text-success mt-1 d-none">사용 가능한 아이디 입니다</div>
				
				<input type = "password" class = "form-control mt-3" placeholder = "Password" id = "passwordInput">
				<input type = "password" class = "form-control mt-3" placeholder = "비밀번호 확인" id = "passwordConflimInput">
				<input type = "text" class = "form-control mt-3" placeholder = "이름" id = "nameInput">
				
				<select class = "form-control text-secondary mt-3" id = "areaInput" name = "area">
					<option value = "관심 지역" selected = "selected">관심 지역</option>
					<option value = "홍대">홍대</option>
					<option value = "강남">강남</option>
				</select>
				
				<button type = "button" id = "joinBtn" class = "btn btn-block mt-3 text-white" style = "background-color:#32CD32;">가입하기</button>
			</div>
		</section>
		
		<c:import url = "/WEB-INF/jsp/include/footer.jsp"/>
		
	</div>
	
</body>
</html>