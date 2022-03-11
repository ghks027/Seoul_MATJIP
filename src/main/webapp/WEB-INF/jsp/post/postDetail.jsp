<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Seoul MATJIP : ${postDetail.title }</title>

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
			<div class = "postDetail">
			
				<!-- 회원아이디, 포스트 지역, 찜 -->
				<div class = "d-flex justify-content-between mt-1">
					<div class = "d-flex ml-3">
						<div class = "mr-3">${postDetail.userLoginId }</div>
									
						<div class = "ml-3"><b># ${postDetail.areaAreaId }</b></div>
					</div>
						
					<div class = "mr-3">like</div>
				</div>
				
				<hr>
					
				<!-- 사진 -->
				<img class = "my-2 w-100 imageClick" src = "${postDetail.imagePath} ">
				
				<hr>
					
				<!-- 포스트 제목, 글 -->
				<h5><b>${postDetail.title }</b></h5>
						
				<div class = "form-control mt-2" style = "border:none">${postDetail.content }</div>
					
				<hr style = "border:solid 1px gray;">
					
				<!-- 포스트 댓글 -->
				<div>
					<div class = "text-secondary">댓글</div>
					
					<div class = "d-flex justify-content-between mt-2 ml-3">
						<div class = "text-secondary" style = "font-size:small"><b class = "text-dark">회원</b> - 댓글 내용</div>
					</div>
					
					<hr>
						
					<div class = "d-flex form-control ">
						<input  style = "border:none;" type = "text" class = "form-control broder-0 bin mr-2" id = "commentInput" placeholder = "댓글을 입력하세요">
						<button type = "button" class = "btn btn-sm commentBtn text-white" style = "background-color:#32CD32;">등록</button>
					</div>
				</div>

			</div>
		</section>
		
		<c:import url = "/WEB-INF/jsp/include/footer.jsp"/>
		
	</div>

</body>
</html>