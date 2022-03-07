package com.ganghwan.seoulMatjip.post;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.ganghwan.seoulMatjip.post.bo.PostBO;

@RestController
@RequestMapping("/post")
public class PostRestController {

	@Autowired
	private PostBO postBO;
	
	// 게시글 작성
	@PostMapping("/create")
	public Map<String, String> create(
			@RequestParam("title") String title,
			@RequestParam("content") String content,
			@RequestParam(value = "file", required = false) MultipartFile file,
			@RequestParam("area") int area,
			@RequestParam(value = "profile", required = false) MultipartFile profile,
			HttpServletRequest request
			) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		String userLoginId = (String)session.getAttribute("userLoginId");

		Map<String, String> result = new HashMap<>();
		int count = postBO.addPost(userId, userLoginId, title, content, file, area, profile);
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}

		return result;
	}
}
