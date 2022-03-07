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
	
		<c:import url = "/WEB-INF/jsp/include/header.jsp"/>
		
		<section class = "content d-flex justify-content-center">
			<div class = "createPost my-5">
				<input type = "text" class = "form-control mt-3" id = "titleInput" placeholder = "제목을 입력하세요">

				<hr>
				
				<div class = "d-flex justify-content-end">					
					<select class = "form-control text-secondary w-50" name = "area" id = "areaIdInput">
						<option value = "지역 선택" selected = "selected">지역 선택</option>
							
						<c:forEach var = "areaList" items = "${areaList }">
							<option value = "${areaList.id }">${areaList.area }</option>
						</c:forEach>
					</select>
				</div>
				
				<textarea class = "form-control mt-3" rows="5" id = "contentInput" placeholder = "내용을 입력하세요"></textarea>
				<input type = "file" class = "mt-3" id = "fileInput">
				
				<div class = "d-flex justify-content-between mt-3">
					<a href = "/post/postList_view" class = "btn btn-secondary">작성 취소</a>
					<button type = "button" class = "btn text-white" id = "saveBtn" style = "background-color:#32CD32;">저장</button>
				</div>
			</div>
		</section>
		
		<c:import url = "/WEB-INF/jsp/include/footer.jsp"/>
		
	</div>
	
</body>
</html>