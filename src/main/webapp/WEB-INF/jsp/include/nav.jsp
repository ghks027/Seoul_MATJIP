<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
		<nav class = "d-flex justify-content-center">
			<div class = "menu d-flex justify-content-between">
				<div class = "d-flex align-items-center">
					<!-- 검색 기능 -->
					<form id = "searchBtn">
						<div class = "d-flex form-control" style = "border:none;">
							<button type = "submit" class = "btn btn-sm ">검색</button>
							<input type = "text" class = "form-control" placeholder = "제목 검색">
						</div>
					</form>
							
					<!-- 지역별 정렬 -->
					<select class = "form-control text-secondary w-50" name = "area" id = "areaAreaIdIdInput">
						<option value = "전체" selected = "selected">전체</option>
									
						<c:forEach var = "areaList" items = "${areaList }">
							<option value = "${areaList.area }">${areaList.area }</option>
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
						<a href = "/post/postCreate_view" class = "btn text-white" style = "background-color:#32CD32;">글쓰기</a>
					</div>
				</div>	
			</div>
		</nav>
		