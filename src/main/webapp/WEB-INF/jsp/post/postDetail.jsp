<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Seoul MATJIP : ${postDetail.post.title }</title>

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
		
		<section class = "content d-flex justify-content-center">
			<div class = "postDetail">

				<!-- 회원아이디, 포스트 지역, 찜 -->
				<div class = "d-flex justify-content-between mt-1">
					<div class = "d-flex ml-3">
						<div class = "text-secondary mr-3">${postDetail.post.userLoginId }</div>
									
						<div class = "ml-3"><b># ${postDetail.post.areaAreaId }</b></div>
					</div>
					
					<!-- 찜 -->
					<div class = "mr-3">like</div>
			
				</div>
				
				<hr>
					
				<!-- 사진 -->
				<img class = "my-2 w-100 imageClick" src = "${postDetail.post.imagePath} ">
				
				<hr>
					
				<!-- 포스트 제목, 글 -->
				<h5><b>${postDetail.post.title }</b></h5>
						
				<div class = "form-control mt-2" style = "border:none">${postDetail.post.content }</div>
					
				<hr style = "border:solid 1px gray;">
					
				<!-- 포스트 댓글 -->
				<div class = "text-secondary">댓글</div>
					
				<c:forEach var = "comment" items = "${postDetail.comment }">
					<div class = "d-flex justify-content-between mt-2 ml-3">
						<div class = "text-secondary" style = "font-size:small"><b class = "text-dark">${comment.userLoginId }</b> - ${comment.content }</div>
					</div>
				</c:forEach>
					
				<hr>
						
				<div class = "d-flex form-control ">
					<input  style = "border:none;" type = "text" class = "form-control broder-0 bin mr-2" id = "commentInput${postDetail.post.id }" placeholder = "댓글을 입력하세요">
					<button type = "button" class = "btn btn-sm commentBtn text-white" style = "background-color:#32CD32;" data-post-id = "${postDetail.post.id }">등록</button>
				</div>
				
				<hr>
				
				<a href = "/post/postList_view" class = "btn btn-secondary">목록으로</a>
				
			</div>
		</section>
		
		<c:import url = "/WEB-INF/jsp/include/footer.jsp"/>
		
	</div>

	<script>
	$(document).ready(function() {
		
		// 댓글 작성
		$(".commentBtn").on("click", function() {
			
			let postId = $(this).data("post-id");
			let content =  $("#commentInput" + postId).val();
			
			$.ajax({
				type:"post",
				url:"/post/comment/create",
				data:{"postId":postId, "content":content},
				success:function(data) {
					if(data.result == "success") {
						location.reload();
					} else {
						alert("댓글 작성 실패");
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