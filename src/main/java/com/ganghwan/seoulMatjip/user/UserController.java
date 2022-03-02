package com.ganghwan.seoulMatjip.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	// 로그인
	@GetMapping("/signin_view")
	public String signInView() {
		return "user/signIn";
	}
	
	// 회원가입
	@GetMapping("/signup_view")
	public String signUpView() {
		return "user/signUp";
	}
}
