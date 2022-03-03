package com.ganghwan.seoulMatjip.post;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/psot")
public class PostController {

	// 포스트 리스트
	@GetMapping("/postList_view")
	public String postListView() {
		return "post/postList";
	}
}
