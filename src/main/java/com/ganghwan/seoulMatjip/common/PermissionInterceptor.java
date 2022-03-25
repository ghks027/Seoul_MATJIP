package com.ganghwan.seoulMatjip.common;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component
public class PermissionInterceptor implements HandlerInterceptor {

	// 요청이 들어 올 때
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
		
		// 로그인 정보
		HttpSession session = request.getSession();
		
		// 현제 요청한 url 에 path (url) ex) /user/sigin_view
		String uri = request.getRequestURI();
		
		// 로그인 상태
		if(session.getAttribute("userId") != null) {
			// 로그인 화면, 회원가입 화면 접근 못하게
			if(uri.startsWith("/user/")) {
				response.sendRedirect("/post/postList_view");
				return false;
			}
		} else { // 비로그인 상태
			// 포스트 화면
			// 로그인 페이지로 이동
			
			if(uri.startsWith("/post/")) {
				// 로그인 페이지로 이동
				response.sendRedirect("/user/signin_view");
				return false;
			}
		}
		return true;
	}
	
	// response 처리할 때
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler, ModelAndView modelAndView) {
		
	}
	
	// 모든 것이 완료 되었을 때
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response,
			Object handler, Exception ex) {
		
	}
}