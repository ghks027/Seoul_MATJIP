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

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

</head>
<body>
	
	<div id = "warp">
	
		<c:import url = "/WEB-INF/jsp/include/header.jsp"/>
		
		<c:import url = "/WEB-INF/jsp/include/nav.jsp"/>
		
		<section class = "content d-flex justify-content-center">
			<div class = "post">
			
				<!-- 포스트 리스트 -->
				<c:forEach var = "postList" items = "${postList }">
					<div class = "postList d-flex form-control justify-content-between mt-3">
						<div class = "postContent my-2">
							<div class = "d-flex align-items-center">
								<div class = "form-control bg-secondary text-white text-center col-sm-4">${postList.post.userLoginId }</div>
								
								<div class = "ml-3 text-dark" style = "border:none;"><b># ${postList.post.areaAreaId }</b></div>
							</div>
							
							<div class = "contentDetail">
								<a href = "/post/postDetail_view?postId=${postList.post.id}" class = "detail">
									<h5 class = "mt-3 text-dark"><b>${postList.post.title }</b></h5>
									
									<small class = "content text-secondary text-smail">${postList.post.content }</small>
								</a>
							</div>
							
							<!-- 찜 -->
							<div class = "mt-3">
								<a href = "#" class = "likeBtn text-dark" data-post-id = "${postList.post.id }">
									<c:choose>
										<c:when test = "${postList.like }">
												<i class="bi bi-heart-fill text-danger"></i>
										</c:when>
									
										<c:otherwise>
												<i class="bi bi-heart"></i>
										</c:otherwise>
									</c:choose>
									
									<b style = "font-size:small">${postList.likeCount } 개</b>
								</a>
							</div>
							
						</div>
						
						<div class = "postImage my-2">
							<!-- 이미지 -->
							<div class="image-box">
								<img class="image-thumbnail" src = "${postList.post.imagePath }">
							</div>

							<!-- 수정, 삭제 -->
							<c:if test = "${postList.post.userId eq userId}">
								<div class = "d-flex justify-content-between mt-2">
									<a href = "/post/postUpdate_view?postId=${postList.post.id}" class = "btn btn-secondary btn-sm">수정</a>
									<button type = "button" class = "btn btn-sm deleteBtn" data-post-id = "${postList.post.id }">삭제</button>
								</div>
							</c:if>
						</div>
						
					</div>
				</c:forEach>
				
			</div>
		</section>
		
		<c:import url = "/WEB-INF/jsp/include/footer.jsp"/>
		
	</div>
	
	<script>
	$(document).ready(function() {
		
		// 찜 하기
		$(".likeBtn").on("click", function(e) {
			
			e.preventDefault();
			
			let postId = $(this).data("post-id");
			
			$.ajax({
				type:"get",
				url:"/post/like",
				data:{"postId":postId},
				success:function(data) {
					location.reload();
				},
				error:function(){
					alert("에러 발생");
				}
			}); 
		});
		
		// 게시글 삭제
		$(".deleteBtn").on("click", function(e) {
			
			e.preventDefault();
			
			let postId = $(this).data("post-id");
			
			$.ajax({
				type:"get",
				url:"/post/delete",
				data:{"postId":postId},
				success:function(data) {
					if(data.result == "success") {
						location.reload();
					} else {
						alert("삭제 불가");
					}
				},
				error:function(){
					alert("에러 발생");
				}
			});
		});
		
		// 지역별 정렬
		$("#areaAreaIdIdInput").on("change", function() {
			
			var areaId = $("#areaAreaIdIdInput option:selected").val();
			
			alert(areaId);
			
		});
		
	});
		
	</script>
</body>
</html>