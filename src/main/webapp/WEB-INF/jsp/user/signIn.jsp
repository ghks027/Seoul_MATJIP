<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Seoul MATJIP 로그인</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel = "stylesheet" href = "/static/css/style.css" type = "text/css">

</head>
<body>

	<div id = "warp">
		
		<header class = "bg-warning">
			<span class = "text-success"><h2>Seoul MATJIP</h2></span>
		
		</header>
		
		<section class = "content">
			<form id = "loginForm">
				<div>
					<input type = "text" class = "form-control" id = "loginIdInput" placeholder = "아이디">
					<input type = "text" class = "form-control" id = "password" placeholder = "비밀번호">
					<button type = "submit" class = "btn btn-block text-white" style = "background-color:#32CD32;">로그인</button>
				</div>
			</form>
		</section>
		
		<footer class = "bg-info">
		
		</footer>
		
	</div>
	
</body>
</html>