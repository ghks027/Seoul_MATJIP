<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<c:forEach var = "postList" items = "${postList }">
	<title>${postList.title }</title>
</c:forEach>

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
			<div class = "postDetail bg-info">
			
			<c:forEach var = "postDetail" items = "${postDetail }">
				<!-- 회원아이디, 포스트 지역, 찜 -->
				<div class = "d-flex justify-content-between">
					<div class = "d-flex">
						<div>회원아이디</div>
						
						<div>#지역</div>
					</div>
					
					<div>like</div>
				</div>
				
				<!-- 사진 -->
				<div>사진</div>
				
				<!-- 포스트 제목, 글 -->
				<div>
					<div>제목</div>
					
					<div>내용</div>
				</div>
				
				<hr>
				
				<!-- 포스트 댓글 -->
				<div>
					<div>댓글</div>
					
					<div>회원아이디 - 댓글 내용</div>
					
					<div>댓글 달기 버튼</div>
				</div>
			</c:forEach>
			</div>
		</section>
		
		<c:import url = "/WEB-INF/jsp/include/footer.jsp"/>
		
	</div>

</body>
</html>