package com.ganghwan.seoulMatjip.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ganghwan.seoulMatjip.user.area.bo.AreaBO;
import com.ganghwan.seoulMatjip.user.area.model.Area;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private AreaBO areaBO;

	// 로그인
	@GetMapping("/signin_view")
	public String signInView() {
		return "user/signIn";
	}
	
	// 회원가입
	@GetMapping("/signup_view")
	public String signUpView(
			Model model
			) {
		
//		List<PostDetail> postlist = postBO.getPostList(userId);
//		model.addAttribute("postList", postlist);
		
		List<Area> areaList = areaBO.getAreaList();
		model.addAttribute("areaList", areaList);
		
		return "user/signUp";
	}
}
