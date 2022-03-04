<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
		<header class = "d-flex justify-content-between">
			<div class = "d-flex align-items-end ml-3">
				<span style = "color:#32CD32;"><h2>Seoul MATJIP</h2></span>
			</div>
			
			<div class = "d-flex align-items-end mr-3">
				<c:choose>
					<c:when test = "${not empty userId}">
						<a href = "/user/signout_view"><span style = "color:#000000;">${userName } 님</span> 로그아웃</a>
					</c:when>
					
					<c:otherwise>
						<a href = "/user/signin_view"> 로그인</a>
					</c:otherwise>
				</c:choose>
			</div>
		</header>
		
		<hr>