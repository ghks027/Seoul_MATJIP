<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Seoul MATJIP : ${postUpdate.post.title }</title>

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
			<div class = "updatePost my-5">
				<input type = "text" class = "form-control mt-3" id = "titleInput" value = "${postUpdate.post.title }">

				<hr>
				
				<div class = "d-flex justify-content-end">					
					<select class = "form-control text-secondary w-50" name = "area" id = "areaAreaIdInput">
						<option value = "지역 선택">지역 선택</option>
						
						<c:forEach var = "areaList" items = "${areaList }">

							<c:choose>
								<c:when test = "${postUpdate.post.areaAreaId eq areaList.area}">
									<option value = "${areaList.area }" selected = "selected">${areaList.area }</option>
								</c:when>
									
								<c:otherwise>
									<option value = "${areaList.area }">${areaList.area }</option>
								</c:otherwise>
							</c:choose>
							
						</c:forEach>
					</select>
				</div>
				
				<textarea class = "form-control mt-3" rows="5" id = "contentInput">${postUpdate.post.content }</textarea>
				
				<span class = "img-icon"><i class="bi bi-image" id = "imageBtn" style = "color:#32CD32;"></i></span>
				<input type = "file" class = "d-none mt-3" id = "fileInput">
				
				<div class = "d-flex justify-content-between mt-3">
					<a href = "/post/postList_view" class = "btn btn-secondary">수정 취소</a>
					<button type = "button" class = "btn text-white" id = "updateBtn" style = "background-color:#32CD32;">수정 완료</button>
				</div>
			</div>
		</section>
		
		<c:import url = "/WEB-INF/jsp/include/footer.jsp"/>
		
	</div>
	
</body>

<script>
	$(document).ready(function() {
		
		$("#imageBtn").on("click", function() {
			$("#fileInput").click();
		});

		// 게시글 수정
		$("#updateBtn").on("click", function() {
			
		 	alert("수정 불가");
			
 			/* let title = $("#titleInput").val();
			let content = $("#contentInput").val().trim();
			let areaAreaId = $("#areaAreaIdInput").val();
			let file = $("#fileInput").val();
			
			// 파일 유효성 검사
			if($("#fileInput")[0].files.length == 0) {
				alert("파일을 선택하세요");
				return;
			}
			
			var formData = new FormData();
			formData.append("title", title);
			formData.append("content", content);
			formData.append("areaAreaId", areaAreaId);
			formData.append("file", $("#fileInput")[0].files[0]);
			
			$.ajax({
				type:"post",
				url:"/post/update",
				data:formData,
				enctype:"multipart/form-data",
				processData:false,
				contentType:false,
				success:function(data) {
					if(data.result == "success") {
						location.href = "/post/postList_view";
					} else {
						alert("수정 실패");
					}
				},
				error:function() {
					alert("에러 발생");
				}
			});  */
		});
		
	});
</script>
</html>