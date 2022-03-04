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
			<div class = "post my-5">
			
				<article class = "d-flex justify-content-between">
					<div class = "d-flex align-items-center">
						<!-- 검색 기능 -->
						<form id = "searchBtn">
							<div class = "d-flex form-control" style = "border:none;">
								<button type = "submit" class = "btn btn-sm ">검색</button>
								<input type = "text" class = "form-control" placeholder = "제목 검색">
							</div>
						</form>
						
						<!-- 지역별 정렬 -->
						<select class = "form-control text-secondary w-50" name = "area" id = "areaIdInput">
							<option value = "전체" selected = "selected">전체</option>
								
							<c:forEach var = "areaList" items = "${areaList }">
								<option value = "${areaList.id }">${areaList.area }</option>
							</c:forEach>
						</select>
					</div>
					
					<div class = "d-flex">
						<!-- 찜 순서별 정렬 -->
						<div class = "d-flex align-items-end mr-3">
							<label><input type = "radio" name = "bestLike" value = ""> 찜 많은 순</label>
						</div>
						
						<!-- 글쓰기 기능 -->
						<div class = "d-flex align-items-center">
							<button type = "button" class = "btn btn-block text-white" style = "background-color:#32CD32;" id = "createBtn">글쓰기</button>
						</div>
					</div>
				</article>
				
				<hr>
				
				<!-- 포스트 리스트 -->
				<div class = "postList d-flex form-control">
					<div class = "bg-danger w-80">
						<div class = "d-flex">
							<div class = "form-control">
								userId
							</div>
							
							<div>
								areaId
							</div>
						</div>
						
						<div>
							<div>title</div>
							
							<div>content</div>
						</div>
						
						<div>
							like
						</div>
					</div>
					
					<div class = "bg-info">
						<div>
							image
						</div>
						
						<div class = "d-flex justify-content-between">
							<div>수정</div>
							<div>삭제</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<c:import url = "/WEB-INF/jsp/include/footer.jsp"/>
		
	</div>
	
</body>
</html>